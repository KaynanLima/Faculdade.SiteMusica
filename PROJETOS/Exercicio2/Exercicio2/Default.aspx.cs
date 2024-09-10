using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercicio2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //1. Validar as entradas
            if(txtNome.Text == "")
            {
                lblMensagem.Text = "Digite o nome";
            }
            else if(txtEmail.Text == "")
            {
                lblMensagem.Text = "Digite o E-mail";
            }
            else
            {
                //2. Criar o conteúdo
                
                string conteudo = txtNome.Text + "\n" + txtEmail.Text + "\n" + txtTelefone.Text + "\n" + "-------------------------------------------------------------" + "\n";
                //3. Definir o caminho para gravar o arquivo "Cadastro.txt            

                string caminho = Server.MapPath("~/Cadastro.txt");

                //4. Gravar o conteúdo no caminho físico
                //System.IO = Contém métodos para procedimentos de disco

                System.IO.File.AppendAllText(caminho, conteudo);
                
            }

        }
    }
}