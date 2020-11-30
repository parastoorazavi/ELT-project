# ETL Project

ETL stands for “extract, transform, and load” — the processes a data pipeline uses to reproduce data from a source system into a target system such as a cloud data warehouse.
Once we have identified our datasets, perform ETL on the data. Our plan and document followed:
- The sources of data that we will extract from.
- The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
- The type of final production database to load the data into (relational or non-relational).
- The final tables or collections that will be used in the production database.


## 📝 Table of Contents

- [Extraction](#extraction)
- [Transformation](#transformation)
- [Loading](#loading)

## 🧐 Extraction <a name = "extraction"></a>
This first step involves copying data from the source system.
Our team used "https://rawg.io/" website to collect data. For start, we got an API key and used json data format to extracted 3 DataFrame(games, publishers and developers).


## 🤯 Transformation <a name = "transformation"></a>

Once the data is in the target system, organizations can run whatever transformations they need. Often organizations will transform raw data in different ways for use with different tools or business processes. On the other words, data cleaning.
In this step, after choosing specific columns and rename some of them, we clean our data by dropping the rows with 'None' values.


## 🥳 Loading <a name = "loading"></a>

During the loading step, the pipeline replicates data from the source into the target system, which might be a data warehouse or data lake.
