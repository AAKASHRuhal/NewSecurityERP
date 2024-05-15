<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NewUserRegistration.aspx.cs" Inherits="NewSecurityERP.CandidateRegistration.NewUserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content overflow-hidden">
        <div class="page-content">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                            <h4 class="mb-sm-0">Checkout</h4>
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Ecommerce</a></li>
                                    <li class="breadcrumb-item active">Checkout</li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body checkout-tab">
                                <!-- Tabs Start -->
                                <ul class="nav nav-pills arrow-navtabs nav-success bg-light mb-3" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link active" data-bs-toggle="tab" id="personal-details-tab" href="#personal-details" role="tab" aria-selected="false" tabindex="-1">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-home-variant"></i></span>
                                            <span class="d-none d-sm-block">Personal Detail</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#communication-details" role="tab" aria-selected="false" tabindex="-1">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-account"></i></span>
                                            <span class="d-none d-sm-block">Comm Detail</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#add-family" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Add Family</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#add-employment" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Add Employment</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#physical-details" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Physical Detail</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#add-experience" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Add Experience</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#guarantor-details" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Guarantor Detail</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#gunman-details" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Gunman Detail</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#add-document" role="tab" aria-selected="false">
                                            <span class="d-block d-sm-none"><i class="mdi mdi-email"></i></span>
                                            <span class="d-none d-sm-block">Add Document</span>
                                        </a>
                                    </li>
                                </ul>
                                <!-- Tabs End -->


                                <div class="tab-content">
                                    <!-- Personnal Details Tab Panel start -->
                                    <div class="tab-pane fade active show" id="personal-details" role="tabpanel" aria-labelledby="personal-details-tab">
                                        <div>
                                            <h5 class="mb-1">Personnal Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>

                                        <div>
                                            <div class="row">
                                                <div class="col-lg-9">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Registration ID</label>
                                                                <asp:TextBox ID="txtRegistrationID" runat="server" type="text" class="form-control" disabled=""></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Aadhar No</label><span class="text-danger">*</span>
                                                                <asp:TextBox ID="txtAadharNo" runat="server" MaxLength="12" MinLength="12" type="text" class="form-control" placeholder="Enter Aadhar Number" value="" onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAadharNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Aadhar No." SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAadharNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Aadhar No." SetFocusOnError="true" ValidationGroup="GroupAadhar"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtAadharNo" ID="RegularExpressionValidator1" ValidationExpression="^[0-9]{12}$" runat="server" ErrorMessage="Minimum 12 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                <asp:Button ID="btnCurrentData" runat="server" type="button" class="btn btn-info btn-sm mt-1" ValidationGroup="GroupAadhar" Text="Verify Current Data"></asp:Button>
                                                                <asp:Button ID="btnAadhar" runat="server" type="submit" class="btn btn-success btn-sm mt-1 ms-1" ValidationGroup="GroupAadhar" Text="Get OTP"></asp:Button>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Aadhar OTP</label><span class="text-danger">*</span>
                                                                <asp:TextBox ID="txtOTP" runat="server" type="text" MaxLength="6" MinLength="6" class="form-control" placeholder="Enter OTP" value="" onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOTP" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Aadhar OTP" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtOTP" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Aadhar OTP" SetFocusOnError="true" ValidationGroup="GroupOTP"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtOTP" ID="RegularExpressionValidator6" ValidationExpression="^[0-9]{6}$" runat="server" ErrorMessage="Enter 6 Digit OTP" ForeColor="Red"></asp:RegularExpressionValidator>
                                                                <asp:Button ID="btnSubmitOTP" runat="server" type="button" class="btn btn-info btn-sm mt-1" ValidationGroup="GroupOTP" Text="Verify Aadhar Data"></asp:Button>
                                                                <asp:Button ID="btnShowAadhar" runat="server" type="submit" class="btn btn-success btn-sm mt-1 ms-1" Text="View Data"></asp:Button>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Name As Per Aadhar</label><span class="text-danger">*</span>
                                                                <asp:TextBox ID="txtCandidateName" runat="server" type="text" class="form-control" placeholder="Enter Name"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCandidateName" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Name" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Date of Birth As Per Aadhar</label><span class="text-danger">*</span>
                                                                <asp:TextBox ID="txtDateofBirth" runat="server" type="date" class="form-control" placeholder="Enter DOB"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDateofBirth" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter DOB" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Gender</label><span class="text-danger">*</span>
                                                                <asp:DropDownList ID="ddlGender" runat="server" type="text" class="form-select" placeholder="Enter last name" value="">
                                                                    <asp:ListItem Value="0" disabled="" Selected="true">--Select--</asp:ListItem>
                                                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                                                    <asp:ListItem Value="2">Female</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlGender" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" InitialValue="0" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="mb-4">
                                                                <h5 class="fs-14 mb-2 text-center">Candidate Image</h5>
                                                                <div class="text-center">
                                                                    <div class="position-relative d-inline-block">
                                                                        <div class="position-absolute top-100 start-100 translate-middle">
                                                                            <label for="product-image-input" class="mb-0" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Select Image" data-bs-original-title="Select Image">
                                                                                <div class="avatar-xs">
                                                                                    <div class="avatar-title bg-light border rounded-circle text-muted cursor-pointer">
                                                                                        <i class="ri-image-fill"></i>
                                                                                    </div>
                                                                                </div>
                                                                            </label>
                                                                            <input class="form-control d-none" value="" id="product-image-input" type="file" accept="image/png, image/gif, image/jpeg">
                                                                        </div>
                                                                        <div class="avatar-lg">
                                                                            <div class="avatar-title bg-light rounded">
                                                                                <img src="" id="product-img" class="avatar-md h-auto">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Maritial Status</label><span class="text-danger">*</span>
                                                        <asp:DropDownList ID="ddlMarried" runat="server" type="text" class="form-select" placeholder="Enter last name" value="">
                                                            <asp:ListItem Value="0" disabled="" Selected="True">--Select--</asp:ListItem>
                                                            <asp:ListItem Value="1">Married</asp:ListItem>
                                                            <asp:ListItem Value="2">UnMarried</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlMarried" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" SetFocusOnError="true" InitialValue="0" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Father Name</label><span class="text-danger">*</span>
                                                        <asp:TextBox ID="txtFatherName" runat="server" type="text" class="form-control" placeholder="Enter Father Name"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtFatherName" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Father Name" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Mother Name</label>
                                                        <asp:TextBox ID="txtMotherName" runat="server" type="text" class="form-control" placeholder="Enter Mother Name"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Spouse Name</label>
                                                        <asp:TextBox ID="txtSpouse" runat="server" type="text" class="form-control" placeholder="Enter Spouse Name"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Email-Id</label>
                                                        <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Enter Email ID"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Date of Joining</label><span class="text-danger">*</span>
                                                        <asp:TextBox ID="txtDoj" runat="server" type="date" class="form-control" placeholder="Enter Date"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDoj" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter DOJ" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Job Type</label><span class="text-danger">*</span>
                                                        <asp:DropDownList ID="ddlJobType" runat="server" type="text" class="form-select" placeholder="Enter last name" value="">
                                                            <asp:ListItem Value="0" disabled="" Selected="True">--Select--</asp:ListItem>
                                                            <asp:ListItem Value="1">Permanent</asp:ListItem>
                                                            <asp:ListItem Value="2">Probation</asp:ListItem>
                                                            <asp:ListItem Value="3">Contractual</asp:ListItem>
                                                            <asp:ListItem Value="4">Trainee</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlJobType" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" SetFocusOnError="true" InitialValue="0" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">PAN No.</label>
                                                        <asp:TextBox ID="txtPANNo" runat="server" type="text" class="form-control" placeholder="Enter Pan No."></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Previous UAN.</label>
                                                        <asp:RadioButtonList ID="RadioButtonUAN" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                            <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                            <asp:ListItem Selected="True">No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3" id="colUAN">
                                                    <div class="mb-3">
                                                        <label class="form-label">UAN No.</label>
                                                        <asp:TextBox ID="txtUAN" runat="server" type="text" class="form-control" placeholder="Enter UAN No."></asp:TextBox>
                                                    </div>
                                                </div>


                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Previous ESI</label>
                                                        <asp:RadioButtonList ID="RadioButtonESI" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                            <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                            <asp:ListItem Selected="True">No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3" id="colESI">
                                                    <div class="mb-3">
                                                        <label class="form-label">ESI No.</label>
                                                        <asp:TextBox ID="txtESI" runat="server" type="text" class="form-control" placeholder="Enter ESI No."></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex align-items-start gap-3 mt-3">
                                                <asp:Button ID="Button" runat="server" type="button" class="btn btn-success right ms-auto nexttab" ValidationGroup="Group1" Text="Proceed to Next"></asp:Button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Personnal Details Tab Panel End -->

                                    <!-- Comminication Details Tab Panel End -->
                                    <div class="tab-pane fade" id="communication-details" role="tabpanel" aria-labelledby="communication-details-tab">
                                        <div>
                                            <h5 class="mb-1">Communication Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>

                                        <div class="row">
                                            <div class="col-xxl-6">
                                                <div class="card custom-shadow">
                                                    <div class="card-header align-items-center d-flex">
                                                        <h4 class="card-title mb-0 flex-grow-1">Present Address</h4>
                                                    </div>
                                                    <!-- end card header -->
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Village/House No</label>
                                                                    <asp:TextBox ID="txtVillHouseNo" runat="server" type="text" class="form-control" placeholder="Enter your House No."></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Street / Sector / Post Office</label>
                                                                    <asp:TextBox ID="txtPostOffice" runat="server" type="text" class="form-control" placeholder="Enter Street/PostOffice..."></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Police Station</label>
                                                                    <asp:TextBox ID="txtPoliceStation" runat="server" type="text" class="form-control" placeholder="Enter Police Station"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">State</label><span class="text-danger">*</span>
                                                                    <asp:DropDownList ID="ddlState" runat="server" class="form-select"></asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlState" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" SetFocusOnError="true" InitialValue="0" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">District</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtDistrict" runat="server" type="text" class="form-control" placeholder="Enter District"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtDistrict" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter District" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Tehsil</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtTehsilPre" runat="server" type="text" class="form-control" placeholder="Enter Tehsil"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtTehsilPre" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Tehsil" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">City</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtCity" runat="server" type="text" class="form-control" placeholder="Enter City"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCity" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter City" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">PinCode</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtPinCodePre" runat="server" type="text" class="form-control" MaxLength="6" MinLength="6" placeholder="Enter PinCode" onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtPinCodePre" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter PinCode" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPinCodePre" ID="RegularExpressionValidator7" ValidationExpression="^[0-9]{6}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Mobile No</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtMobileNo" runat="server" type="text" MaxLength="10" MinLength="10" class="form-control" placeholder="Enter Mobile No." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtMobileNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter PinCode" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtMobileNo" ID="RegularExpressionValidator5" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Phone No</label>
                                                                    <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="10" MinLength="10" type="text" class="form-control" placeholder="Enter Phone No." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPhoneNo" ID="RegularExpressionValidator4" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->

                                            <div class="col-xxl-6">
                                                <div class="card custom-shadow">
                                                    <div class="card-header align-items-center d-flex">
                                                        <h4 class="card-title mb-0 flex-grow-1">Permanent Address</h4>
                                                        <div class="flex-shrink-0">
                                                            <div class="flex-shrink-0">
                                                                <div class="form-check form-switch form-switch-right form-switch-md">
                                                                    <label for="default" class="form-label text-muted">Same As Present Address</label>
                                                                    <input class="form-check-input code-switcher" type="checkbox" id="default">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end card header -->
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Village/House No</label>
                                                                    <asp:TextBox ID="txtVillHouseNoPer" runat="server" type="text" class="form-control" placeholder="Enter your House No."></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Street / Sector / Post Office</label>
                                                                    <asp:TextBox ID="txtPostOfficePer" runat="server" type="text" class="form-control" placeholder="Enter Street/PostOffice..."></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Police Station</label>
                                                                    <asp:TextBox ID="txtPoliceStationPer" runat="server" type="text" class="form-control" placeholder="Enter Police Station"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">State</label><span class="text-danger">*</span>
                                                                    <asp:DropDownList ID="ddlStatePer" runat="server" class="form-select"></asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlStatePer" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" SetFocusOnError="true" InitialValue="0" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">District</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtDistrictPer" runat="server" type="text" class="form-control" placeholder="Enter District"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtDistrictPer" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter District" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Tehsil</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtTehsilPer" runat="server" type="text" class="form-control" placeholder="Enter Tehsil"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtTehsilPer" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Tehsil" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <!--end col-->
                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">City</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtCityPer" runat="server" type="text" class="form-control" placeholder="Enter City"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtCityPer" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter City" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">PinCode</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtPinCodePer" runat="server" type="text" MaxLength="6" MinLength="6" class="form-control" placeholder="Enter PinCode"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtPinCodePer" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter PinCode" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPinCodePer" ID="RegularExpressionValidator8" ValidationExpression="^[0-9]{6}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Mobile No</label><span class="text-danger">*</span>
                                                                    <asp:TextBox ID="txtMobileNoPer" runat="server" type="text" MaxLength="10" MinLength="10" class="form-control" placeholder="Enter Mobile No." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtMobileNoPer" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter PinCode" SetFocusOnError="true" ValidationGroup="Communication"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtMobileNoPer" ID="RegularExpressionValidator2" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-3">
                                                                    <label class="form-label">Phone No</label>
                                                                    <asp:TextBox ID="txtPhoneNoPer" runat="server" type="text" MaxLength="10" MinLength="10" class="form-control" placeholder="Enter Phone No." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPhoneNoPer" ID="RegularExpressionValidator3" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
                                        </div>


                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnNextComm" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" ValidationGroup="Communication" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Communication Details Tab Panel End -->

                                    <!-- Add Family Details Tab Panel End -->
                                    <div class="tab-pane fade" id="add-family" role="tabpanel" aria-labelledby="add-family-tab">
                                        <div>
                                            <h5 class="mb-1">Add Family Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Name</label><span class="text-danger">*</span>
                                                    <asp:TextBox ID="txtCanFamMemName" runat="server" type="text" class="form-control" placeholder="Enter Father Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtCanFamMemName" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Family Member Name" SetFocusOnError="true" ValidationGroup="Family"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Relation with Candidate</label><span class="text-danger">*</span>
                                                    <asp:TextBox ID="txtRelation" runat="server" type="text" class="form-control" placeholder="Enter Mother Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtRelation" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Relation" SetFocusOnError="true" ValidationGroup="Family"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Date of Birth</label><span class="text-danger">*</span>
                                                    <asp:TextBox ID="txtDOBFamMem" runat="server" type="date" class="form-control" placeholder="Enter Date"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtDOBFamMem" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Family Member DOB" SetFocusOnError="true" ValidationGroup="Family"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Address</label>
                                                    <asp:TextBox ID="txtFamMemAddress" runat="server" type="text" class="form-control" placeholder="Enter Address"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Mobile No</label><span class="text-danger">*</span>
                                                    <asp:TextBox ID="txtMbNo" runat="server" type="text" MaxLength="10" MinLength="10" class="form-control" placeholder="Enter Mobile No." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtMbNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter PinCode" SetFocusOnError="true" ValidationGroup="Family"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtMbNo" ID="RegularExpressionValidator10" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Residing With Him/Her</label>
                                                    <asp:RadioButtonList ID="rblFamilyResiding" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Is Dependent</label>
                                                    <asp:RadioButtonList ID="rblFamilyDependent" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">PFNominee</label>
                                                    <asp:RadioButtonList ID="rblPFNominee" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnFamilyNext" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" ValidationGroup="Family" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Family Details Tab Panel End -->

                                    <!-- Add Employment Details Tab Panel End -->
                                    <div class="tab-pane fade" id="add-employment" role="tabpanel" aria-labelledby="add-employment-tab">
                                        <div>
                                            <h5 class="mb-1">Add Employment Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Client Name</label>
                                                    <asp:DropDownList ID="ddlClientName" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Unit Name</label>
                                                    <asp:DropDownList ID="ddlUnitName" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Branch Name</label>
                                                    <asp:DropDownList ID="ddlBranchName" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Applied Designation</label>
                                                    <asp:DropDownList ID="ddlDesignation" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">ESI Zone</label>
                                                    <asp:DropDownList ID="ddlESIZone" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Zonal Office</label><span class="text-danger">*</span>
                                                    <asp:DropDownList ID="ddlZonalOffice" runat="server" class="form-select"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Is Rejoin </label>
                                                    <asp:RadioButtonList ID="rblRegion" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Yes &nbsp &nbsp</asp:ListItem>
                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3" id="colISRejoin">
                                                <div class="mb-3">
                                                    <label class="form-label">Old Employee Code</label>
                                                    <asp:TextBox ID="txtOldEmployeeCode" runat="server" type="text" class="form-control" placeholder="Enter Old Employee Code"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnAddEmployement" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" ValidationGroup="Employeement" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Employment Details Tab Panel End -->

                                    <!-- Add Physical Details Tab Panel Start -->
                                    <div class="tab-pane fade" id="physical-details" role="tabpanel" aria-labelledby="physical-details-tab">
                                        <div>
                                            <h5 class="mb-1">Add Physical Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Height (cm.)</label>
                                                    <asp:TextBox ID="txtHeight" runat="server" type="text" MaxLength="5" class="form-control" placeholder="Enter Height"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Weight (kg.)</label>
                                                    <asp:TextBox ID="txtWeight" runat="server" type="text" MaxLength="5" class="form-control" placeholder="Enter Weight"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Color</label>
                                                    <asp:TextBox ID="txtColour" runat="server" type="text" class="form-control" placeholder="Enter Color"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Blood Group</label>
                                                    <asp:DropDownList ID="ddlPhysicalBloodGroup" runat="server" CssClass="form-select">
                                                        <asp:ListItem disabled="">Select</asp:ListItem>
                                                        <asp:ListItem>A+</asp:ListItem>
                                                        <asp:ListItem>A-</asp:ListItem>
                                                        <asp:ListItem>A1+</asp:ListItem>
                                                        <asp:ListItem>A1-</asp:ListItem>
                                                        <asp:ListItem>A1B+</asp:ListItem>
                                                        <asp:ListItem>A1B-</asp:ListItem>
                                                        <asp:ListItem>A2+</asp:ListItem>
                                                        <asp:ListItem>A2-</asp:ListItem>
                                                        <asp:ListItem>A2B+</asp:ListItem>
                                                        <asp:ListItem>A2B-</asp:ListItem>
                                                        <asp:ListItem>B+</asp:ListItem>
                                                        <asp:ListItem>B-</asp:ListItem>
                                                        <asp:ListItem>AB+</asp:ListItem>
                                                        <asp:ListItem>AB-</asp:ListItem>
                                                        <asp:ListItem>O+</asp:ListItem>
                                                        <asp:ListItem>O-</asp:ListItem>
                                                        <asp:ListItem Selected="True">Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Chest</label>
                                                    <div class="d-flex">
                                                        <asp:TextBox ID="txtChestNormal" runat="server" type="text" class="form-control" placeholder="Normal"></asp:TextBox>
                                                        <asp:TextBox ID="txtChestExpanded" runat="server" type="text" class="form-control" placeholder="Expanded"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Current Status of Illness</label>
                                                    <asp:TextBox ID="txtillnessStatus" runat="server" type="text" class="form-control" placeholder="Normal"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Current Status of Illness</label>
                                                    <asp:TextBox ID="txtIdentityMarks" runat="server" type="text" TextMode="MultiLine" Height="36px" class="form-control" placeholder="Normal"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnPhysicalDetails" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" ValidationGroup="Physical" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Physical Details Tab Panel Start -->

                                    <!-- Add Experience Details Tab Panel Start -->
                                    <div class="tab-pane fade" id="add-experience" role="tabpanel" aria-labelledby="add-experience-tab">
                                        <div>
                                            <h5 class="mb-1">Add Experience Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Previous Company Name</label>
                                                    <asp:TextBox ID="txtPreviousCompany" runat="server" type="text" class="form-control" placeholder="Enter Previous Company Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Previous Employer's ESI Code</label>
                                                    <asp:TextBox ID="txtPreviousEmployerESI" runat="server" type="text" class="form-control" placeholder="Enter Previous ESI Code"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Location/Place</label>
                                                    <asp:TextBox ID="txtPreviousLocation" runat="server" type="text" class="form-control" placeholder="Enter Location"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Designation</label>
                                                    <asp:TextBox ID="txtPreviousDesignation" runat="server" type="text" class="form-control" placeholder="Enter Designation"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Joining Date</label>
                                                    <asp:TextBox ID="txtPreviousJoinDate" runat="server" type="date" class="form-control" placeholder="Enter Joining Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Resignation Date</label>
                                                    <asp:TextBox ID="txtPreviousLeftDate" runat="server" type="date" class="form-control" placeholder="Enter Resignation Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Last Salary Drawn</label>
                                                    <asp:TextBox ID="txtLastDrawnSalary" runat="server" type="text" class="form-control" placeholder="Enter Last Salary"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnExperienceNext" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Experience Details Tab Panel Start -->

                                    <!-- Add Guarantor Details Tab Panel Start -->
                                    <div class="tab-pane fade" id="guarantor-details" role="tabpanel" aria-labelledby="guarantor-details-tab">
                                        <div>
                                            <h5 class="mb-1">Add Guarantor Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div>
                                                    <h5 class="fs-14 mb-3 text-muted">Guarantor 1</h5>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Name</label>
                                                                <asp:TextBox ID="txtNameG1" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Name"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Father Name</label>
                                                                <asp:TextBox ID="txtFatherNameG1" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Father Name"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Mobile No.</label>
                                                                <asp:TextBox ID="txtMobileNoG1" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Mobile No."></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Address</label>
                                                                <asp:TextBox ID="txtAddressG1" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Address"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="border mt-3 border-dashed"></div>

                                                <div class="mt-4">
                                                    <h6 class="mb-3 fs-14 text-muted">Guarantor 2</h6>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Name</label>
                                                                <asp:TextBox ID="txtNameG2" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Name"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Father Name</label>
                                                                <asp:TextBox ID="txtFatherNameG2" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Father Name"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Mobile No.</label>
                                                                <asp:TextBox ID="txtMobileNoG2" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Mobile No."></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="mb-3">
                                                                <label class="form-label">Guarantor Address</label>
                                                                <asp:TextBox ID="txtAddressG2" runat="server" type="text" class="form-control" placeholder="Enter Guarantor Address"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnGurantorNext" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Guarantor Details Tab Panel Start -->

                                    <!-- Add Gunman Details Tab Panel Start -->
                                    <div class="tab-pane fade" id="gunman-details" role="tabpanel" aria-labelledby="gunman-details-tab">
                                        <div>
                                            <h5 class="mb-1">Add Gunman Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Licence No.</label>
                                                    <asp:TextBox ID="txtLicenceNo" runat="server" type="text" class="form-control" placeholder="Enter Licence Number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Licence Name</label>
                                                    <asp:TextBox ID="txtLicenceName" runat="server" type="text" class="form-control" placeholder="Enter Licence Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Weapon No.</label>
                                                    <asp:TextBox ID="txtWeponNo" runat="server" type="text" class="form-control" placeholder="Enter Weapon Number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Weapon type</label>
                                                    <asp:DropDownList ID="ddlWeaponType" runat="server" CssClass="form-select">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Rifal</asp:ListItem>
                                                        <asp:ListItem Value="2">Pistol</asp:ListItem>
                                                        <asp:ListItem Value="3">Others</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Ammunition Stock</label>
                                                    <asp:TextBox ID="txtAmmuniStock" runat="server" type="text" class="form-control" placeholder="Enter Ammunition Stock"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Issuing Authority</label>
                                                    <asp:TextBox ID="txtissuingAuth" runat="server" type="text" class="form-control" placeholder="Enter Issuing Authority"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Licence Issue Date</label>
                                                    <asp:TextBox ID="txtIssueDate" runat="server" type="date" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mb-3">
                                                    <label class="form-label">Valid Upto</label>
                                                    <asp:TextBox ID="txtValidUpto" runat="server" type="date" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Licence Address</label>
                                                    <asp:TextBox ID="txtLicAddress" runat="server" type="text" TextMode="MultiLine" class="form-control" placeholder="Enter Licence Address Here..."></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <asp:Button ID="btnGunmanNext" runat="server" type="submit" class="btn btn-success right ms-auto nexttab" data-nexttab="pills-payment-tab" Text="Proceed To Next"></asp:Button>
                                        </div>
                                    </div>
                                    <!-- Add Gunman Details Tab Panel Start -->

                                    <!-- Add Document Details Tab Panel Start -->
                                    <div class="tab-pane fade" id="add-document" role="tabpanel" aria-labelledby="add-document-tab">
                                        <div>
                                            <h5 class="mb-1">Add Document Details</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>
                                    </div>
                                    <!-- Add Document Details Tab Panel Start -->

                                </div>
                                <!-- end tab content -->
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->

            </div>
            <!-- container-fluid -->
        </div>
        <!-- End Page-content -->
    </div>



    <script>
        $(document).ready(function () {


            $("#colUAN").addClass("d-none");
            $("#<%= RadioButtonUAN.ClientID %> input[type='radio']").change(function () {
                if ($(this).val() === "No") {
                    $("#colUAN").addClass("d-none");
                    $("#<%= txtUAN.ClientID %>").val("");
                } else {
                    $("#colUAN").removeClass("d-none");
                }
            });


            $("#colESI").addClass("d-none");
            $("#<%= RadioButtonESI.ClientID %> input[type='radio']").change(function () {
                if ($(this).val() === "No") {
                    $("#colESI").addClass("d-none");
                    $("#<%= txtESI.ClientID %>").val("");
                } else {
                    $("#colESI").removeClass("d-none");
                }
            });

            $("#colISRejoin").addClass("d-none");
            $("#<%= rblRegion.ClientID %> input[type='radio']").change(function () {
                if ($(this).val() === "No") {
                    $("#colISRejoin").addClass("d-none");
                    $("#<%= txtESI.ClientID %>").val("");
                } else {
                    $("#colISRejoin").removeClass("d-none");
                }
            });


        });
    </script>

    <script>
        function isNumeric(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>



</asp:Content>



