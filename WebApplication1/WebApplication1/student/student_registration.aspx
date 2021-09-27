<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_registration.aspx.cs" Inherits="WebApplication1.student.student_registration" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Registration</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                       <!-- <img class="align-content" src="images/logo.png" alt="">-->
                        <p style="font-size:30px;color:white;">Rejestracja Użytkownika</p>
                    </a>
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">
                        <div class="form-group">
                            <label>Imię</label>
                            <asp:TextBox ID="firstname" runat="server"  class="form-control" placeholder="Imię"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nazwisko</label>
                            <asp:TextBox ID="lastname" runat="server"  class="form-control" placeholder="Nazwisko"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nr Enrollmentu</label>
                            <asp:TextBox ID="enrollmentno" runat="server"  class="form-control" placeholder="Nr Enrollmentu"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>NAzwa użutkownika</label>
                            <asp:TextBox ID="username" runat="server"  class="form-control" placeholder="Nazwa użytkownika"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Hasło</label>
                            <asp:TextBox ID="password" runat="server"  class="form-control" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Email</label>
                            <asp:TextBox ID="email" runat="server"  class="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Kontact</label>
                            <asp:TextBox ID="contact" runat="server"  class="form-control" placeholder="Kontact"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Zdjęcie Studenta</label>
                            <asp:FileUpload ID="f1" runat="server"></asp:FileUpload>
                        </div>

                        <asp:Button ID="b1" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Rejestruj" OnClick="b1_Click"></asp:Button>

                        <div class="social-login-content">
                            
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>

