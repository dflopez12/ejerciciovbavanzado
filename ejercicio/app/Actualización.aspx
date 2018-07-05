<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app/Site1.Master" CodeBehind="Actualización.aspx.vb" Inherits="ejercicio.Actualización" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 144px;
        }
        .auto-style1 {
            width: 8px;
        }
        .auto-style3 {
            width: 144px;
            height: 26px;
        }
        .auto-style4 {
            width: 8px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 55%;">
        <tr>
            <td class="auto-style2">
                <h1>Actualización Datos Estudiantes</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                    <p>Documento</p></td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="id" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="cns" runat="server" Text="Consultar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    Nombre</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="nom" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    Apellido</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="apl" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    Usuario</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="usr" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    Correo</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="mal" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <p>
                    Telefono</p>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:TextBox ID="tlf" runat="server" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    Password</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:TextBox ID="psw" runat="server" TextMode="Password" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <p>
                    &nbsp;</p>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Act" runat="server" Text="Actualizar" Width="95px" />
                <asp:Button ID="bck" runat="server" Text="Regresar" Width="96px" />
            </td>
        </tr>
    </table>
</asp:Content>
