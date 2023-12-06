import pandas as pd
import sqlalchemy
from etl_db import DATABASE_URL

# load data from CSV
df_subject_matter = pd.read_csv('../elements_by_episode.csv')

# transform data
df_subject_matter_long = pd.melt(df_subject_matter, id_vars=['EPISODE', 'TITLE'], var_name='SUBJECT', value_name='PRESENT')
df_subject_matter_transformed = df_subject_matter_long[df_subject_matter_long['PRESENT'] == 1][['SUBJECT']]

# load data into the database
engine = sqlalchemy.create_engine(DATABASE_URL)
df_subject_matter_transformed.to_sql('SubjectMatter', con=engine, if_exists='replace', index=False)
