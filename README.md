Hello!

This is a repository for Project 2 for the UofM Data Analytics Bootcamp Course

The focus of this project is on some data gathered from crowdfunding campaigns using ETL methodology (Extract, Transform, Load)
For the main script file we were tasked with:
  - Loading in the data sets
  - Creating dataframes for Categories, Subcategories, Contacts info, and Campaign info

We then had to create a ERD and corresponding PostgreSQL schema file that would:
  - Create tables for each of the corresponding dataframes listed above
  - Load the data into the tables in the correct order
  - Use select statements to display the correctly loaded data

Here is a picture of the ERD:
![project-2-erd](https://github.com/user-attachments/assets/895af91e-70b4-4159-91a0-cdc10a405453)

(ERD created using the QuickDBD web app. Link to the website here: https://app.quickdatabasediagrams.com)

Instructions on how to run the script file are as follows:
  - Download all project files from this repository
  - Open the "ETL_Mini_Project_SCarty" file in Jupyter Notebook (the program used to create the script)
  - Run the script or individual cells at your discretion

Instructions on how to run the database are as follows:
  - If you haven't already, download all project files from this repository
  - Open PgAdmin4 (database program used to develop this project)
  - Create a database (any name is fine)
  - Open a query tool in your newly created database, load the schema file (located in the Database Files folder) into the query tool, and run everything in the schema file except the SELECT statements at the bottom
  - Find the newly created tables in the navigation tab on the left side of the program window and load the csv data files into the tables in this order: Category, Subcategory, Contacts, then Campaign
  - Once those have been loaded, you can run any of the SELECT statements found at the bottom of the schema file in your existing query tool to verify that the data has been loaded into the tables correctly

Some references were used during the creation of this project:
Referenced code from this page to help write a function to split the contents of the "category & sub-category" column into 2 new columns:
https://www.geeksforgeeks.org/python-pandas-split-strings-into-two-list-columns-using-str-split/

Referenced code from this page to help write list comprehensions that add "cat" in front of a list of category ids:
https://stackoverflow.com/questions/2050637/appending-the-same-string-to-a-list-of-strings-in-python

Referenced documentation for the json module for python when creating the loop that gathers the contacts dataframe info and stores it in a list:
https://docs.python.org/3/library/json.html

Got help from XPert Learning Assistant on the bootcampspot website with writing the list comprehension for converting contact info data, here's the initial prompt used:
I'm trying to write a list comprehension to convert json strings of data into a dictionary of lists to load into a dataframe, how would I do that?
