# app.py

from flask import Flask, request, jsonify
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from models import Base, EpisodeSubjectMatter

app = Flask(__name__)

# connect to the database
DATABASE_URL = "sqlite:///joy_of_painting.db"  # Update with your actual database URL
engine = create_engine(DATABASE_URL)
Base.metadata.bind = engine

# create a session
DBSession = sessionmaker(bind=engine)
session = DBSession()

@app.route('/episodes', methods=['GET'])
def get_episodes():
    # retrieve filters from the query parameters
    month = request.args.get('month')
    subject = request.args.get('subject')
    color = request.args.get('color')
    match_all = request.args.get('match_all', default=False, type=bool)

    # build the query based on filters
    query = session.query(EpisodeSubjectMatter)

    if month:
        query = query.filter(EpisodeSubjectMatter.month == month)

    if subject:
        query = query.filter(EpisodeSubjectMatter.subject == subject)

    if color:
        query = query.filter(EpisodeSubjectMatter.color == color)

    # execute the query
    episodes = query.all()

    # serialize the results to JSON
    result = [{'episode_number': episode.episode_number, 'title': episode.title} for episode in episodes]

    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
