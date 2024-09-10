<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercicio2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>
    <link href="style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="box">

            <h2>Cadastro de Cliente</h2>            
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>            
            <label>Nome</label>            
            <asp:TextBox ID="txtNome" runat="server" MaxLength="50" ToolTip="Digite seu nome"></asp:TextBox>            
            <label>E-mail</label>            
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" ></asp:TextBox>           
            <label>Telefone</label>           
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <asp:Button OnClick="btnEnviar_Click" ID="btnEnviar" runat="server" Text="Enviar" />

        </div>
    </form>
</body>
</html>
