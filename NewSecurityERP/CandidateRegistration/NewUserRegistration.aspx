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
                                <ul class="nav nav-pills nav-customs nav-danger mb-3" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link active" data-bs-toggle="tab" href="#pills-bill-info" role="tab" aria-selected="false" tabindex="-1">Home</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#pills-bill-address" role="tab" aria-selected="true">Profile</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#pills-payment" role="tab" aria-selected="false" tabindex="-1">Messages</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="#pills-finish" role="tab" aria-selected="false" tabindex="-1">Settings</a>
                                    </li>
                                </ul>


                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="pills-bill-info" role="tabpanel" aria-labelledby="pills-bill-info-tab">
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
                                                                <label class="form-label">Aadhar No</label>
                                                                <asp:TextBox ID="txtAadharNo" runat="server"  MaxLength="12" MinLength="12" type="text" class="form-control" placeholder="Enter Aadhar Number" value=""></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAadharNo" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Aadhar No." SetFocusOnError="false" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtAadharNo" ID="RegularExpressionValidator1" ValidationExpression="^[0-9]{12}$" runat="server" ErrorMessage="Minimum 12 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                                                                <asp:button ID="btnCurrentData" runat="server" type="button" class="btn btn-info btn-sm mt-1" Text="Verify Current Data"></asp:button>
                                                                <asp:button ID="btnAadhar" runat="server" type="submit" class="btn btn-success btn-sm mt-1 ms-1" Text="Get OTP"></asp:button>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Aadhar OTP</label>
                                                                <input type="text" class="form-control" id="billinginfo-lastNae" placeholder="Enter OTP" value="">
                                                                <button type="button" class="btn btn-info btn-sm mt-1">Verify Aadhar Data</button>
                                                                <button type="submit" class="btn btn-success btn-sm mt-1 ms-1">View Data</button>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Name As Per Aadhar</label>
                                                                <input type="text" class="form-control" placeholder="Enter Name">
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Date of Birth As Per Aadhar</label>
                                                                <input type="date" class="form-control" placeholder="Enter DOB">
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <div class="mb-3">
                                                                <label class="form-label">Gender</label>
                                                                <select type="text" class="form-select" placeholder="Enter last name" value="">
                                                                    <option value="0" disabled="" selected="">--Select--</option>
                                                                    <option value="1">Male</option>
                                                                    <option value="2">Female</option>
                                                                </select>
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
                                                        <label class="form-label">Maritial Status</label>
                                                        <select type="text" class="form-select" placeholder="Enter last name" value="">
                                                            <option value="0" disabled="" selected="">--Select--</option>
                                                            <option value="1">Married</option>
                                                            <option value="2">UnMarried</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Father Name</label>
                                                        <input type="text" class="form-control" placeholder="Enter Father Name">
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Mother Name</label>
                                                        <input type="text" class="form-control" placeholder="Enter Mother Name">
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Spouse Name</label>
                                                        <input type="text" class="form-control" placeholder="Enter Spouse Name">
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Email-Id</label>
                                                        <input type="email" class="form-control" placeholder="Enter Email ID">
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Date of Joining</label>
                                                        <input type="date" class="form-control" placeholder="Enter Date">
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">Job Type</label>
                                                        <select type="text" class="form-select" placeholder="Enter last name" value="">
                                                            <option value="0" disabled="" selected="">--Select--</option>
                                                            <option value="1">Permanent</option>
                                                            <option value="2">Probation</option>
                                                            <option value="3">Contractual</option>
                                                            <option value="4">Trainee</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">PAN No.</label>
                                                        <input type="text" class="form-control" placeholder="Enter Pan No.">
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
                                                <asp:button ID="Button" runat="server" type="button" class="btn btn-success btn-label right ms-auto nexttab" data-nexttab="pills-bill-address-tab" ValidationGroup="Group1" Text="Proceed to Next"> </asp:button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end tab pane -->

                                    <div class="tab-pane fade" id="pills-bill-address" role="tabpanel" aria-labelledby="pills-bill-address-tab">
                                        <div>
                                            <h5 class="mb-1">Shipping Information</h5>
                                            <p class="text-muted mb-4">Please fill all information below</p>
                                        </div>

                                        <div class="mt-4">
                                            <div class="d-flex align-items-center mb-2">
                                                <div class="flex-grow-1">
                                                    <h5 class="fs-14 mb-0">Saved Address</h5>
                                                </div>
                                                <div class="flex-shrink-0">
                                                    <!-- Button trigger modal -->
                                                    <button type="button" class="btn btn-sm btn-success mb-3" data-bs-toggle="modal" data-bs-target="#addAddressModal">
                                                        Add Address
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="row gy-3">
                                                <div class="col-lg-4 col-sm-6">
                                                    <div class="form-check card-radio">
                                                        <input id="shippingAddress01" name="shippingAddress" type="radio" class="form-check-input" checked="">
                                                        <label class="form-check-label" for="shippingAddress01">
                                                            <span class="mb-4 fw-semibold d-block text-muted text-uppercase">Home Address</span>

                                                            <span class="fs-14 mb-2 d-block">Marcus Alfaro</span>
                                                            <span class="text-muted fw-normal text-wrap mb-1 d-block">4739 Bubby Drive Austin, TX 78729</span>
                                                            <span class="text-muted fw-normal d-block">Mo. 012-345-6789</span>
                                                        </label>
                                                    </div>
                                                    <div class="d-flex flex-wrap p-2 py-1 bg-light rounded-bottom border mt-n1">
                                                        <div>
                                                            <a href="#" class="d-block text-body p-1 px-2" data-bs-toggle="modal" data-bs-target="#addAddressModal"><i class="ri-pencil-fill text-muted align-bottom me-1"></i>Edit</a>
                                                        </div>
                                                        <div>
                                                            <a href="#" class="d-block text-body p-1 px-2" data-bs-toggle="modal" data-bs-target="#removeItemModal"><i class="ri-delete-bin-fill text-muted align-bottom me-1"></i>Remove</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-sm-6">
                                                    <div class="form-check card-radio">
                                                        <input id="shippingAddress02" name="shippingAddress" type="radio" class="form-check-input">
                                                        <label class="form-check-label" for="shippingAddress02">
                                                            <span class="mb-4 fw-semibold d-block text-muted text-uppercase">Office Address</span>

                                                            <span class="fs-14 mb-2 d-block">James Honda</span>
                                                            <span class="text-muted fw-normal text-wrap mb-1 d-block">1246 Virgil Street Pensacola, FL 32501</span>
                                                            <span class="text-muted fw-normal d-block">Mo. 012-345-6789</span>
                                                        </label>
                                                    </div>
                                                    <div class="d-flex flex-wrap p-2 py-1 bg-light rounded-bottom border mt-n1">
                                                        <div>
                                                            <a href="#" class="d-block text-body p-1 px-2" data-bs-toggle="modal" data-bs-target="#addAddressModal"><i class="ri-pencil-fill text-muted align-bottom me-1"></i>Edit</a>
                                                        </div>
                                                        <div>
                                                            <a href="#" class="d-block text-body p-1 px-2" data-bs-toggle="modal" data-bs-target="#removeItemModal"><i class="ri-delete-bin-fill text-muted align-bottom me-1"></i>Remove</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mt-4">
                                                <h5 class="fs-14 mb-3">Shipping Method</h5>

                                                <div class="row g-4">
                                                    <div class="col-lg-6">
                                                        <div class="form-check card-radio">
                                                            <input id="shippingMethod01" name="shippingMethod" type="radio" class="form-check-input" checked="">
                                                            <label class="form-check-label" for="shippingMethod01">
                                                                <span class="fs-20 float-end mt-2 text-wrap d-block fw-semibold">Free</span>
                                                                <span class="fs-14 mb-1 text-wrap d-block">Free Delivery</span>
                                                                <span class="text-muted fw-normal text-wrap d-block">Expected Delivery 3 to 5 Days</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-check card-radio">
                                                            <input id="shippingMethod02" name="shippingMethod" type="radio" class="form-check-input" checked="">
                                                            <label class="form-check-label" for="shippingMethod02">
                                                                <span class="fs-20 float-end mt-2 text-wrap d-block fw-semibold">$24.99</span>
                                                                <span class="fs-14 mb-1 text-wrap d-block">Express Delivery</span>
                                                                <span class="text-muted fw-normal text-wrap d-block">Delivery within 24hrs.</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <button type="button" class="btn btn-light btn-label previestab" data-previous="pills-bill-info-tab"><i class="ri-arrow-left-line label-icon align-middle fs-16 me-2"></i>Back to Personal Info</button>
                                            <button type="button" class="btn btn-primary btn-label right ms-auto nexttab" data-nexttab="pills-payment-tab"><i class="ri-bank-card-line label-icon align-middle fs-16 ms-2"></i>Continue to Payment</button>
                                        </div>
                                    </div>
                                    <!-- end tab pane -->

                                    <div class="tab-pane fade" id="pills-payment" role="tabpanel" aria-labelledby="pills-payment-tab">
                                        <div>
                                            <h5 class="mb-1">Payment Selection</h5>
                                            <p class="text-muted mb-4">Please select and enter your billing information</p>
                                        </div>

                                        <div class="row g-4">
                                            <div class="col-lg-4 col-sm-6">
                                                <div data-bs-toggle="collapse" data-bs-target="#paymentmethodCollapse.show" aria-expanded="false" aria-controls="paymentmethodCollapse">
                                                    <div class="form-check card-radio">
                                                        <input id="paymentMethod01" name="paymentMethod" type="radio" class="form-check-input">
                                                        <label class="form-check-label" for="paymentMethod01">
                                                            <span class="fs-16 text-muted me-2"><i class="ri-paypal-fill align-bottom"></i></span>
                                                            <span class="fs-14 text-wrap">Paypal</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-sm-6">
                                                <div data-bs-toggle="collapse" data-bs-target="#paymentmethodCollapse" aria-expanded="true" aria-controls="paymentmethodCollapse">
                                                    <div class="form-check card-radio">
                                                        <input id="paymentMethod02" name="paymentMethod" type="radio" class="form-check-input" checked="">
                                                        <label class="form-check-label" for="paymentMethod02">
                                                            <span class="fs-16 text-muted me-2"><i class="ri-bank-card-fill align-bottom"></i></span>
                                                            <span class="fs-14 text-wrap">Credit / Debit Card</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-4 col-sm-6">
                                                <div data-bs-toggle="collapse" data-bs-target="#paymentmethodCollapse.show" aria-expanded="false" aria-controls="paymentmethodCollapse">
                                                    <div class="form-check card-radio">
                                                        <input id="paymentMethod03" name="paymentMethod" type="radio" class="form-check-input">
                                                        <label class="form-check-label" for="paymentMethod03">
                                                            <span class="fs-16 text-muted me-2"><i class="ri-money-dollar-box-fill align-bottom"></i></span>
                                                            <span class="fs-14 text-wrap">Cash on Delivery</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="collapse show" id="paymentmethodCollapse">
                                            <div class="card p-4 border shadow-none mb-0 mt-4">
                                                <div class="row gy-3">
                                                    <div class="col-md-12">
                                                        <label for="cc-name" class="form-label">Name on card</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="Enter name">
                                                        <small class="text-muted">Full name as displayed on card</small>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <label for="cc-number" class="form-label">Credit card number</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="xxxx xxxx xxxx xxxx">
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label for="cc-expiration" class="form-label">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="MM/YY">
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label for="cc-cvv" class="form-label">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="xxx">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-muted mt-2 fst-italic">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock text-muted icon-xs">
                                                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                                                Your transaction is secured with SSL encryption
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-start gap-3 mt-4">
                                            <button type="button" class="btn btn-light btn-label previestab" data-previous="pills-bill-address-tab"><i class="ri-arrow-left-line label-icon align-middle fs-16 me-2"></i>Back to Shipping</button>
                                            <button type="button" class="btn btn-primary btn-label right ms-auto nexttab" data-nexttab="pills-finish-tab"><i class="ri-shopping-basket-line label-icon align-middle fs-16 ms-2"></i>Complete Order</button>
                                        </div>
                                    </div>
                                    <!-- end tab pane -->

                                    <div class="tab-pane fade" id="pills-finish" role="tabpanel" aria-labelledby="pills-finish-tab">
                                        <div class="text-center py-5">

                                            <div class="mb-4">
                                                <lord-icon src="https://cdn.lordicon.com/lupuorrc.json" trigger="loop" colors="primary:#0ab39c,secondary:#405189" style="width: 120px; height: 120px"></lord-icon>
                                            </div>
                                            <h5>Thank you ! Your Order is Completed !</h5>
                                            <p class="text-muted">You will receive an order confirmation email with details of your order.</p>

                                            <h3 class="fw-semibold">Order ID: <a href="apps-ecommerce-order-details.html" class="text-decoration-underline">VZ2451</a></h3>
                                        </div>
                                    </div>
                                    <!-- end tab pane -->
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


        });
    </script>



</asp:Content>



