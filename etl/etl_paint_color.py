import pandas as pd
import sqlalchemy
from etl_db import DATABASE_URL

# load data for PaintingColor
df_painting_color = pd.read_csv('../bob_ross_paintings.csv')

# load data into the database
engine = sqlalchemy.create_engine(DATABASE_URL)
df_painting_color.to_sql('PaintingColor', con=engine, if_exists='replace', index=False)
