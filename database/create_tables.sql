-- next up: creating tables
-- changing things up by adding more tables
-- moving around existing tables as well
-- episodes
CREATE TABLE IF NOT EXISTS EpisodeDates (
    EPISODE_ID INT PRIMARY KEY,
    TITLE VARCHAR(255),
    ORIGINAL_BROADCAST_DATE DATE
    -- i think i may need to add more columns to this one
);

-- subject matters
CREATE TABLE IF NOT EXISTS SubjectMatter (
    SUBJECT_ID INT PRIMARY KEY,
    NAME VARCHAR(255) UNIQUE NOT NULL
);

-- colors
CREATE TABLE IF NOT EXISTS ColorPallete (
    COLOR_ID INT PRIMARY KEY,
    NAME VARCHAR(255) UNIQUE NOT NULL
    -- not sure if i need to add more here yet
);

-- new table for episode and subject matter relationship
CREATE TABLE IF NOT EXISTS EpisodeSubjectMatter (
    EPISODE_ID INT,
    SUBJECT_ID INT,
    PRIMARY KEY (EPISODE_ID, SUBJECT_ID),
    FOREIGN KEY (EPISODE_ID) REFERENCES EpisodeDates(EPISODE_ID),
    FOREIGN KEY (SUBJECT_ID) REFERENCES SubjectMatter(SUBJECT_ID)
);

-- paintings
CREATE TABLE IF NOT EXISTS Painting (
    PAINTING_ID INT PRIMARY KEY,
    EPISODE_ID INT,
    img_src VARCHAR(255),
    painting_title VARCHAR(255),
    season INT,
    num_colors INT,
    youtube_src VARCHAR(255),
    -- might need to add more here idk yet
    FOREIGN KEY (EPISODE_ID) REFERENCES EpisodeDates(EPISODE_ID)
);

-- new table for painting and color relationship
CREATE TABLE IF NOT EXISTS PaintingColor (
    PAINTING_ID INT,
    COLOR_ID INT,
    PRIMARY KEY (PAINTING_ID, COLOR_ID),
    FOREIGN KEY (PAINTING_ID) REFERENCES Painting(PAINTING_ID),
    FOREIGN KEY (COLOR_ID) REFERENCES ColorPallete(COLOR_ID)
);
