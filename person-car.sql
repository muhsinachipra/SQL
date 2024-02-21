create table car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC (19, 2) NOT NULL
);

create table person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car (id),
    UNIQUE (car_id)
);

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Van', 'Boyfield', 'vboyfield0@studiopress.com', 'Female', '1998-04-10', 'Indonesia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Mattie', 'Paybody', 'mpaybody4@hugedomains.com', 'Male', '1988-11-17', 'Chad');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Rik', 'Cejka', null, 'Male', '2004-03-22', 'Morocco');

insert into car (make, model, price) values ('Honda', 'Accord', '48559.23');
insert into car (make, model, price) values ('Pontiac', 'Firebird', '23633.86');