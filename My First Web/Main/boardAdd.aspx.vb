
Partial Class Main_boardAdd
    Inherits System.Web.UI.Page

    Private Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("~/Main/board.aspx")
    End Sub

    Private Sub Main_boardAdd_Load(sender As Object, e As EventArgs) Handles Me.Load
        CType(FormView1.FindControl("board_TimeTextBox"), TextBox).Text = My.Computer.Clock.LocalTime

    End Sub

End Class
