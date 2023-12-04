-- next up: creating tables
-- first color palette table
CREATE TABLE ColorPalette (
    painting_index INT PRIMARY KEY,
    img_src VARCHAR(255),
    painting_title VARCHAR(255),
    season INT,
    episode INT,
    num_colors INT,
    youtube_src VARCHAR(255),
    colors TEXT,
    color_hex TEXT
);

-- second subject matter table
CREATE TABLE SubjectMatter (
    EPISODE VARCHAR(50) PRIMARY KEY,
    TITLE VARCHAR(255)
    -- i think i need to add more columns for sure
);

-- third episode dates table
CREATE TABLE EpisodeDates (
    EPISODE VARCHAR(50) PRIMARY KEY,
    DATE VARCHAR(50)
    -- i need to add more columns to this one
);
