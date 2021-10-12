
Partial Class Member_forumPost
    Inherits System.Web.UI.Page

    Private Sub Member_forumPost_Load(sender As Object, e As EventArgs) Handles Me.Load
        CType(FormView1.FindControl("frmMain_TimeTextBox"), TextBox).Text = My.Computer.Clock.LocalTime
        CType(FormView1.FindControl("frmMain_HitsTextBox"), TextBox).Text = 0
        CType(FormView1.FindControl("frmMain_ReTextBox"), TextBox).Text = 0
    End Sub

    Private Sub FormView1_PreRender(sender As Object, e As EventArgs) Handles FormView1.PreRender
        CType(FormView1.FindControl("frmMain_IPTextBox"), TextBox).Text = Request.ServerVariables("REMOTE_ADDR")
    End Sub

    Private Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("~/Main/forum.aspx")
    End Sub

    Protected Sub ChangeStr(ByVal sender As Object, ByVal e As EventArgs)
        Dim Content As String
        Content = CType(FormView1.FindControl("frmMain_ContentTextBox"), TextBox).Text
        Content = Replace(Content, "&", "&amp;")
        Content = Replace(Content, ">", "&gt;")
        Content = Replace(Content, "<", "&lt;")
        Content = Replace(Content, "", "&nbsp;")
        CType(FormView1.FindControl("frmMain_ContentTextBox"), TextBox).Text = Content
    End Sub
End Class
