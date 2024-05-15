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
                                             <asp:TextBox ID="txtUnitCode" runat="server" CssClass="text_boder" Width="190px"
                                        MaxLength="15"  TabIndex="1"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="ddlClientName" class="form-label">Client Name</label>
                                            <asp:DropDownList ID="ddlClientName" runat="server" class="chosen-select">
                                </asp:DropDownList>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtUnitName" class="form-label">Unit Name</label>
                                             <asp:TextBox ID="txtUnitName" runat="server" CssClass="text_boder"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="ddlState" class="form-label">State Name </label>
                                            <asp:DropDownList ID="ddlState" runat="server" CssClass="text_boder">
                                </asp:DropDownList>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtCityName" class="form-label">City Name</label>
                                           <asp:TextBox ID="txtCityName" runat="server" CssClass="text_boder"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtLocation" class="form-label">Location</label>
                                             <asp:TextBox ID="txtLocation" runat="server" CssClass="text_boder"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <%--<div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtFaxNo" class="form-label">Fax No</label>
                                            <asp:TextBox ID="txtFaxNo" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <%--<div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtCWFAmounts" class="form-label">CWF Amounts</label>
                                            <asp:TextBox ID="txtCWFAmounts" runat="server" CssClass="form-control" placeholder="Enter CWF Amounts..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtGSTINID" class="form-label">GST ID/UniqueID </label>
                                            <asp:TextBox ID="txtGSTINID" runat="server" CssClass="form-control" placeholder="Enter GST ID..."></asp:TextBox>
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
                                            <label for="txtWebSite" class="form-label">WebSite</label>
                                            <asp:TextBox ID="txtWebSite" runat="server" CssClass="form-control" placeholder="Enter Website..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <%--<div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtRegistrationNo" class="form-label">Registration No</label>
                                            <asp:TextBox ID="txtRegistrationNo" runat="server" CssClass="form-control" placeholder="Enter Registration No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtPanNo" class="form-label">Pan No</label>
                                            <asp:TextBox ID="txtPanNo" runat="server" CssClass="form-control" placeholder="Enter Pan No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <%-- <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtTanNo" class="form-label">Tan No</label>
                                            <asp:TextBox ID="txtTanNo" runat="server" CssClass="form-control" placeholder="Enter Tan No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <%--<div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtPFEsttCode" class="form-label">PF Estt. Code</label>
                                            <asp:TextBox ID="txtPFEsttCode" runat="server" CssClass="form-control" placeholder="Enter PF Estt.Code..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtESIEsttCode" class="form-label">ESI Estt. Code</label>
                                            <asp:TextBox ID="txtESIEsttCode" runat="server" CssClass="form-control" placeholder="Enter ESI Estt.Code..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtServiceTaxNo" class="form-label">Service Tax No</label>
                                            <asp:TextBox ID="txtServiceTaxNo" runat="server" CssClass="form-control" placeholder="Enter Service Tax No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <%--<div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtLocalSaleTaxNo" class="form-label">Local Sale Tax No</label>
                                            <asp:TextBox ID="txtLocalSaleTaxNo" runat="server" CssClass="form-control" placeholder="Enter Local Sale Tax No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtInterStateTaxNo" class="form-label">State Tax No</label>
                                            <asp:TextBox ID="txtInterStateTaxNo" runat="server" CssClass="form-control" placeholder="Enter State Tax No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtCINNo" class="form-label">CIN No</label>
                                            <asp:TextBox ID="txtCINNo" runat="server" CssClass="form-control" placeholder="Enter CIN No..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <%--                                        <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtBankTransactioncharge" class="form-label">Bank Transaction charge</label>
                                            <asp:TextBox ID="txtBankTransactioncharge" runat="server" CssClass="form-control" placeholder="Enter Bank Transaction charge..."></asp:TextBox>--%>
                                    <%--   <asp:FilteredTextBoxExtender ID="txtBankTransactioncharge_FilteredTextBoxExtender" runat="server" FilterMode="ValidChars" FilterType="Numbers" InvalidChars="1234567890." TargetControlID="txtBankTransactioncharge" />--%>
                                    <%--   </div>
                                    </div>--%>
                                    <!--end col-->
                                    <%--      <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtStateCode" class="form-label">State Code</label>
                                            <asp:TextBox ID="txtStateCode" runat="server" CssClass="form-control" placeholder="Enter State Code..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <%-- <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtUdhyogAadharNo" class="form-label">Udhyog AadharNo</label>
                                            <asp:TextBox ID="txtUdhyogAadharNo" runat="server" CssClass="form-control" placeholder="Enter Udhyog AadharNo..."></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->--%>
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtReqAddress" class="form-label">Registered Address</label>
                                            <asp:TextBox ID="txtReqAddress" runat="server" CssClass="form-control" placeholder="Enter Reg. Address..." TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-3 col-md-6">
                                        <div>
                                            <label for="txtAddress" class="form-label">Address</label>
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address..." TextMode="MultiLine"></asp:TextBox><%--ontextchanged="txtAddress_TextChanged" TextMode="MultiLine" --%>
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
