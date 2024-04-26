# Welcome to My Sqlite
***

## Task

It looks like you've provided a detailed set of requirements for implementing a simplified SQLite-like database and 
a command-line interface (CLI) for interacting with it. 
This is quite an extensive task, and I'll provide you with a general outline and code snippets to get you started. 
You may need to adapt and expand on this based on your specific requirements and the language you're using (Ruby in this case).

## Description

MySqliteRequest Class
This class is designed to represent a SQLite-like database request. 
It has various methods to build a database query and a run method to execute the query. Here's an overview of each method:
initialize: Initializes the class with default values for instance variables.
from(table_name): Sets the table name for the query. This method is used to specify the table from which data will be queried.
select(columns): Specifies the columns to be selected in the query. It can take either a single column as a string or an array of columns.
where(column_name, value): Adds a condition to the WHERE clause of the query. It takes a column name and a value to filter the results.
join(column_on_db_a, filename_db_b, column_on_db_b): Adds a JOIN clause to the query. 
It specifies how two tables should be joined based on specific columns.
order(order, column_name): Adds an ORDER BY clause to the query, specifying the column and the order (ascending or descending).
insert(table_name): Sets the request to be an INSERT query for a specific table.
values(data): Adds values for an INSERT query. 
It takes a hash of data where keys are column names and values are the corresponding values.
update(table_name): Sets the request to be an UPDATE query for a specific table.
set(data): Specifies the values to be updated in an UPDATE query.
It takes a hash of data where keys are column names and values are the corresponding updated values.
delete: Sets the request to be a DELETE query.
run: Placeholder method that should be implemented to execute the query based on the configured parameters.

## Installation

MySqliteCLI Class
This class represents a Command Line Interface (CLI) for interacting with the MySqliteRequest class. 
It takes user input, processes commands, and interacts with the MySqliteRequest instance. Here's an overview:
initialize(database_filename): Initializes the CLI with the name of the database file.
start: Starts the CLI loop, taking user input until the user types 'quit'.
process_input(input): Processes user input by splitting it into tokens and determining the command to execute.
process_sql_command(command, args): Processes SQL commands such as SELECT, INSERT, UPDATE, DELETE.
process_select(args), process_insert(args), process_update(args), process_delete(args): 
Placeholder methods that should be implemented to handle specific SQL commands.

## Usage

Usage:
The usage section at the end creates an instance of MySqliteCLI, initializes it with a database file name, and starts the CLI loop.
Note:
The code provided is a basic template and doesn't include the actual logic to execute queries, read/write from/to a database file,
 or handle specific SQL commands. 
 You'll need to implement these parts based on your requirements and the language you're using (Ruby in this case). 
 The code also lacks proper error handling and input validation, which should be added for a robust implementation.


### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>
