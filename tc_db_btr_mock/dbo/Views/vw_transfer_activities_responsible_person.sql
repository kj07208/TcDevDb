CREATE VIEW [dbo].[vw_transfer_activities_responsible_person] AS
select u.*, ism.role_title, ta.btr_key, ta.transfer_activity_key, ta.index_key 
from [dbo].[vw_transfer_activities_datarecords] ta
inner join [dbo].[index_security_matrix] ism on (ta.index_key = ism.index_key)
inner join [dbo].[users] u on (ism.uni = u.uni_code)
Where ism.role_title = 'RP'
GO

