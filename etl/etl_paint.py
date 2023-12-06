import pandas as pd
import sqlalchemy
from etl_db import DATABASE_URL

# load data from CSV
df_paintings = pd.read_csv('../bob_ross_paintings.csv')

# transform data
# handle Date Format
df_paintings['ORIGINAL_BROADCAST_DATE'] = pd.to_datetime(df_paintings['ORIGINAL_BROADCAST_DATE'], errors='coerce')

# handle Colors
df_paintings['colors'] = df_paintings['colors'].apply(eval)

# handle Categorical Data
df_paintings['season'] = df_paintings['season'].astype('category')

# load data into the database
engine = sqlalchemy.create_engine(DATABASE_URL)
df_paintings.to_sql('Painting', con=engine, if_exists='replace', index=False)
