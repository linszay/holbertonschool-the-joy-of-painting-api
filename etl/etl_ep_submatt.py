import pandas as pd
import sqlalchemy
from etl_db import DATABASE_URL

# load data for EpisodeSubjectMatter
df_episode_subject_matter = pd.read_csv('../elements_by_episode.csv')

# load data into the database
engine = sqlalchemy.create_engine(DATABASE_URL)
df_episode_subject_matter.to_sql('EpisodeSubjectMatter', con=engine, if_exists='replace', index=False)
