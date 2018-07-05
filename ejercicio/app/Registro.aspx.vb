Imports System.Data.SqlClient
Public Class Registro
    Inherits System.Web.UI.Page
    Dim conex As New SqlConnection("data source=GIGABYTEGTX980\INSUNAD01;Initial catalog=login;integrated security=true")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub bck_Click(sender As Object, e As EventArgs) Handles bck.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Reg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Reg.Click
        conex.Open()
        Dim cmd As New SqlCommand("insert into usuario values ('" + id.Text + "','" + nom.Text + "','" + apl.Text + "','" + usr.Text + "','" + mal.Text + "',
            '" + tlf.Text + "','" + psw.Text + "')", conex)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        Response.Write("<script>window.alert('Datos Registrados Correctamente');</script>")
        conex.Close()
    End Sub
End Class