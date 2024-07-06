CREATE TABLE doctor(
	doctor_id INT IDENTITY PRIMARY KEY,
	doctor_name varchar(30),
	doctor_phone varchar(30),
	doctor_email varchar(40),
	specialty varchar(30),
	year_of_experience INT
);


CREATE TABLE patient(
	patient_ur INT IDENTITY PRIMARY KEY,
	patient_name varchar(50),
	patient_age INT,
	patient_phone varchar(30),
	patient_email varchar(50),
	patient_adress varchar(80),
	medicine_card_num INT,
	doctor_id INT,

	FOREIGN KEY(doctor_id)
	REFERENCES doctor(doctor_id)
);


CREATE TABLE pharm_company(
	company_id INT identity PRIMARY KEY,
	company_name varchar(40),
	company_adress varchar(50),
	company_phone varchar(40)
);

CREATE TABLE drug(
	drug_id INT IDENTITY PRIMARY KEY,
	trade_name varchar(30),
	drug_strngth INT,
	company_id INT,

	FOREIGN KEY(company_id)
	REFERENCES pharm_company(company_id)
);


CREATE TABLE prescription(
	prescription_id INT IDENTITY PRIMARY KEY,
	date DATE ,
	quantity INT,
	patient_ur INT,
	doctor_id INT,
	drug_id INT

	FOREIGN KEY(patient_ur)
	REFERENCES patient(patient_ur),

	FOREIGN KEY(doctor_id)
	REFERENCES doctor(doctor_id),

	FOREIGN KEY(drug_id)
	REFERENCES drug(drug_id),


);


