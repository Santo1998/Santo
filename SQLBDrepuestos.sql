
create database BDrepuesto     --Santo Rosendo Santos del Rosario 17-SIIN-1-176)  Seccion= 0541 aula = 18--

go


create table Empleados 
(
Id_Empleado int primary key identity(1,1)not null,
Nombre varchar(30)not null,
Apellidos varchar (50)not null,                     
Sexo varchar(1)not null,                      --Santo Rosendo Santos del Rosario 17-SIIN-1-176) Seccion= 0541 aula = 18--
Cedula varchar(13) not null,
Direccion Varchar(200),
Telefono Varchar (12),
Cargo_Posicion Varchar(75)not null,
Salario money not null,
Fecha_de_Entrada date not null

)
go

create table Articulos
(Id_articulo int primary key identity(1,1) not null,
Id_Categoria int not null,
Id_Empleado int not null,
Id_Proveedor int not null,
Codigo varchar(15)not null,                        -- Carlos Dawelkin Mota (17-SIIT-1-022) Seccion= 0541 aula = 18--
Nombre varchar(50)not null ,
Marca varchar(30) not null,
Cantidad int not null,
Precio_Compra money not null,
Precio_Venta money not null,
Fecha_Entrada date not null


)
go

create table proveedores(
Id_Proveedor int primary key identity(1,1)not null,
Nombre varchar(50) not null,
Direccion varchar(200),                                 -- Carlos Dawelkin Mota (17-SIIT-1-022) Seccion= 0541 aula = 18--
Telefono Varchar(13) not null,
Email varchar(40),
URL varchar (70)
)
go

create table Catergoria
(
Id_Categoria int primary key identity(1,1) not null,   
Nombre varchar (40) not null,                                --Jose Luis Valdez (17-SIIT-1-018) Seccion= 0541 aula = 18--
Descripcion varchar(200)

)
go

create table Venta(
Id_Venta int primary key identity(1,1)not null,
Id_Articulo int not null,
Id_Empleado int not null,
Id_Cliente int,                                  --Katherine Medina Rosario (17-SIIN-1-120) Seccion= 0541 aula = 18--
Cantidad int not null,
Precio_Venta money not null,
Fecha date not null
)
go

create table Cliente(
Id_Cliente int primary key identity(1,1) not null,
Nombre varchar(30),
Apellidos Varchar(50),
Sexo varchar(1),                                   --Yamilka Pérez Pineda (17-SIIT-1-015) Seccion= 0541 aula = 18--
Cedula varchar (13),
Telefono varchar(12),
Direccion varchar(200)
)
