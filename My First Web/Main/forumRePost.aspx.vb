
Partial Class Main_forumRePost
    Inherits System.Web.UI.Page

    Private Sub Main_forumRePost_Load(sender As Object, e As EventArgs) Handles Me.Load
        CType(FormView1.FindControl("frmRe_TimeTextBox"), TextBox).Text = My.Computer.Clock.LocalTime
    End Sub

    Private Sub FormView1_PreRender(sender As Object, e As EventArgs) Handles FormView1.PreRender
        CType(FormView1.FindControl("frmMain_IdTextBox"), TextBox).Text = Request.QueryString("frmMain_Id")
        CType(FormView1.FindControl("frmRe_SubjectTextBox"), TextBox).Text = "Re:" & Request.QueryString("frmMain_Subject")
        CType(FormView1.FindControl("frmRe_IPTextBox"), TextBox).Text = Request.ServerVariables("REMOTE_ADDR")
    End Sub

    Private Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Dim sds As New SqlDataSource
        sds.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        sds.UpdateCommand = "UPDATE [frmMain] SET [frmMain_Re]=[frmMain_Re] + 1 WHERE[frmMain_Id]= @frmMain_Id"
        sds.UpdateParameters.Add("frmMain_Id", Request.QueryString("frmMain_Id"))
        sds.Update()
        Response.Redirect("forumDetail.aspx?frmMain_Id=" & Request.QueryString("frmMain_Id"))
    End Sub

    Protected Sub ChangeStr(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim Content As String
        Content = CType(FormView1.FindControl("frmRe_ContentTextBox"), TextBox).Text
        Content = Replace(Content, "&", "&amp;")
        Content = Replace(Content, ">", "&gt;")
        Content = Replace(Content, "<", "&lt;")
        Content = Replace(Content, " ", "&nbsp;")
        CType(FormView1.FindControl("frmRe_ContentTextBox"), TextBox).Text = Content
    End Sub
End Class
