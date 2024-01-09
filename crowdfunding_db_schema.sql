CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY NOT NULL,
	category VARCHAR
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY NOT NULL,
	subcategory VARCHAR
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

CREATE TABLE campaign (
	cf_id VARCHAR,
	contact_id INT references contacts(contact_id) NOT NULL,
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR references category(category_id) NOT NULL,
	subcategory_id VARCHAR references subcategory(subcategory_id) NOT NULL
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;