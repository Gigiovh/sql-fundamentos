-- DDL (data definition language)
-- Create, alter, drop

create database  db_gravadora_ldsa_mtec;

use db_gravadora_ldsa_mtec;

create table tb_album (
cd_album int auto_increment primary key,
nm_album varchar(60) not null,
dt_lancamento date not null, 
qt_duracao time not null
)engine=InnoDB default charset=utf8mb4;

create table tb_arista (
cd_artista int auto_increment primary key,
nm_artista varchar(60) not null
)engine=InnoDB default charset=utf8mb4;

create table tb_genero (
cd_genero int auto_increment primary key,
nm_genero varchar(60) not null,
constraint genero_unico unique (nm_genero)
)engine=InnoDB default charset=utf8mb4;

create table tb_album_artista (
id_album int not null,
id_artista int not null,
id_genero int not null,
primary key (id_album, id_artista, id_genero),
foreign key (id_album) references tb_album (cd_album),
foreign key (id_artista) references tb_arista (cd_artista),
foreign key (id_genero) references tb_genero (cd_genero)
)engine=InnoDB default charset=utf8mb4;
