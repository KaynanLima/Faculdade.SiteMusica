using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            //.1. Validar os dados de entrada
            if (Clear(Nome.Text) == "")
            {
                Alerta.Text = "Digite seu nome";
            }
            else if (Clear(Email.Text) == "")
            {
                Alerta.Text = "Digite seu e-mail";
            }
            else if (Clear(NomeAcesso.Text) == "")
            {
                Alerta.Text = "Digite um nome para acessar o sistema";
            }
            else if (Clear(Senha1.Text) == "") 
            {
                Alerta.Text = "Digite a senha";
            }
            else if (Clear(Senha1.Text) != Clear(Senha2.Text))
            {
                Alerta.Text = "As senhas digitadas são diferentes";
            }
            else
            {
                //2. Construir a string de conexão com o Banco de Dados
                string myAccess = Server.MapPath("~/App_Data/DBADS2024.accdb");
                string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + myAccess + ";Persist Security Info=False;";

                Datapost.DB.UTIL ut = new Datapost.DB.UTIL();


                //3. Construir comando SQL para inserir o registro na tabela usuários.
                string sql = "INSERT INTO Usuarios(Nome,Email,NomeAcesso,Senha) VALUES('" + Clear(Nome.Text) + "', '" + Clear(Email.Text) + "', '" + Clear(NomeAcesso.Text) + "', '" + ut.Encrypt(Clear(Senha1.Text)) + "')";

                //4. Enviar os dados para o banco de dados 

                Datapost.DB.DAO db = new Datapost.DB.DAO();

                db.ConnectionString = conexao;
                db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;
                db.Query(sql);

            }
        }

        protected string Clear(string valor)
        {  
            return valor.Trim(); 
        }
        
    }
}