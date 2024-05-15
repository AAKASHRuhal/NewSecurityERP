<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientMaster.aspx.cs" Inherits="NewSecurityERP.Masters.ClientMaster" %>

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
                                <h5 class="card-title mb-0 flex-grow-1">Client Master</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="live-preview">
                                    <div class="row gy-4">
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtClientCode" class="form-label">Client Code</label>
                                                <asp:TextBox ID="txtClientCode" runat="server" CssClass="form-control" Enabled="False">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtClientName" class="form-label">Client Name</label>
                                                <asp:TextBox ID="txtClientName" runat="server" CssClass="form-control" placeholder="Enter Client Name..." onBlur="lblnull();"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtPhoneNo" class="form-label">PhoneNo</label>
                                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" placeholder="Enter Pnone No..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtEmailID" class="form-label">Email ID</label>
                                                <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Enter Email ID..."></asp:TextBox>
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
                                                <label for="txtPinCode" class="form-label">PinCode </label>
                                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="Enter Pincode ..."> </asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtWebSite" class="form-label">WebSite</label>
                                                <asp:TextBox ID="txtWebSite" runat="server" CssClass="form-control" placeholder="Enter Website..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtState" class="form-label">State Name</label>
                                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter State Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtAddress" class="form-label">Head Office</label>
                                                 <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Placeholder="Enter Head Office..." TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtAddress1" class="form-label">Address</label>
                                                <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" Placeholder="Enter Address..." TextMode="MultiLine"></asp:TextBox><%--OnKeyPress="return chkAlpha();"--%>
                                        </div>
                                             </div>
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtRemark" class="form-label">Remarks</label>
                                                <asp:TextBox ID="txtRemark" runat="server" CssClass="form-control" Placeholder="Enter Remarks..." TextMode="MultiLine"></asp:TextBox>
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
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavaScript" runat="server">
</asp:Content>
