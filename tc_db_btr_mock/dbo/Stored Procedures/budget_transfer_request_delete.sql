-- =============================================
-- Author:		Kenneth Cooper
-- Create date: 7/9/2017
-- Description:	Delete budget transfer activities and budget transfer requests
-- =============================================
CREATE PROCEDURE budget_transfer_request_delete 
	-- Add the parameters for the stored procedure here
	@btr_key int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		Delete From transfer_activity Where btr_key = @btr_key
		Delete From budget_transfer_request Where btr_key = @btr_key
END
