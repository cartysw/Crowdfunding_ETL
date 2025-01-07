-- Drop table statements to make sure we have a clean slate before creating tables
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

-- Creates the Category table and sets it's primary key
CREATE TABLE category (
    category_id VARCHAR(8)   NOT NULL,
    category VARCHAR(20)   NOT NULL,
        PRIMARY KEY (category_id)
);

-- Creates the Subcategory table and sets it's primary key
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8)   NOT NULL,
    subcategory VARCHAR(40)   NOT NULL,
        PRIMARY KEY (subcategory_id)
);

-- Creates the Contacts table and sets it's primary key
CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    email VARCHAR(80)   NOT NULL,
        PRIMARY KEY (contact_id)
);

-- Creates the Category table, sets it's primary key, and sets it's foreign keys
CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(100)   NOT NULL,
    description VARCHAR(100)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(20)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launched_date TIMESTAMP   NOT NULL,
    end_date TIMESTAMP   NOT NULL,
    category_id VARCHAR(4)   NOT NULL,
    subcategory_id VARCHAR(8)   NOT NULL,
        PRIMARY KEY(cf_id),
        FOREIGN KEY(category_id) REFERENCES category(category_id),
        FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
        FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);

-- Select statements to show the contents of the loaded data tables
-- Make sure you load the data into the tables in the order they are listed in this schema file!
-- Order is: Category, Subcategory, Contacts, then Campaign
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;