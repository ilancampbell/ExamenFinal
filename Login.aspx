<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Riteve.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        body{background-color:beige}
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
            height: 1007px;
        }
        .auto-style4 {
            color: #FF3300;
            font-size: large;
        }
        .auto-style5 {
            color: #3366FF;
            font-size: large;
        }
        .auto-style6 {
            color: #0066FF;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><br />
            <img alt="Inicio | Riteve RTV" src="https://www.rtv.co.cr/wp-content/uploads/LogoRiteve-1.png" /><br />
            </strong>
            <br />
            <span class="auto-style5"><strong>&nbsp;Incie sesion:</strong></span><span class="auto-style4"><br />
            <br />
            </span><span class="auto-style6"><strong>Usuario</strong></span><span class="auto-style4">:
            <asp:TextBox ID="tusuario" runat="server" BackColor="White" BorderColor="#FF3300" ForeColor="#0000CC"></asp:TextBox>
            <br />
            <br />
            </span><span class="auto-style5">
            <strong>Clave</strong></span><span class="auto-style4">:
            <asp:TextBox ID="tclave" runat="server" BackColor="White" BorderColor="Red" ForeColor="#0000CC"></asp:TextBox>
            <br />
            <br />
            <br />
            <strong>
            <asp:Button ID="bingresar" runat="server" BackColor="#CC9900" BorderColor="#66FF99" ForeColor="White" OnClick="bingresar_Click" Text="Ingresar" Height="45px" Width="146px" />
            <br />
            <br />
            <asp:Label ID="lbl" runat="server" ForeColor="#66CCFF"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="Siempre Seguros | Riteve RTV" src="https://www.rtv.co.cr/wp-content/uploads/logoSiempreSeguros.png" /><br />
            </strong>
            <br />
            </span><strong><span class="auto-style4">
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RiteveConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            </span></strong></div>
    </form>
</body>
</html>
