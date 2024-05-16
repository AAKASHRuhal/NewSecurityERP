<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UnitMaster.aspx.cs" Inherits="NewSecurityERP.Masters.UnitMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content overflow-hidden">

        <div class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header align-items-center d-flex">
                                <h5 class="card-title mb-0 flex-grow-1">Unit Master</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="live-preview">
                                    <div class="row gy-4">
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtUnitCode" class="form-label">Unit Code</label>
                                                <asp:TextBox ID="txtUnitCode" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlClientName" class="form-label">Client Name</label>
                                                <asp:DropDownList ID="ddlClientName" runat="server" class="form-control" placeholder="Select Client Name...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtUnitName" class="form-label">Unit Name</label>
                                                <asp:TextBox ID="txtUnitName" runat="server" CssClass="form-control" placeholder="Enter Unit Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlState" class="form-label">State Name </label>
                                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" placeholder="Select State Name...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtCityName" class="form-label">City Name</label>
                                                <asp:TextBox ID="txtCityName" runat="server" CssClass="form-control" placeholder="Enter City Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtLocation" class="form-label">Location</label>
                                                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" placeholder="Enter Location..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <labePinCodel for="txtPinCode" class="form-label">PinCode</labePinCodel>
                                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="Enter PinCode..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtSupervisor" class="form-label">Supervisor</label> 
                                                <asp:TextBox ID="txtSupervisor" runat="server" CssClass="form-control" placeholder="Enter Supervisor..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlESIZone" class="form-label">ESI Zone </label>
                                                <asp:DropDownList ID="ddlESIZone" runat="server" CssClass="form-control" placeholder="Select ESI Zone...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlBranch" class="form-label">Branch </label>
                                                <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control" placeholder="Select Branch...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlPFZone" class="form-label">PF Zone</label>
                                                <asp:DropDownList ID="ddlPFZone" runat="server" CssClass="form-control" placeholder="Select PF Zone...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlRegionName" class="form-label">Region Name</label>
                                                <asp:DropDownList ID="ddlRegionName" runat="server" CssClass="form-control" placeholder="Select Region Name...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtEmailID" class="form-label">Email ID</label>
                                                <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Enter Email ID...">
                                                </asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailID"
                                                    CssClass="error" Display="None"
                                                    ErrorMessage="Please Enter Correct Email-ID" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                <%-- <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                                </asp:ValidatorCalloutExtender>--%>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlOperationArea" class="form-label">Operational Area</label>
                                                <asp:DropDownList ID="ddlOperationArea" runat="server" CssClass="form-control" placeholder="Select Operational area...">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtWebSite" class="form-label">Website</label>
                                                <asp:TextBox ID="txtWebSite" runat="server" CssClass="form-control" placeholder="Enter Website..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtContactPerson" class="form-label">Contact Person</label>
                                                <asp:TextBox ID="txtContactPerson" runat="server" CssClass="form-control" placeholder="Enter Contact..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtPhoneNo" class="form-label">Phone No</label>
                                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" placeholder="Enter Phone No..."></asp:TextBox>
                                                <%--<asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtPhoneNo"
                                    FilterType="Custom" FilterMode="InvalidChars" InvalidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*_+=-/{}[]|\/?<>:;'" />--%>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlStatus" class="form-label">Status</label>
                                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control" placeholder="Select Status...">
                                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                                    <asp:ListItem>Active</asp:ListItem>
                                                    <asp:ListItem>Terminate</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtPANno" class="form-label">Pan No</label>
                                                <asp:TextBox ID="txtPANno" runat="server" CssClass="form-control" placeholder="Enter Pan No..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <%-- <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtTANno" class="form-label">Tan No</label>
                                                 <asp:TextBox ID="txtTANno" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>--%>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtGSTINID" class="form-label">GSTID/UniqueID</label>
                                                <asp:TextBox ID="txtGSTINID" runat="server" CssClass="form-control" placeholder="Enter GSTID..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtStateCode" class="form-label">StateCode</label>
                                                <asp:TextBox ID="txtStateCode" runat="server" CssClass="form-control" placeholder="Enter StateCode..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtAddress" class="form-label">Address</label>
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Address..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div style="display: flex; justify-content: flex-end;">
                                            <div class="col-xxl-3 col-md-6" style="text-align: right">
                                                <div>
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Save" /><%--OnClick="btnSave_Click"--%>
                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger waves-effect waves-light" Text="Clear" /><%--OnClick="btnCancel_Click"
                                                    --%>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header align-items-center d-flex">
                                <h5 class="card-title mb-0 flex-grow-1">Gridview</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavaScript" runat="server">
</asp:Content>
