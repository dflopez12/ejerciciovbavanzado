Imports System.Data.SqlClient
Public Class _Default
    Inherits System.Web.UI.Page
    Dim conex As New SqlConnection("data source=GIGABYTEGTX980\INSUNAD01;Initial catalog=login;integrated security=true")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub log_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles log.Click
        conex.Open()
        Dim cmd As New SqlCommand("select password from usuario where usuario='" + user.Text + "'", conex)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            If (dr(0)).ToString = pass.Text Then
                Response.Write("<script>window.alert('Ingreso Correcto');</script>")
                Response.Redirect("Cursos.aspx")
            Else
                Response.Write("<script>window.alert('datos incorrectos');</script>")
            End If
        Else
            Response.Write("<script>window.alert('Usuario No Existe');</script>")
            Response.Write("<script>window.alert('Favor verificar datos o registrarse');</script>")
        End If
        conex.Close()

    End Sub

    Protected Sub reg_Click(sender As Object, e As EventArgs) Handles reg.Click
        Response.Redirect("registro.aspx")

    End Sub

    Protected Sub act_Click(sender As Object, e As EventArgs) Handles act.Click
        Response.Redirect("Actualización.aspx")
    End Sub
End Class