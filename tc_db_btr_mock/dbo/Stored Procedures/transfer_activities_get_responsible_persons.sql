-- =============================================
-- Author:      Ken Cooper
-- Create Date: 8/13/2017
-- Description: Get the responsible persons for transfer activities associated with a BTR
-- =============================================
CREATE PROCEDURE [dbo].[transfer_activities_get_responsible_persons]
(
    @btr_key int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	Select * from [dbo].[vw_transfer_activities_responsible_person]
	Where [btr_key] = @btr_key
	Order by uni_code
END
GO

