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
    -- ummmm this is a disaster and i will be changing it soon
    APPLE_FRAME INT,
    AURORA_BOREALIS INT,
    BARN INT,
    BEACH INT,
    BOAT INT,
    BRIDGE INT,
    BUILDING INT,
    BUSHES INT,
    CABIN INT,
    CACTUS INT,
    CIRCLE_FRAME INT,
    CIRRUS INT,
    CLIFF INT,
    CLOUDS INT,
    CONIFER INT,
    CUMULUS INT,
    DECIDUOUS INT,
    DIANE_ANDRE INT,
    DOCK INT,
    DOUBLE_OVAL_FRAME INT,
    FARM INT,
    FENCE INT,
    FIRE INT,
    FLORIDA_FRAME INT,
    FLOWERS INT,
    FOG INT,
    FRAMED INT,
    GRASS INT,
    GUEST INT,
    HALF_CIRCLE_FRAME INT,
    HALF_OVAL_FRAME INT,
    HILLS INT,
    LAKE INT,
    LAKES INT,
    LIGHTHOUSE INT,
    MILL INT,
    MOON INT,
    MOUNTAIN INT,
    MOUNTAINS INT,
    NIGHT INT,
    OCEAN INT,
    OVAL_FRAME INT,
    PALM_TREES INT,
    PATH INT,
    PERSON INT,
    PORTRAIT INT,
    RECTANGLE_3D_FRAME INT,
    RECTANGULAR_FRAME INT,
    RIVER INT,
    ROCKS INT,
    SEASHELL_FRAME INT,
    SNOW INT,
    SNOWY_MOUNTAIN INT,
    SPLIT_FRAME INT,
    STEVE_ROSS INT,
    STRUCTURE INT,
    SUN INT,
    TOMB_FRAME INT,
    TREE INT,
    TREES INT,
    TRIPLE_FRAME INT,
    WATERFALL INT,
    WAVES INT,
    WINDMILL INT,
    WINDOW_FRAME INT,
    WINTER INT,
    WOOD_FRAMED INT
);

-- third episode dates table
CREATE TABLE EpisodeDates (
    EPISODE VARCHAR(50) PRIMARY KEY,
    DATE VARCHAR(50)
    -- i think i may need to add more columns to this one
);
