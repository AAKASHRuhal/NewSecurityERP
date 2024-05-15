<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewSecurityERP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable" data-theme="default" data-theme-colors="default">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sign In | NewSecurityERP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="New Security ERP Dashboard" name="description" />
    <meta content="Canticle" name="author" />


    <script src="/assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="/assets/css/custom.min.css" rel="stylesheet" type="text/css" />
    <style>
    .message_alert {
            width: 30%;
            position: fixed;
            top: 0;
            z-index: 100000;
            padding: 0px;
            font-size: 15px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- auth-page wrapper -->
        <div class="auth-page-wrapper auth-bg-cover py-5 d-flex justify-content-center align-items-center min-vh-100">
            <div class="bg-overlay"></div>
            <!-- auth-page content -->
            <div class="auth-page-content overflow-hidden pt-lg-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card overflow-hidden card-bg-fill galaxy-border-none">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="p-lg-5 p-4 auth-one-bg h-100">
                                            <div class="bg-overlay"></div>
                                            <div class="position-relative h-100 d-flex flex-column">
                                                <div class="mb-4">
                                                    <a href="index.html" class="d-block">
                                                        <%--<img src="/assets/img/logo-light.png" alt="" height="18" />--%>
                                                    </a>
                                                </div>
                                                <div class="mt-auto">
                                                    <div class="mb-3">
                                                        <i class="ri-double-quotes-l display-4 text-success"></i>
                                                    </div>

                                                    <div id="qoutescarouselIndicators" class="carousel slide" data-bs-ride="carousel">
                                                        <div class="carousel-indicators">
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                                        </div>
                                                        <div class="carousel-inner text-center text-white-50 pb-5">
                                                            <div class="carousel-item active">
                                                                <p class="fs-15 fst-italic">" Great! Clean code, clean design, easy for customization. Thanks very much! "</p>
                                                            </div>
                                                            <div class="carousel-item">
                                                                <p class="fs-15 fst-italic">" The theme is really great with an amazing customer support."</p>
                                                            </div>
                                                            <div class="carousel-item">
                                                                <p class="fs-15 fst-italic">" Great! Clean code, clean design, easy for customization. Thanks very much! "</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end carousel -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end col -->

                                    <div class="col-lg-6">
                                        <div class="p-lg-5 p-4">
                                            <div>
                                                <h5 class="text-primary">Welcome To Jupiter !</h5>
                                                <p class="text-muted">Sign in to continue to Jupiter.</p>
                                            </div>

                                            <div class="mt-4">
                                                <div class="mb-3">
                                                    <label for="ddlCompany" class="form-label">Company</label><span class="text-danger">*</span>
                                                    <asp:DropDownList ID="ddlCompany" class="form-select" runat="server" AutoPostBack="false">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RFVCompany" runat="server" ControlToValidate="ddlCompany" ForeColor="Red"
                                                        InitialValue="0" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please select a Company !!!"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="username" class="form-label">Username</label><span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="txtUserName" placeholder="Enter username" runat="server" />
                                                    <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtUserName"
                                                        ErrorMessage="Please Enter the user Name !!!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="mb-3">
                                                    <%--<div class="float-end">
                                                        <a href="auth-pass-reset-cover.html" class="text-muted">Forgot password?</a>
                                                    </div>--%>
                                                    <label class="form-label" for="txtPassword">Password</label><span class="text-danger">*</span>
                                                    <div class="position-relative auth-pass-inputgroup mb-3">
                                                        <input type="password" class="form-control pe-5 password-input" placeholder="Enter password" runat="server" id="txtPassword" />
                                                        <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon material-shadow-none" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                                            ErrorMessage="Please Enter the Password !!!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="mt-4">
                                                    <button class="btn btn-success w-100" type="submit" onclick="Login()">Sign In</button><%--Save()--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end col -->
                                </div>
                                <!-- end row -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end auth page content -->

            <!-- footer -->
            <footer class="footer galaxy-border-none">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <p class="mb-0">
                                    &copy;
                                <script>document.write(new Date().getFullYear())</script>
                                    Crafted with <i class="mdi mdi-heart text-danger"></i>by CanticleIndia
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- end Footer -->
        </div>
        <!-- end auth-page-wrapper -->
    </form>


    <!-- JAVASCRIPT -->
    <script src="/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="/assets/libs/node-waves/waves.min.js"></script>
    <script src="/assets/libs/feather-icons/feather.min.js"></script>
    <script src="/assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <%--<script src="/assets/js/plugins.js"></script>--%>
    <script type='text/javascript' src="/assets/libs/choice/choices.min.js"></script>
    <script type='text/javascript' src="/assets/libs/flatpickr/flatpickr.min.js"></script>

    <!-- password-addon init -->
    <script src="/assets/js/pages/password-addon.init.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        function Login() {

            debugger;
            var txtUserName = $('#txtUserName').val();
            var txtPassword = $('#txtPassword').val();
            var companyId = $("#<%=ddlCompany.ClientID%>").val();

            if (txtUserName != "" && txtPassword != "") {
                $.ajax({

                    type: 'POST',
                    url: 'Default.aspx/login_btn_Click',
                    method: 'post',
                    data: '{"userId":"' + txtUserName + '","password":"' + txtPassword + '","companyId":"' + companyId + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: 'json',
                    async: false,
                    success: function (response) {
                        debugger;

                        var data = response.d;
                        //if (data == "/CandidateRegistration/EmployeeRegistration.aspx") {
                        //    window.location.href = '/CandidateRegistration/EmployeeRegistration.aspx';
                        //}
                        //alert(data);

                        if (data == "/Dashboard.aspx") {
                            window.location.href = data;
                        }
                        else if (data == "/APIDashboard.aspx") {
                            window.location.href = data;
                        }
                        else if (data != "success") {
                            alert(data)
                        }

                    },
                });
            }
        }
        function Save() {
            
            var Company = document.getElementById("<%=ddlCompany.ClientID %>").value;
            if (Company == '0') {
                ShowMessage("Please Select the Company .", "Error")
                return false;
            }
            var BName = document.getElementById("<%=txtUserName.ClientID %>").value;
            if (BName == '') {
                ShowMessage("Please Enter username Name .", "Error")
                return false;
            }
             debugger;



             debugger;
            Login();
         }
        function ShowMessage(message, messagetype) {
            var css;
            switch (messagetype) {
                case 'Success':
                    css = 'alert-success'
                    break;
                case 'Error':
                    css = 'alert-danger'
                    break;
                default:
                    css = 'alert-success'
            }
            $('#alert').append('<div id="alert" style="margin:0 0.5%; -webkit-box-shadow:3px 4px 6px #999;" class="alert alert-dismissible show fade '
                + css + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>'
                + messagetype + ': </strong><span>' + message + '</span></div>');
            setTimeout(function () {
                $('.alert').alert('close');
            }, 5000); 
        }
    </script>
     <div style="position: absolute; right: 455px">
        <div class="message_alert" id="alert"></div>
    </div>
</body>
</html>
