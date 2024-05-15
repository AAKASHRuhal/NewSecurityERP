<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CompanyMaster.aspx.cs" Inherits="NewSecurityERP.Masters.CompanyMaster" %>

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
                                <h5 class="card-title mb-0 flex-grow-1">Company Master</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="live-preview">
                                    <div class="row gy-4">
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtCompanyCode" class="form-label">Company Code</label>
                                                <asp:TextBox ID="txtCompanyCode" runat="server" CssClass="form-control" Enabled="False">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtCompanyName" class="form-label">Company Name</label>
                                                <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Enter Company Name..." onBlur="lblnull();"></asp:TextBox>
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
                                                <label for="txtState" class="form-label">State Name</label>
                                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter State Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtPhoneNo" class="form-label">PhoneNo</label>
                                                <%--  <div class="form-icon">--%>
                                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" placeholder="Enter Pnone No..."></asp:TextBox>
                                                <%-- </div>--%>
                                            </div>
                                        </div>
                                        <!--end col-->

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
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtPanNo" class="form-label">Pan No</label>
                                                <asp:TextBox ID="txtPanNo" runat="server" CssClass="form-control" placeholder="Enter Pan No..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtCINNo" class="form-label">CIN No</label>
                                                <asp:TextBox ID="txtCINNo" runat="server" CssClass="form-control" placeholder="Enter CIN No..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->

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
                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger waves-effect waves-light" Text="Clear" /><%--OnClick="btnCancel_Click" --%>
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
                                <div class="table-responsive dt-responsive">
                                    <asp:GridView ID="gridview" runat="server" CssClass="companyMaster table table-striped table-bordered" Width="100%" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="No Record Found !" >
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr. No.">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="text-center" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="firstname" HeaderText="Firstname " SortExpression="firstname" />
                                            <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
                                            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                                            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                            <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />

                                            <%-- <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>

                                                <asp:Button ID="btnChangeStatus" runat="server" OnClick="btnChangeStatus_Click" Text='<%# Eval("is_active").ToString() == "True" ? "Active" : "De Activate"  %>' CssClass='<%# Eval("is_active").ToString() == "True" ? "status-active" : "status-deactive" %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>--%>


                                            <%--<asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnviewreport" CssClass="me-2" runat="server" CommandName="update" CommandArgument='<%# Eval("room_master_tableID")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="fa-solid fa-pen-nib"></i></asp:LinkButton>
                                                <asp:LinkButton ID="button_invoice" runat="server" CommandName="delete" CommandArgument='<%# Eval("room_master_tableID")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="delete"><i class="fa-solid fa-trash-can"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavaScript" runat="server">
        <script type="text/javascript">
        $(document).ready(function () {
            var table = $(".companyMaster").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
        </script>
</asp:Content>
