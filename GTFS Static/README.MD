## GTFS Static

To import GTFS static data in MobilityDB, we only use SQL statements. This part is in three parts :

* Create the necessary tables to host the data by running <code>create_tables.sql</code>
* Import the data into PostgreSQL/PostGIS with <code>import_sql.sql</code>; Uncomment and replace the call to the function with the path to your GTFS folder.
* Finally, we transform the data into MobilityDB by running <code>transform_mdb.sql</code>.


Here is a visualisation of all the public transport vehicles in Brussels on 21st July 2023 in the morning. The data are imported from GTFS Static feeds.
![](./img/brussels_static.gif)