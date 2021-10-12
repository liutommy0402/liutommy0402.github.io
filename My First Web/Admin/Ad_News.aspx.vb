
Partial Class Admin_Ad_News
    Inherits System.Web.UI.Page
    Dim DelImage As String

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Ad_NewsDetail.aspx?Action=Insert")
    End Sub

    Private Sub GridView1_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        If DelImage <> "" Then
            My.Computer.FileSystem.DeleteFile(DelImage)
        End If
        Response.Redirect("~/Admin/Ad_News.aspx")
    End Sub

    Private Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        If GridView1.Rows(e.RowIndex).Cells(3).Text <> "" Then
            DelImage = Server.MapPath("../") & "Images/news/" & GridView1.Rows(e.RowIndex).Cells(3).Text
        End If
    End Sub
End Class
