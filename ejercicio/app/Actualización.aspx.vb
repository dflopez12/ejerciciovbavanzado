Imports System.Data.SqlClient
Public Class Actualización
    Inherits System.Web.UI.Page
    Dim conex As New SqlConnection("data source=GIGABYTEGTX980\INSUNAD01;Initial catalog=login;integrated security=true")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Act_Click(sender As Object, e As EventArgs) Handles Act.Click
        conex.Open()
        Dim cmd As New SqlCommand("UPDATE usuario set password='" + psw.Text + "', nombre='" + nom.Text + "', apellido='" + apl.Text + "', usuario='" + usr.Text + "', correo='" + mal.Text + "'
        WHERE documento='" + id.Text + "'", conex)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        conex.Close()

        Response.Write("<script>window.alert('Datos Actualizados Correctamente');</script>")
        'Response.Redirect("default.aspx")

        nom.Text = ""
        apl.Text = ""
        usr.Text = ""
        mal.Text = ""
        tlf.Text = ""
        id.Text = ""

    End Sub

    Protected Sub bck_Click(sender As Object, e As EventArgs) Handles bck.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles cns.Click
        conex.Open()
        Dim query As String = "SELECT * FROM usuario WHERE documento = @id"
        Dim cmd As New SqlCommand(query, conex)
        cmd.Parameters.AddWithValue("@id", id.Text)
        Dim dr As SqlDataReader = cmd.ExecuteReader()

        If dr.Read() Then
            nom.Text = CStr(dr("nombre"))
            apl.Text = CStr(dr("apellido"))
            usr.Text = CStr(dr("usuario"))
            mal.Text = CStr(dr("correo"))
            tlf.Text = CStr(dr("telefono"))
        Else
            Response.Write("<script>window.alert('datos incorrectos');</script>")
        End If
        conex.Close()
    End Sub
End Class