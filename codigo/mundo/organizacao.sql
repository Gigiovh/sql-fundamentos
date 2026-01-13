create  database db_mundo_1dsa;
use db_mundo_1dsa;

create table tb_continente(
cd_continente int auto_increment primary key,
nm_continente varchar(40) not null unique
); 
create table tb_pais (
cd_pais int auto_increment primary key,
nm_pais varchar(100) not null unique,
qt_populacao int not null,
dt_independencia date,
id_continente int not null,
foreign key(id_continente) references tb_continente (cd_continente)
);
create table tb_idioma(
cd_idioma int auto_increment primary key,
nm_idioma varchar(40) not null unique
);
create table tb_pais_idioma (
id_pais int not null,
id_idioma int not null,
ic_oficial char(1) not null,
primary key (id_pais, id_idioma),
foreign key (id_pais) references tb_pais (cd_pais),
foreign key (id_idioma) references tb_idioma (cd_idioma)
);

select * from tb_pais_idioma;

/* 
DML - DATA MANIPULATION LANGUAGE
INSERT : insere / UPDATE : atualiza / DELETE : exclui 
*/

insert into tb_continente set
nm_continente = "América";

insert into tb_continente set
nm_continente = "Ásia",
cd_continente = "2";

insert into tb_continente set
nm_continente = "Europa",
cd_continente = null;

insert into tb_continente (nm_continente) values
("Oceania");

insert into tb_continente (cd_continente, nm_continente) values
(null, "África");

select * from tb_continente;

insert into tb_pais set
cd_pais=null,
nm_pais= "Albânia",
qt_populacao= 2812000,
dt_independencia= "1912-11-28",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Alemanha",
qt_populacao= 8200000,
dt_independencia= "1866-08-18",
id_continente= 3;



insert into tb_pais set
cd_pais=null,
nm_pais= "Andorra",
qt_populacao= 79034,
dt_independencia= "1993-02-02",
id_continente= 3;

select * from  tb_pais;

insert into tb_pais set
cd_pais=null,
nm_pais= "Áustria",
qt_populacao= 8956000,
dt_independencia= "1945-04-19",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Azerbaijão",
qt_populacao= 1014000,
dt_independencia= "1918-05-28",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bélgica",
qt_populacao= 1159000,
dt_independencia= "1830-08-28",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bielorrússia",
qt_populacao= 9340000,
dt_independencia= "1991-08-01",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bósnia e Herzegovina",
qt_populacao= 3271000,
dt_independencia= "1992-03-03",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Bulgária",
qt_populacao= 6878000,
dt_independencia= "2008-09-22",
id_continente= 3;

insert into tb_pais set
cd_pais=null,
nm_pais= "Cazaquistão",
qt_populacao= 190000,
dt_independencia= "1991-12-16",
id_continente= 3;

insert into tb_pais set
cd_pais = null,
nm_pais = "Chipre",
qt_populacao = "1248286",
dt_independencia = "1914-11-05",
id_continente = "3";


insert into tb_pais set
cd_pais = null,
nm_pais = "Croácia",
qt_populacao = "4067656",
dt_independencia = "1991-06-25",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Dinamarca",
qt_populacao = "5865798",
dt_independencia = "1973-01-01",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Eslováquia",
qt_populacao = "5471602",
dt_independencia = "1992-07-01",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Eslovenia",
qt_populacao = "2089194",
dt_independencia = "1991-06-25",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Espanha",
qt_populacao = "46415700",
dt_independencia = "1492-01-02",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Estônia",
qt_populacao = "1312764",
dt_independencia = "1918-11-28",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Finlândia",
qt_populacao = "5631550",
dt_independencia = "1917-12-06",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "França",
qt_populacao = "66211271",
dt_independencia = "1979-07-14",
id_continente = "3";

insert into tb_pais set
cd_pais = null,
nm_pais = "Geórgia",
qt_populacao = "3829632",
dt_independencia = "1991-04-09",
id_continente = "3";

select * from tb_pais;


 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Grécia",
 qt_populacao = 11161335,
 dt_independencia = '1822-03-25',
 id_continente = "3";
 
  
 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Hungria",
 qt_populacao = 9710000,
 dt_independencia = '1711-08-20',
 id_continente = "3";
 
  insert into tb_pais set
 cd_pais = null,
 nm_pais = "Irlanda",
 qt_populacao = 4961896,
 dt_independencia = '1919-07-11',
 id_continente = "3";
 
 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Islândia",
 qt_populacao = 372520,
 dt_independencia = '1944-06-17',
 id_continente = "3";
 
 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Itália",
 qt_populacao = 59110000,
 dt_independencia = '1849-08-22',
 id_continente = "3";
 
 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Letônia",
 qt_populacao = 1884000,
 dt_independencia = '1920-08-11',
 id_continente = "3";
 
  insert into tb_pais set
 cd_pais = null,
 nm_pais = "Lituânia",
 qt_populacao = 2801000,
 dt_independencia = '1918-02-16',
 id_continente = "3";
 
insert into tb_pais set
 cd_pais = null,
 nm_pais = "Liechtenstein",
 qt_populacao = 39039,
 dt_independencia = '1866-07-12',
 id_continente = "3";
 
 insert into tb_pais set
 cd_pais = null,
 nm_pais = "Luxemburgo",
 qt_populacao = 640064,
 dt_independencia = '1839-04-19',
 id_continente = "3";
 
  insert into tb_pais set
 cd_pais = null,
 nm_pais = "Macedônia do Norte",
 qt_populacao = "2065000",
 dt_independencia = '1991-9-17',
 id_continente = "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Malta",
qt_populacao= "518536",
dt_independencia= "1964-09-21",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Moldávia",
qt_populacao= "2615000",
dt_independencia= "1991-08-27",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Mônaco",
qt_populacao= "36686",
dt_independencia= "1297-01-08",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Montenegro",
qt_populacao= "65721",
dt_independencia= "2006-06-03",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Noruega",
qt_populacao= "5408000",
dt_independencia= "1814-05-17",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Países Baixos",
qt_populacao= "17053000",
dt_independencia= "1581-07-26",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Polônia",
qt_populacao= "37075000",
dt_independencia= "1920-11-11",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Portugal",
qt_populacao= "10033000",
dt_independencia= "1179-05-23",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Reino Unido",
qt_populacao= "76033000",
dt_independencia= "1707-05-11",
id_continente= "3";

insert into tb_pais set
cd_pais= null,
nm_pais= "Romênia",
qt_populacao= "19012000",
dt_independencia= "1877-05-21",
id_continente= "3";

select * from tb_pais;
