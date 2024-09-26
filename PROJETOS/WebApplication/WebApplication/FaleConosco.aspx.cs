using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            //1. Validar os Dados
            if (Motivo.SelectedValue == "0")
            {
                Alerta.Text = "Selecione o motivo!";
            }
            else if (Nome.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu Nome";
            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu e-mail";
            }
            else if (Mensagem.Text.Trim() == "")
            {
                Alerta.Text = "Digite a mensagem";
            }
            else 
            {
                try
                {
                    //2. Construir o e-mail
                    MailMessage email = new MailMessage();
                    email.To.Add("contato@seudominio.com.br");
                    MailAddress from = new MailAddress("contato@seudominio.com.br");
                    email.From = from;
                    email.Subject = "E-mail enviado pelo form Fale Conosco.";
                    email.Body = "Motivo: " + Motivo.SelectedValue + "\n" + "Nome: " + Nome.Text + "\n" + "E-mail: " + Email.Text + "\n" + "Mensagem: " + Mensagem.Text + "\n";
                    email.IsBodyHtml = false;

                    //3. Enviar o e-mail
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "seudominio.com.br";
                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "suasenha");

                    smtp.Send(email);

                    Alerta.Text = "Seu e-mail foi enviado com sucesso";
                    Alerta.ForeColor = System.Drawing.Color.White;
                    Formulario.Visible = false;
                }
                catch (Exception)
                {
                    Alerta.Text = "HOUVE UMA FALHA AO ENVIAR O E-MAIL.";
                    Alerta.ForeColor= System.Drawing.Color.Red;
                    Formulario.Visible = false;
                }





                
            }
        }
    }
}