create table Телефоны
(
ID_Телефона nvarchar(50) primary key,
ID_Абонента smallint not null,
Номер_Договора varchar(255) not null,
Дата_Установки date not null
)