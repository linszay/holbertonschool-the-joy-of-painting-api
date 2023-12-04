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

