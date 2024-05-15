<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DesignationMaster.aspx.cs" Inherits="NewSecurityERP.Masters.DesignationMaster" %>
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
                            <h5 class="card-title mb-0 flex-grow-1">Designation Master</h5>
                        </div>
                        <!-- end card header -->
                        <div class="card-body">
                            <div class="live-preview">
                                <div class="row gy-4">
                                    <div class="col-xxl-4 col-md-6">
                                        <div>
                                            <label for="txtClientCode" class="form-label">Designation Code</label>
                                           <asp:TextBox ID="txtDesignationCode" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-4 col-md-6">
                                        <div>
                                            <label for="txtClientName" class="form-label">Designation Name</label>
                                             <asp:TextBox ID="txtDesignationName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!--end col-->
                                    <div class="col-xxl-4 col-md-6">
                                        <div>
                                            <label for="txtDesignationRemark" class="form-label">Remark</label>
                                            <asp:TextBox ID="txtDesignationRemark" runat="server" CssClass="form-control" ></asp:TextBox>
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
