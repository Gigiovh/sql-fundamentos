create database db_nostravamus;

use db_nostravamus;

create table tb_categoria (
cd_categoria int auto_increment primary key, 
nm_categoria varchar (45) not null
)engine=InnoDB default charset=utf8mb4;

create table tb_funcionario (
cd_funcionario int auto_increment primary key, 
nm_funcionario varchar(45) not null
)engine=InnoDB default charset=utf8mb4;

create table tb_mesa (
cd_mesa int auto_increment primary key
)engine=InnoDB default charset=utf8mb4;

create table tb_produto (
cd_produto int auto_increment primary key,
nm_produto varchar (45),
vl_produto decimal (8,2),
ds_produto longtext,
id_categoria int not null,
foreign key (id_categoria) references tb_categoria (cd_categoria)
)engine=InnoDB default charset=utf8mb4;

create table tb_reserva (
cd_reserva int auto_increment primary key,
dt_reserva datetime,
cd_ddd char (2),
cd_telefone varchar (12),
qt_lugar int,
id_funcionario int,
foreign key (id_funcionario) references tb_funcionario (cd_funcionario)
)engine=InnoDB default charset=utf8mb4;

create table tb_pedido (
cd_pedido int auto_increment primary key ,
dt_pedido datetime not null,
qt_pedido int not null,
id_produto int not null,
id_mesa int not null,
id_funcionario int not null,
foreign key (id_produto) references tb_produto (cd_produto),
foreign key (id_mesa) references tb_mesa (cd_mesa),
foreign key (id_funcionario) references tb_funcionario (cd_funcionario)
)engine=InnoDB default charset=utf8mb4;
