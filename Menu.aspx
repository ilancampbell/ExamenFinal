<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Riteve.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{background-color:beige}
        .auto-style1 {
            text-align: center;
            color: #0000FF;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 426px;
        }
        .auto-style4 {
            height: 426px;
            width: 635px;
        }
        .auto-style5 {
            width: 635px;
        }
        .auto-style6 {
            margin-left: 68px;
        }
        .auto-style7 {
            height: 112px;
            width: 1041px;
            margin-left: 0px;
            margin-top: 8px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Menu<br />
            </strong>
            <img alt="Ciudadanos optan por las inspecciones voluntarias | Riteve RTV" class="auto-style7" src="https://www.rtv.co.cr/wp-content/uploads/slider07.jpg" /><table class="auto-style2">
                <tr>
                    <td class="auto-style4"><strong>Usuarios</strong><br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RiteveConnectionString2 %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style3"><strong>Placas</strong><br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style6" DataKeyNames="IdPlaca" DataSourceID="SqlDataSource2" Width="588px">
                            <Columns>
                                <asp:BoundField DataField="IdPlaca" HeaderText="IdPlaca" InsertVisible="False" ReadOnly="True" SortExpression="IdPlaca" />
                                <asp:BoundField DataField="NumPlaca" HeaderText="NumPlaca" SortExpression="NumPlaca" />
                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" />
                                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RiteveConnectionString3 %>" SelectCommand="SELECT * FROM [Placa]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="bagregar" runat="server" BackColor="#66FF66" OnClick="Button1_Click" Text="Agregar" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Modificar" />
&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="#FF3300" Text="Borrar" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" BackColor="#66FF66" Text="Agregar" />
&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="Modificar" />
&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="Red" Text="Borrar" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
