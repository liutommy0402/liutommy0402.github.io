
Partial Class Main_forum
    Inherits System.Web.UI.Page

    Private Sub GridView1_DataBound(sender As Object, e As EventArgs) Handles GridView1.DataBound
        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            If DateAdd("d", 3, GridView1.Rows(i).Cells(2).Text) < Date.Today Then
                CType(GridView1.Rows(i).FindControl("image1"), Image).Visible = False
            End If

            If GridView1.Rows(i).Cells(4).Text < 5 Then
                CType(GridView1.Rows(i).FindControl("image2"), Image).Visible = False
            End If
        Next
    End Sub
End Class
