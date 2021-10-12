
Partial Class Admin_Ad_WebLink
    Inherits System.Web.UI.Page

    Private Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Redirect("Ad_WebLink.aspx")
    End Sub

    Private Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("Ad_WebLink.aspx")
    End Sub

    Private Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("Ad_WebLink.aspx")
    End Sub
End Class
