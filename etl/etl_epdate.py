import pandas as pd
import sqlalchemy
from etl_db import DATABASE_URL
from datetime import datetime

# load data from txt file
with open('../episode_dates.txt', 'r') as file:
    lines = file.readlines()

# transform data
data = {'TITLE': [], 'ORIGINAL_BROADCAST_DATE': []}

for line in lines:
    # split the line into title and date parts
    parts = line.strip().split('(')
    
    # extract title and date
    title = parts[0].strip(' "')
    date_str = parts[1].strip(')')

    # convert date string to datetime object
    date_obj = datetime.strptime(date_str, "%B %d, %Y")

    # add data to the dictionary
    data['TITLE'].append(title)
    data['ORIGINAL_BROADCAST_DATE'].append(date_obj)

# create DataFrame
df_episode_dates = pd.DataFrame(data)

# load data into the database
engine = sqlalchemy.create_engine(DATABASE_URL)
df_episode_dates.to_sql('EpisodeDates', con=engine, if_exists='replace', index=False)
