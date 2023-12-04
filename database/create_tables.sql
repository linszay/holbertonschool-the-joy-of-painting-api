-- next up: creating tables
-- changing things up by adding more tables
-- moving around existing tables as well
-- episodes
CREATE TABLE EpisodeDates (
    EPISODE_ID INT PRIMARY KEY,
    TITLE VARCHAR(255),
    ORIGINAL_BROADCAST_DATE DATE
    -- i think i may need to add more columns to this one
);

-- subject matters
CREATE TABLE SubjectMatter (
    SUBJECT_ID INT PRIMARY KEY,
    NAME VARCHAR(255) UNIQUE NOT NULL
);

-- new table for episode and subject matter relationship
CREATE TABLE EpisodeSubjectMatter (
    EPISODE_ID INT,
    SUBJECT_ID INT,
    PRIMARY KEY (EPISODE_ID, SUBJECT_ID),
    FOREIGN KEY (EPISODE_ID) REFERENCES Episode(EPISODE_ID),
    FOREIGN KEY (SUBJECT_ID) REFERENCES SubjectMatter(SUBJECT_ID)
);

-- colors
CREATE TABLE ColorPallete (
    COLOR_ID INT PRIMARY KEY,
    NAME VARCHAR(255) UNIQUE NOT NULL
    -- not sure if i need to add more here yet
);

-- new table for painting and color relationship
CREATE TABLE PaintingColor (
    PAINTING_ID INT,
    COLOR_ID INT,
    PRIMARY KEY (PAINTING_ID, COLOR_ID),
    FOREIGN KEY (PAINTING_ID) REFERENCES Painting(PAINTING_ID),
    FOREIGN KEY (COLOR_ID) REFERENCES Color(COLOR_ID)
);

-- paintings
CREATE TABLE Painting (
    PAINTING_ID INT PRIMARY KEY,
    EPISODE_ID INT,
    img_src VARCHAR(255),
    painting_title VARCHAR(255),
    season INT,
    num_colors INT,
    youtube_src VARCHAR(255),
    -- might need to add more here idk yet
    FOREIGN KEY (EPISODE_ID) REFERENCES Episode(EPISODE_ID)
);
