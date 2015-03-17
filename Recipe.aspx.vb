
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedrecipe As String = e.Values("Recipe_Name").ToString()

        lbl_deletedrecipe.Text = deletedrecipe & "has been deteted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")

    End Sub
End Class
