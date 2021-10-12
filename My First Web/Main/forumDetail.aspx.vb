
Partial Class Main_forumDetail
    Inherits System.Web.UI.Page

    Private Sub Main_forumDetail_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim sds As New SqlDataSource
        sds.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        sds.UpdateCommand = "UPDATE [frmMain] SET frmMain_Hits = frmMain_Hits + 1 WHERE [frmMain_ID]=@frmMain_ID"
        sds.UpdateParameters.Add("frmMain_ID", Request.QueryString("frmMain_ID"))
    End Sub
End Class
