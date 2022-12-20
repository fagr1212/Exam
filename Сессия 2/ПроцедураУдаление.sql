create proc dbo.УдалениеАбонента
@ФИО varchar(255)
As
DELETE FROM [dbo].[Абоненты]
WHERE [ФИО]=@ФИО