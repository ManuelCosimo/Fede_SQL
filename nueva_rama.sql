create database MiFarmacia;
create table PRODUCTOS (
    PRO_ID number not null,
    PRO_NOMBRE varchar (25),
    PRO_TDF_ID number,
    PRO_PRECIO number
)



insert into PRODUCTOS  ( PRO_ID, PRO_NOMBRE, PRO_TDF_ID, PRO_PRECIO )
     values ( 1, 'Paracetamol', 1, 250 )
     values ( 2, 'Ibuprofeno', 1, 300   )
     values ( 3, 'Diazepam', 2, 600)
     values ( 4, 'Keterolac', 2, 700)
     values ( 5, 'Dexametazona', 2, 560)


alter table PRODUCTOS (
    add constraint pk_pro_id primary key (PRO_ID)
    foreign key (PRO_TDF_ID) reference TIPOS_DE_FORMATO (TDF_ID)
)




 create table STOCKS (
 STO_ID number not null,
 STO_PRO_ID number,
 STO_SDF_ID number,
 STO_CANTIDAD number
 )

insert into STOCKS (STO_ID, STO_PRO_ID, STO_SDF_ID, STO_CANTIDAD)
    values (1, 1, 1, 700)
    values (2, 1, 2, 700)
    values (3, 1, 3, 700)
    values (4, 2, 1, 700)
    values (5, 2, 2, 700)
    values (6, 2, 3, 700)
    values (7, 3, 1, 700)
    values (8, 3, 2, 700)
    values (9, 3, 3, 700)
    values (10, 4, 1, 700)
    values (11, 4, 2, 700)
    values (12, 4, 3, 700)
    values (13, 5, 1, 700)
    values (14, 5, 2, 700)
    values (15, 5, 3, 700)



alter table STOCKS (
    add constraint pk_sto_id PRIMARY KEY (STO_ID) ,
    foreign key (STO_PRO_ID) reference PRODUCTOS (PRO_ID)
    foreign key (STO_SDF_ID) reference TIPOS_DE_FORMATO (TDF_ID)
)|


create table SUCURSALES_DE_LA_FARMACIA (
SDF_ID number not null,
SDF_NOMBRE varchar (25)
)


insert into SUCURSALES_DE_LA_FARMACIA (SDF_ID, SDF_NOMBRE)
    values ( 1, 'Bolivar')
    values ( 2, 'Olavarria')
    values ( 3, 'Pehuajo' )



alter table SUCURSALES_DE_LA_FARMACIA (
    add constraint pk_sdf_id PRIMARY KEY (SDF_ID)
)

create table TIPOS_DE_FORMATO (
TDF_ID number not null
TDF_NOMBRE varchar (25)
)

insert into TIPOS_DE_FORMATO (TDF_ID, TDF_NOMBRE)
    values ( 1, 'Pastillas')
    values ( 2, 'Ampollas')

alter table TIPOS_DE_FORMATO (
    add constraint pf_tdf_id PRIMARY KEY (TDF_ID)
)



update PRODUCTOS set PRO_PRECIO = 300 where PRO_ID = 1;
update PRODUCTOS set PRO_PRECIO = 430 where PRO_ID = 2;