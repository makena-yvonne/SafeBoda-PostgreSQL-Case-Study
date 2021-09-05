# SafeBoda-PostgreSQL-Case-Study

In this case study we would like to test your skills writing queries in postgreSQL. You have been
provided with two datasets (described below). Please upload these datasets following the
instructions below and write a query (or queries) that create the statistics specified below.
Please return both the query (queries) and the statistics in a .txt or .sql document.
Data description:
● Rides: data includes one row per ride request through the safeboda platform. You have
the data for the rides in Nairobi and Mombasa between October 10th and October 12th
2019. Notes:
○ All timestamps in this dataset are in UCT. Please convert to EAT before
conducting the analysis.
○ Completed trips are identified by having a non-NULL timestamp for the variable
“droppedoff_at”. Trips with a NULL value for “droppedoff_at” were not completed.
○ City_id takes value 2 for Nairobi and 3 for Mombasa.
○ Passenger_id is a unique identifier for safeboda passengers.
● Payment type: includes data on how completed rides were paid for. This data is at the
payment level. Since passengers can pay for a ride partly with cash and partly cashless
there can be multiple payments per ride. Notes:
○ The identifier ride_id in payment type corresponds with the identifier id in the
rides table.
○ Cashless payments can be identified with the payment_type variable equal to
‘credit’

Statistics to Generate:
● How many completed rides were there in Nairobi there on October 11th in 2019?
● How many unique passengers completed rides in Nairobi on October 11th 2019?
● How many completed rides were there in Nairobi on October 11th where at least some
part of the trip was paid using SafeBoda cashless credit?
● How many unique passengers paid some of their ride using cashless on October 11th
2019 in Nairobi?
Instructions for Uploading the Data:
● Go To www.db-fiddle.com
● Select PostgresSQL version 10.0 in the top left dropdown.

● Copy and paste all the code from sql_test.sql file into the left side of the db_fiddle editor.
(Under where it says Schema SQL)
● Click on Run
● Once it completed enter Save/Update
● On the right editor you can now write your SQL queries. (Under where it says Query
SQL) You may want to start by running “SELECT * FROM rides LIMIT 10;” to check the
data has loaded correctly
