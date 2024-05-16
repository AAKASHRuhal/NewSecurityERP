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
                                                <label for="txtDesignationCode" class="form-label">Designation Code</label>
                                                <asp:TextBox ID="txtDesignationCode" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-4 col-md-6">
                                            <div>
                                                <label for="txtDesignationName" class="form-label">Designation Name</label><span class="text-danger">*</span>
                                                <asp:TextBox ID="txtDesignationName" runat="server" CssClass="form-control" placeholder="Enter Designation Name..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVDesignation" runat="server"
                                                    ControlToValidate="txtDesignationName" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter Designation Name !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-4 col-md-6">
                                            <div>
                                                <label for="txtDesignationRemark" class="form-label">Remark</label>
                                                <asp:TextBox ID="txtDesignationRemark" runat="server" CssClass="form-control" placeholder="Enter Remark..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div style="display: flex; justify-content: flex-end;">
                                            <div class="col-xxl-3 col-md-6" style="text-align: right">
                                                <div>
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Save" OnClick="btnSave_Click" validationGroup="g1"/>
                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger waves-effect waves-light" Text="Clear" OnClick="btnCancel_Click" />

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
                            <div class="card-body">
                                <asp:GridView ID="gvDesignationMaster" runat="server" AutoGenerateColumns="False" CssClass="companyMaster table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%"
                                    DataKeyNames="Desicode"
                                    EmptyDataText="No Record Found"
                                    OnRowCommand="gvDesignationMaster_RowCommand" OnRowDeleting="gvDesignationMaster_RowDeleting"
                                    OnRowUpdating="gvDesignationMaster_RowUpdating">
                                    <%--OnPageIndexChanging="gvDesignationMaster_PageIndexChanging"--%>
                                    <%--  <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast"
                            PreviousPageText="Previous" />
                        <PagerStyle CssClass="gridview" />--%>
                                    <EmptyDataRowStyle CssClass="fnt_val" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SNo.">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" Width="50px" CssClass="ClassGv" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DesignationCode">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDesicode" runat="server" MaxLength="20" Text='<%# Bind("Desicode") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="llbDesicode" runat="server" Text='<%# Eval("Desicode") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" Width="50px" CssClass="ClassGv" />
                                            <ItemStyle HorizontalAlign="Left" Width="50px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DesignationName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDesiName" runat="server" MaxLength="20" Text='<%# Bind("Desiname") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesiName" runat="server" Text='<%# Eval("Desiname") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" Width="250px" CssClass="ClassGv" />
                                            <ItemStyle HorizontalAlign="Left" Width="250px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DesignationRemark">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemark" runat="server" MaxLength="20" Text='<%# Bind("Remark") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" runat="server" Text='<%# Eval("Remark") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv" />
                                            <ItemStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <%-- <asp:ImageButton ID="cmdEditRemark" runat="server" CommandName="update" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                        ImageUrl="~/images/edit.png" CausesValidation="false" />--%>

                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" Width="50px" Height="22px" CssClass="ClassGv" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="ClassGv" Font-Bold="False" Font-Names="Arial" Font-Size="11px"
                                        ForeColor="Black" HorizontalAlign="Center" />
                                </asp:GridView>
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
