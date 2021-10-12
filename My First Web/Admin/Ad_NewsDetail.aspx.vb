
Partial Class Admin_Ad_NewsDetail
    Inherits System.Web.UI.Page

    Protected Sub btnEditImage(sender As Object, e As EventArgs)

        Dim EditImage, ImgName As String
        If CType(FormView1.FindControl("FileUpload1"), FileUpload).HasFile Then
            ImgName = CType(FormView1.FindControl("FileUpload1"), FileUpload).FileName
            CType(FormView1.FindControl("news_ImageTextBox"), TextBox).Text = CType(FormView1.FindControl("FileUpload1"), FileUpload).FileName
            EditImage = Server.MapPath("../Images/news/") & ImgName
            CType(FormView1.FindControl("FileUpload1"), FileUpload).SaveAs(EditImage)
            CType(FormView1.FindControl("Image1"), Image).ImageUrl = "../Images/news/" & ImgName
        End If

    End Sub
    Protected Sub btnSaveImage(sender As Object, e As EventArgs)

        Dim SaveImage, ImgName As String
        If CType(FormView1.FindControl("FileUpload2"), FileUpload).HasFile Then
            ImgName = CType(FormView1.FindControl("FileUpload2"), FileUpload).FileName
            CType(FormView1.FindControl("news_ImageTextBox"), TextBox).Text = CType(FormView1.FindControl("FileUpload2"), FileUpload).FileName
            SaveImage = Server.MapPath("../Images/news/") & ImgName
            CType(FormView1.FindControl("FileUpload2"), FileUpload).SaveAs(SaveImage)
            CType(FormView1.FindControl("Image2"), Image).ImageUrl = "../Images/news/" & ImgName
        End If

    End Sub

    Private Sub Admin_Ad_NewsDetail_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Request.QueryString("Action") = "Insert" Then
            FormView1.DefaultMode = DetailsViewMode.Insert
            If IsPostBack = False Then
                CType(FormView1.FindControl("news_DateTextBox"), TextBox).Text = My.Computer.Clock.LocalTime
            End If
        End If

    End Sub

    Private Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("Ad_News.aspx")
    End Sub

    Private Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("Ad_News.aspx")
    End Sub
End Class
