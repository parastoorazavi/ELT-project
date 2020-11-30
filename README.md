<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">ETL: Video Game Analysis Project</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center">  A report that breaks down the analysis of largest collection of video games library.
    <br> 
</p>

## 📝 Table of Contents

- [Team](#Team)
- [About](#about)
- [Getting Started](#getting_started)
- [Observable Trends](#trends)
- [Acknowledgments](#acknowledgement)

## 🧐 Team <a name = "Team"></a>
•	Ezra Tassone
•	Parastoo Razavi
•	Bimal Prabha


## 🧐 About <a name = "about"></a>
**Description:**
ETL stands for “extract, transform, and load” — the processes a data pipeline uses to reproduce data from a source system into a target system such as a cloud data warehouse.
Once we have identified our datasets, perform ETL on the data. Our plan and document followed:
- The sources of data that we will extract from.
- The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
- The type of final production database to load the data into (relational or non-relational).
- The final tables or collections that will be used in the production database.


## 🏁 Getting Started <a name = "getting_started"></a>

**Extraction** <br>
This first step involves copying data from the source system.
Our team used "https://rawg.io/" website to collect data. For start, we got an API key and used json data format to extracted 3 DataFrame(games, store and platform).
This allowed us to analyse games rating, genre, store location and playable platform of the video games.
We used try and excepts method to segrate json non-available data.

**Transformation** <br>
Once the data is in the target system, organizations can run whatever transformations they need. Often organizations will transform raw data in different ways for use with different tools or business processes. On the other words, data cleaning.
We clean our data by removing the 'None' values specifically from games_id,platform_id,store_id since these represetn primary and foreign keys respectively.
We use aggrate techniques to sort the most number of games in a specific genre.

**Loading** <br>
During the loading step, the pipeline replicates data from the source into the target system, which might be a storage system - Postgress SQL.
We initially built the schema of the database using c . We created three databses to store games, store and platform information. We use platform_id and store_id as the linking keys between the data tables.
After setting the datatypes we loaded data from the pandas dataframe into sql using SQL ALchemy.


## ✍️ Observable Trends <a name = "trends"></a>
- PC games has majority in the video games collection
- Most sought after genre is "Casual" followed by "Indie"
- True Rating of the game depends on the Rating_Count
- Other PC Playstation Exclusive games has taken the leads in the ratings

### Conclusion 
This analysis illustrated  ETL procedure where the json data is retrived from the https://api.rawg.io/docs/. We used pandas organise the json data into dataframe. We used inline graphs to analyse the data. And postgress SQL to load data into databse for further analysis. RAWG databse has more 350,000 records we had to limit data retrieved and also considering ELT approach in the future.



## 🎉 Acknowledgements <a name = "acknowledgement"></a>
- UWA Data Science
- Data source: https://api.rawg.io/docs/
- https://app.quickdatabasediagrams.com/



