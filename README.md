# Netflix Movies & TV Shows Analysis

An end-to-end data analysis project on the Netflix catalog. It studies content distribution, release trends, ratings, genres, countries and content growth over time, to support better content acquisition and viewer engagement.

## Tools Used
- **Python** (Pandas, NumPy, Matplotlib, Seaborn) for cleaning, EDA and charts
- **MySQL** for SQL analysis
- **Power BI** for the interactive dashboard

## Dataset
Netflix Movies and TV Shows dataset from Kaggle (8,807 titles, 12 columns). After cleaning, **8,794 titles** remain.

## Project Files

| File | Description |
|---|---|
| `Netflix_Analysis.ipynb` | Python notebook: data cleaning, EDA, 10 charts, automatic report generation, MySQL connection |
| `Netflix Analysis.sql` | 10 SQL queries (counts, rankings, averages) |
| `Netflix Analysis.pbix` | Power BI dashboard (6 pages and KPI cards) |
| `netflix_clean.csv` | Cleaned dataset |
| `Netflix_Report.pdf` | Auto-generated PDF report with executive summary, insights and charts |
| `Business_Insights_Report.txt` | Auto-generated business insights report |

## What I Did

### 1. Data Cleaning (Python)
- Fixed 3 rows where the movie duration was stored in the `rating` column
- Filled missing `director`, `cast` and `country` values with "Unknown"
- Filled missing `rating` values with the most frequent value
- Converted `date_added` to a date and dropped rows with no date
- Removed duplicate records
- Created `year_added` and `duration_num` columns

### 2. SQL Analysis (MySQL)
Queries for: total movies and TV shows, content by country, yearly releases, common genres, ratings, longest movies, content by director, country ranking, oldest content and average movie duration.

### 3. Exploratory Data Analysis (Python)
Release year trends, genre distribution, ratings, duration, country-wise content and director contributions. Country, genre and director columns hold several values per title, so they were split into one row per value before counting.

### 4. Data Visualization
Release year line chart, genre count plot, country bar chart, movie vs TV show pie chart, ratings distribution, duration histogram, top directors chart, box plot, correlation heatmap and pair plot.

### 5. Automatic Report Generation
The notebook generates the clean dataset, a PDF report with charts, a business insights report and an executive summary.

### 6. Power BI Dashboard
Six pages: Netflix Overview, Genre Analysis, Country Analysis, Release Trend, Ratings and Content Distribution. KPI cards: Total Movies, Total TV Shows, Total Countries, Average Movie Duration, Top Genre and Most Active Country.

## Key Insights
- About **70%** of the catalog is movies (6,129) and **30%** is TV shows (2,665).
- Releases peaked in **2018**, and Netflix added the most titles in **2019**.
- TV show releases kept growing while movie releases fell after 2018.
- **International Movies**, **Dramas** and **Comedies** are the biggest genres (42 genres in total).
- The **United States** leads with about 3,700 titles, followed by India and the United Kingdom. The top 3 countries cover about 69% of titles with a known country (122 countries in total).
- About **46%** of titles are adult rated (TV-MA, R, NC-17), so family and kids content is the thinnest segment.
- The average movie runs about **100 minutes**, and 67% of TV shows have only one season.
- No single director dominates: the top director has only 22 titles.

## Recommendations
- Keep investing in TV series and recent releases.
- Add more family and kids content.
- Grow content from smaller regions to reduce dependence on a few countries.

## How to Run
1. Download `netflix_titles.csv` from Kaggle and place it in the same folder as the notebook.
2. Open `Netflix_Analysis.ipynb` and run all cells.
3. For the SQL part, import the cleaned data into a MySQL database named `netflix_db` and run `Netflix Analysis.sql`.
4. Open `Netflix Analysis.pbix` in Power BI Desktop.

## Author
Gautam Dhanait
