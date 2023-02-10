# UNATTENDED-TEST-DATABASE

<br>

## About The Project

For this project I didn't have access to a local Oracle database. However, I found `https://apex.oracle.com` which gave me access to a browser workspace where I could run and test my PL/SQL code.

The SQL script to create the tables and PL/SQL package procedure executed successfully on the APex workspace, but ultimately I'm not sure how closely the workspace mirrors a local Oracle database environment.

<br>

## My Assumptions

* MemberProducts with a next payment date within a 30 day period are due a payment.
* Membership numbers are stored as a VARCHAR data type
* I implemented an Autonomous Transaction logging System to ensure the log messages persist regardless of the procedure outcome and transaction state. As I didn't have access to a local Oracle database I was unable to install a logging framework (i.e. Logger) and went with the approach of creating a new table to store log messages.
* I included calls to the logging precedure within the loop iterating through the selected records on the basis the data set was small. If PL/SQL package procedure was executed on a large data set the logging procedure calls could be moved outside of the loop.

<br>

## Data Model

My SQL script to build the schema was based on the following data model:

<img src="supporting-docs/images/data-model.png" alt="isolated" width="100%"/>

<br>

## How I Would Test The Code

To test the code I created dummy data (see `test-data.sql` in the `supporting-docs` folder) which I populated into the tables.

I was then able to test my PL/SQL package procedure and check that the INSERT and UPDATE statements had executed corrcetly, and logging messages were created into the `ProcessingLog` table.

The test data includes 5 records with the `next_payment_date` set to `01-03-2023` which were picked up in the PL/SQL package procedure SELECT statement condition (`next_payment_date within 30 days of the current date`).

This screenshot shows the ProcessingLog table on the Apex workspace after the PL/SQL package procedure was executed on the test data:

<img src="supporting-docs/images/logging-table.png" alt="isolated" width="100%"/>