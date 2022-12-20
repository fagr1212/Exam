create table Тарифы
(
ID_Города smallint primary key identity,
Город varchar(255) not null,
Цена int not null
)