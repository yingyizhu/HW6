
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub FormViewRecipe_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewRecipe.ItemDeleted

        Dim deletedrecipe As String = e.Values("Recipe_Name").ToString()

        lbl_deletedrecipe.Text = deletedrecipe & "has been deteted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub

    Protected Sub FormViewRecipe_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewRecipe.ItemUpdated
        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")
    End Sub
End Class
