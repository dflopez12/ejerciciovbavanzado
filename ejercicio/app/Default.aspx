<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app/Site1.Master" CodeBehind="Default.aspx.vb" Inherits="ejercicio._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="main/css">
        .auto-style1 {
            width: 332px;
        }
        .auto-style2 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 36%;">
        <tr>
            <td class="auto-style1"><h3>Usuario:</h3></td>
            <td class="auto-style2">
                <asp:TextBox ID="user" runat="server" Width="281px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"><h3>Password:</h3></td>
            <td class="auto-style2">
                <asp:TextBox ID="pass" runat="server" Width="280px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="log" runat="server" Text="Ingresar" />
                <asp:Button ID="reg" runat="server" Text="Registrar" />
                <asp:Button ID="act" runat="server" Text="Actualizar" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="consulta1" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="user" Name="user" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="pass" Name="pass" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>
