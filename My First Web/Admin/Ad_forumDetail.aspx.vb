
Partial Class Admin_Ad_forumDetail
    Inherits System.Web.UI.Page

    Private Sub DataList1_DeleteCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.DeleteCommand

        SqlDataSource2.DeleteParameters("frmRe_Id").DefaultValue = DataList1.DataKeys(e.Item.ItemIndex)
        SqlDataSource2.Delete()
        DataList1.DataBind()

        Dim sds As New SqlDataSource
        sds.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        sds.UpdateCommand = "UPDATE [frmMain] SET [frmMain_Re]=[frmMain_Re] - 1 WHERE [frmMain_Id]= @frmMain_Id"
        sds.UpdateParameters.Add("frmMain_Id", Request.QueryString("frmMain_Id"))
        sds.Update()
    End Sub
End Class
