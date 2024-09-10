﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

    <!-- Place somewhere in the <body> of your page -->
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/banner5.png" />
            </li>
            <li>
                <img src="Images/banner1.png" />
            </li>
            <li>
                <img src="Images/banner2.png" />
            </li>
            <li>
                <img src="Images/banner3.png" />
            </li>
            <li>
                <img src="Images/banner4.png" />
            </li>
        </ul>
    </div>

    <!-- <div style="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c); height: 20px;"></div> -->

    <div style="width: auto;">
        <script style="width: 100%;">
            // Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide"
                });
            });
        </script>
        <script src="https://kit.fontawesome.com/2cfa6a23a4.js" crossorigin="anonymous">
        </script>
    </div>

    <div class="row margin-top-60">
        <div class="col-3">
            <div class="box border margin-right-20" style="margin-left: 20px;">
                <div>
                    <img width="100%" src="Images/1.png" />
                </div>

                <div class="padding-14">
                    <br />
                    <h3>Prepare-se para uma experiência única!</h3>
                    <br />
                    <P>No dia 18 de outubro, contamos com 2 artistas principais e 2 atrações secretas, além de 3 DJs que prometem agitar a noite. Não perca as surpresas que preparamos para você. Está pronto para descobrir o line-up completo?
                    </p>
                </div>
            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-right-20">
                <div>
                    <img width="100%" src="Images/2.png" />
                </div>

                <div class="padding-14">
                    <br />
                    <h3>Tecnologia e criatividade a serviço da música.</h3>
                    <p>Com design inovador e interfaces interativas, trazemos a você uma experiência visual diferenciada. Do momento da compra até o show, sinta-se parte de algo maior. Avaliação de NPS em 93%, provando a satisfação do público.</p>
                </div>
            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-right-20">
                <div>
                    <img width="100%" src="Images/3.png" />
                </div>

                <div class="padding-14">
                    <br />
                    <h3>Nossa música, seu calendário.</h3>
                    <p>Com mais de 50 eventos realizados anualmente, oferecemos uma variedade de shows para todos os gostos. Acompanhamos o crescimento da música ao vivo e estamos prontos para continuar conectando fãs a artistas em todo o país.</p>
                </div>
            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-right-20">
                <div>
                    <img width="100%" src="Images/4.png" />
                </div>

                <div class="padding-14">
                    <br />
                    <h3>Crescimento e conectividade.</h3>
                    <p>Em 2025, projetamos alcançar mais de 190 mil participantes em nossos eventos, com 400 colaboradores trabalhando para tornar cada show inesquecível. Junte-se à revolução musical e venha viver essa experiência!</p>
                </div>
            </div>
        </div>

    </div>
</asp:Content>