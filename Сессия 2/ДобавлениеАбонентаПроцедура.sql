create proc dbo.Добавление_Абонента
@ФИО varchar(255),
@Адрес varchar(255)
As
INSERT INTO [dbo].[Абоненты]([ФИО],[Адрес])
VALUES(@ФИО,@Адрес)