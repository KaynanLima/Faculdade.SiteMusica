<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="WebApplication.CadastroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server" class="imagemFundo">

    <div>
        <div class="row fundo" style="padding-top:60px;">
            <div class="col-6">
                <div class="box border padding-14 transparente fundo">
                    <h2>Cadastro de Usuário</h2>
                    <br />
                    <asp:Label ID="Alerta" runat="server" style="color:red;" Text="" FontSize="16px"></asp:Label>
                    <br />

                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLength="255" runat="server"></asp:TextBox>

                    <label>Email</label>
                    <asp:TextBox ID="Email" MaxLength="255" TextMode="Email" runat="server"></asp:TextBox>

                    <label>Nome de Acesso</label>
                    <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>

                    <label>Senha</label>
                    <asp:TextBox ID="Senha1" MaxLength="255" runat="server" TextMode="Password"></asp:TextBox>
             
                    <label>Repita a Senha</label>
                    <asp:TextBox ID="Senha2" MaxLength="255" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" />
                 
                </div>
            </div>
        </div>
    </div>


</asp:Content>

