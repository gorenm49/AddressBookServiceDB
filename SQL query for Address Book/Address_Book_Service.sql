--------------------------------UC1-Ability to create a Address Book Service DB--------------------------


CREATE DATABASE Address_BOOK_Service_DB

USE Address_BOOK_Service_DB

-----------------UC2-Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes------------------------


CREATE TABLE address_book 
(
	id int primary KEY IDENTITY(1,1),
	fname varchar(50) NOT NULL,
	lname varchar(50) NOT NULL,
	address varchar(50) NOT NULL,
	city varchar(50),
	state varchar(50),
	zip varchar(30) NOT NULL,
	phone varchar(50) NOT NULL,
	email varchar(255) NOT NULL
);


SELECT * from address_book

----------------------------UC3-Ability to insert new Contacts to Address Book--------------------------

INSERT into address_book (fname,lname,address,city,state,zip,phone,email) values ('Hitesh','Pawar','Kale wadi','Pune','Maharashtra','411023','7898654565','hitesh@gmail.com')

INSERT into address_book values ('Anuj','Jadhav','Datta vadi','Mumbai','Maharashtra','421023','9878654565','anuj@gmail.com')

INSERT into address_book values ('Mukesh','Kumar','Civil Line','Aurangabad','Maharashtra','421023','9878654565','Mukesh@gmail.com')

INSERT into address_book values ('Sumit','Kale','Rajedra Nagar','Nashik','Maharashtra','421023','9878654565','Sumit@gmail.com')

INSERT into address_book values ('Mahesh','Gore','GandhiPura','Mumbai','Maharashtra','411083','8878654565','Mahesh@gmail.com')

INSERT into address_book values ('Ramesh','Ingole','Magalwarpeth','Pune','Maharashtra','431025','8278654565','Ramesh@gmail.com')

INSERT into address_book values ('Yash','Wade','Malvadi','Pune','Maharashtra','401023','9988654565','Yash@gmail.com')

INSERT into address_book values ('Rajesh','Ahute','Civil Line','Mallapur','Hyderabad','551023','7988654565','Rajesh@gmail.com')

INSERT into address_book values ('Rahul','Mankar','Malvadi','Hi-Tech City','Hyderabad','501023','7788654565','rahul@gmail.com')

SELECT * from address_book

-------------------UC4-Ability to edit existing contact person using their name--------------------------------------------

UPDATE address_book set zip = '432156', address = 'Vasant Nagar' where fname = 'Anuj'

SELECT * from address_book

--------------------------UC5-AAbility to delete a person using person's name-------------------

DELETE from address_book where fname = 'Hitesh'

SELECT * from address_book

----------------------------UC6-Ability to Retrieve Person belonging to a City or State from the Address Book-----------------

SELECT * from address_book where state = 'Maharashtra'

SELECT * from address_book where state = 'Hyderabad'

SELECT * from address_book where city = 'Pune'

SELECT * from address_book where city = 'Nashik'

SELECT * from address_book where city = 'Mumbai'

----------------------------UC7-Ability to understand the size of address book by City and State----------------

SELECT COUNT(*) from address_book

SELECT COUNT(*) from address_book where city = 'Mumbai'

SELECT COUNT(*) from address_book where city = 'Pune'

SELECT COUNT(*) from address_book where State = 'Maharashtra'


--------------UC8-Ability to retrieve entries sorted alphabetically by Person’s name for a given city-----------

SELECT * from address_book ORDER BY fname 

SELECT * from address_book GROUP BY city ORDER BY fname 

---------------UC9-Ability to identify each Address Book with name and type---------

ALTER TABLE address_book add add_name varchar(50), type varchar(50)

update address_book set add_name = 'Adr1', type = 'Friend' where id =2

update address_book set add_name = 'Adr1', type = 'Profession' where id =3

update address_book set add_name = 'Adr1', type = 'Family' where id =4

update address_book set add_name = 'Adr3', type = 'Friend' where id =5

update address_book set add_name = 'Adr1', type = 'Profession' where id =6

update address_book set add_name = 'Adr1', type = 'Friend' where id =7

update address_book set add_name = 'Adr2', type = 'Family' where id =8

update address_book set add_name = 'Adr2', type = 'Other' where id =9

SELECT * from address_book


-------------------UC10-Ability to get number of contact persons i.e. count by type------------------

SELECT COUNT(type) from address_book


-------------------UC11-Ability to add person to both Friend and Family------------------

INSERT into address_book values ('Arjun','Mali','ganeshPeth','Pune','Maharashtra','411033','8668986565','arjun@gmail.com','Adr3','Friend')

INSERT into address_book values ('Akshay','Gawai','DevPeth','Aurangabad','Maharashtra','432033','8665986565','akshay@gmail.com','Adr2','Family')

SELECT * from address_book


----------------------------------------------------------------------------------------------------------------------------