# holbertonschool-the-joy-of-painting-api
# Project Context

In this project, we will delve into the realm of ETL (Extract, Transform, Load), a process crucial for aggregating data from diverse sources, modifying it, and subsequently storing it in a centralized database. This practice is prevalent when collecting data from various systems for utilization in another system. Data sources may vary, ranging from CSV, JSON, XML, API requests with custom formats, to direct access to databases with distinct yet related data that needs merging into another database for insightful analysis.

## Presented Problem

The local public broadcasting station faces a surge in requests for information on "The Joy of Painting." Viewers seek a website enabling them to filter the 403 episodes based on specific criteria:

1. **Month of Original Broadcast:**
   - Useful for viewers interested in paintings done during a particular month of the year.

2. **Subject Matter:**
   - Useful for viewers looking for episodes featuring specific items being painted.

3. **Color Palette:**
   - Useful for viewers interested in episodes showcasing specific colors.

The broadcasting station has gathered data, but it's scattered across multiple files and formats, rendering it unusable in its current state. Another team has been enlisted to develop a front-end for viewers to filter episodes, and your role is to design and build a database that organizes this data coherently. Additionally, you will create an API to facilitate access to this data.
