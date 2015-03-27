
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub FormViewRecipe_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormViewRecipe.ItemDeleted

        lbl_deletedrecipe.Text = "The recipe has been deleted."

        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")

    End Sub

    Protected Sub FormViewRecipe_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormViewRecipe.ItemUpdated
        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")
    End Sub
End Class
