-- CREATE TABLES
create table company(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   type VARCHAR(100) NOT NULL,
   ein VARCHAR(100) NOT NULL,
   filing_date DATE,
   renewal_date DATE,
   PRIMARY KEY ( id )
);


create table property(
   id INT NOT NULL AUTO_INCREMENT,
   company_id INT NOT NULL,
   name VARCHAR(100) NOT NULL,
   city VARCHAR(100) NOT NULL,
   state_code VARCHAR(2) NOT NULL,
   zip_code VARCHAR(10) NOT NULL,
   line_1 VARCHAR(100) NOT NULL,
   image_path VARCHAR(100),
   PRIMARY KEY (id),
   FOREIGN KEY (company_id)
        REFERENCES company(id)
        ON DELETE CASCADE
);


create table unit(
   id INT NOT NULL AUTO_INCREMENT,
   property_id INT NOT NULL,
   number VARCHAR(10),
   bedrooms INT NOT NULL,
   bathrooms INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (property_id)
        REFERENCES property(id)
        ON DELETE CASCADE
);


create table unit_updates(
   id INT NOT NULL AUTO_INCREMENT,
   unit_id INT NOT NULL,
   description DATE,
   date DATE,
   PRIMARY KEY (id),
   FOREIGN KEY (unit_id)
        REFERENCES unit(id)
        ON DELETE CASCADE
);


create table tenancy(
   id INT NOT NULL AUTO_INCREMENT,
   unit_id INT NOT NULL,
   person_id INT NOT NULL,
   move_in_date DATE,
   move_out_date DATE,
   rent_amount DOUBLE NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (unit_id)
        REFERENCES unit(id)
        ON DELETE CASCADE,
   FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE
);


create table person(
   id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(100) NOT NULL,
   last_name VARCHAR(100) NOT NULL,
   type VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);


create table deposit(
   id INT NOT NULL AUTO_INCREMENT,
   person_id INT NOT NULL,
   amount DOUBLE NOT NULL,
   recieved_date DATE,
   returned_date DATE,
   interest_paid DOUBLE,
   PRIMARY KEY (id),
   FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE
);


create table billing_period(
   id INT NOT NULL AUTO_INCREMENT,
   month VARCHAR(20) NOT NULL,
   year VARCHAR(4) NOT NULL,
   PRIMARY KEY (id)
);


create table invoice(
   id INT NOT NULL AUTO_INCREMENT,
   tenancy_id INT NOT NULL,
   billing_period_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (tenancy_id)
        REFERENCES tenancy(id)
        ON DELETE CASCADE,
   FOREIGN KEY (billing_period_id)
        REFERENCES billing_period(id)
        ON DELETE CASCADE
);


create table payment(
   id INT NOT NULL AUTO_INCREMENT,
   invoice_id INT NOT NULL,
   payment_type VARCHAR(50) NOT NULL,
   tender_type VARCHAR(50) NOT NULL,
   recieved_date DATE,
   PRIMARY KEY (id),
   FOREIGN KEY (invoice_id)
        REFERENCES invoice(id)
        ON DELETE CASCADE
);


create table expense_type(
   id INT NOT NULL AUTO_INCREMENT,
   type VARCHAR(50) NOT NULL,
   description VARCHAR(250) NOT NULL,
   PRIMARY KEY (id)
);


create table expense(
   id INT NOT NULL AUTO_INCREMENT,
   property_id INT NOT NULL,
   expense_type_id INT NOT NULL,
   amount DOUBLE NOT NULL,
   date DATE,
   notes VARCHAR(200),
   PRIMARY KEY (id),
   FOREIGN KEY (property_id)
        REFERENCES property(id)
        ON DELETE CASCADE,
   FOREIGN KEY (expense_type_id)
        REFERENCES expense_type(id)
        ON DELETE CASCADE
);
