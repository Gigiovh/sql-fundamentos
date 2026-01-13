create database db_mundo_1dsa;
use db_mundo_1dsa;
create table tb_continente(
cd_continente int auto_increment primary key,
nm_continente varchar(40) not null unique
);

create table tb_pais(
cd_pais int auto_increment primary key,
nm_pais varchar(100) not null unique,
qt_populacao int not null,
dt_independencia date, 
id_continente int not null,
foreign key (id_continente) references tb_continente(cd_continente)
);
create table tb_idioma(
cd_idioma int auto_increment primary key,
nm_idioma varchar(30) not null unique 
);

create table tb_pais_idioma(
id_pais int not null,
id_idioma int not null,
ic_oficial char(1) not null,
primary key(id_pais, id_idioma),
foreign key(id_pais) references tb_pais (cd_pais),
foreign key(id_idioma) references tb_idioma (cd_idioma)
);
/*
DDL-Data manipulation linguage
Insert/ update / delete 
*/
insert into tb_continente set
nm_continente = "Ámérica";

insert into tb_continente set
cd_continente = 2,
nm_continente = "Ásia";

insert into tb_continente set
cd_continente= null,
nm_continente = "Europa";

insert into tb_continente (cd_continente, nm_continente)values
(null,"Oceania");
insert into tb_continente (cd_continente, nm_continente)values
(null,"África");

select * from tb_pais;

insert into tb_pais set
cd_pais=null,
nm_pais= "Albânia",
qt_populacao= 2812000,
dt_independencia= 1912-11-28,
id_continente= 3;

select * from tb_pais;
insert into tb_pais set
cd_pais=null,
nm_pais= "Alemanha",
qt_populacao= 8200000,
dt_independencia= 1866-08-18,
id_continente= 3;



insert into tb_pais set
cd_pais=null,
nm_pais= "Andorra",
qt_populacao= 79034,
dt_independencia= 1993-02-02,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Armênia",
qt_populacao= 2791000,
dt_independencia= 1991-9-23,
id_continente= 3;

select * from  tb_pais;

insert into tb_pais set
cd_pais=null,
nm_pais= "Áustria",
qt_populacao= 8956000,
dt_independencia= 1945-04-19,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Azerbaijão",
qt_populacao= 1014000,
dt_independencia= 1918-05-28,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bélgica",
qt_populacao= 1159000,
dt_independencia= 1830-08-28,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bielorrússia",
qt_populacao= 9340000,
dt_independencia= 1991-08-01,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bósnia e Herzegovina",
qt_populacao= 3271000,
dt_independencia= 1992-03-03,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bulgária",
qt_populacao= 6878000,
dt_independencia= 2008-09-22,
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Cazaquistão",
qt_populacao= 190000,
dt_independencia= 1991-12-16,
id_continente= 3;
