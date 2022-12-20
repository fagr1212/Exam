create table Разговоры
(
ID_Разговора smallint primary key identity,
Номер_Города smallint not null,
Телефон nvarchar(50) not null,
Дата_Разговора date not null,
Продолжительность int not null,
Состояние_Оплаты varchar(255) not null
)