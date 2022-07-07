create database ProvASede;

use ProvASede;

create table Proveedores(
	IDProv int not null,
    tipoProd varchar(45)not null,
    IDProd int not null,
    nomProv varchar (45) not null,
    dirProv varchar (45) not null,
    telProv int not null,
    redesProv varchar(100) not null,
    emailProv varchar (100) not null,
    
primary key (IDProv)


);
    
    create table Productos (
    IDProd int not null,
    nomProd varchar (45) not null,
    IDProv int not null,
    loteProd int not null,
    cantProd int not null,
    pesoProd int not null,
    preUnProd int not null,
    
primary key (IDProd),
foreign key(IDProv) references Proveedores(IDProv)
);
    
    create table Pedido(
    IDPedido int not null,
    FechaPedido datetime not null,
    IDProv int not null,
    IDProd int not  null,
    cantProd int not null,
    FechaEntrega datetime,
    IDSede int not null,
    DetaSoNP int not null,
    preTotal int not null,
    
primary key (IDPedido),
foreign key(IDProv) references Proveedores(IDProv),
foreign key(IDProd) references Productos(IDProd),
foreign key(IDSede) references Sede(IDSede),
foreign key(DetaSoNP) references DetallesPedido(DetaSoNP)
);

create table DetallesPedido(
DetaSoNP int not null ,
IDPedido int not null,
DescDeta varchar(45) not null,
FechaPedido datetime not null,
FechaEntrega datetime  not null,

primary key (DetaSoNP),
foreign key(IDPedido) references Pedidos(IDPedido)

);

create table Sede(
IDSede int not null ,
IDPedido int not null,
dirSede varchar(45) not null,
medPago varchar (45) not null,

primary key (IDSede),
foreign key(IDPedido) references Pedidos(IDPedido)
);



