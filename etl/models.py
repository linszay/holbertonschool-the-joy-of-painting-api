# models.py

from sqlalchemy import Column, Integer, String, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

Base = declarative_base()

class EpisodeSubjectMatter(Base):
    __tablename__ = 'EpisodeSubjectMatter'

    episode_number = Column(Integer, primary_key=True)
    title = Column(String)
    month = Column(String)
    subject = Column(String)
    color = Column(String)

# define your database connection 
DATABASE_URL = "mysql://dummy_user:password@localhost/joy_of_painting"
engine = create_engine(DATABASE_URL)
Base.metadata.bind = engine

DBSession = sessionmaker(bind=engine)
session = DBSession()
