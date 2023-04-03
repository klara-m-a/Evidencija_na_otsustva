drop table if exists Vraboten_vo_oddel;
drop table if exists Otsustva;
drop table if exists Vraboteni;
drop table if exists Oddeli;
drop table if exists Firmi;
drop table if exists Vidovi;

create table Vidovi(
	vid_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vid_otsustvo varchar(100) not null
);

create table Firmi(
	f_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	f_ime varchar(100) not null,
	f_grad varchar(100) not null,
	f_email varchar(100) not null,	
	f_telefon varchar(100) not null,
	f_edb varchar(100) not null,
	f_kontakt varchar(100),
	f_username varchar(100) not null,
	f_password varchar(100) not null,
	f_valid date not null
);

create table Oddeli(
	oddel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	oddel_naziv varchar(100) not null,
	f_id int not null, FOREIGN KEY(f_id) references Firmi(f_id)
);

create table Vraboteni(
	v_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	v_ime varchar(100) not null,
	v_prezime varchar(100) not null,
	v_mesto varchar(100),	
	v_telefon varchar(100),
	v_embg varchar(100) not null,
	v_odmor integer not null,
	v_aktiven smallint not null,
	f_id int not null, FOREIGN KEY(f_id) references Firmi(f_id)
);

create table Otsustva(
	o_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	o_datum date not null,
	o_casovi int not null,
	o_opis varchar(100),
	v_id int not null, FOREIGN KEY(v_id) references Vraboteni(v_id),
	vid_id int not null, FOREIGN KEY(vid_id) references Vidovi(vid_id)
);

create table Vraboten_vo_oddel(
	vraboten_od DATE DEFAULT CURRENT_DATE,
	vraboten_do date,
	v_id integer not null, FOREIGN KEY(v_id) references Vraboteni(v_id),
	oddel_id integer not null, FOREIGN KEY(oddel_id) references Oddeli(oddel_id),
	CONSTRAINT pk_id primary key(vraboten_od, v_id, oddel_id)
);