<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeMaster.aspx.cs" Inherits="NewSecurityERP.Masters.EmployeeMaster" %>

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
                                <h5 class="card-title mb-0 flex-grow-1">Employee Master</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="live-preview">
                                    <div class="row gy-4">
                                        <%-- <div class="col-xxl-4 col-md-6">
                                            <div>
                                                <label for="txtEmpCode" class="form-label">Employee Id</label>
                                                <asp:TextBox ID="txtEmpCode" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->--%>
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="row">
                                                <!-- First column with 75% width on medium screens and full width on extra-large screens -->
                                                <div class="col-md-9 col-xxl-9">
                                                    <div>
                                                        <label for="txtEmpCode" class="form-label">Employee Code</label>
                                                        <asp:TextBox ID="txtEmpCode" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <!-- Second column with 25% width on medium screens and full width on extra-large screens -->
                                                <div class="col-md-3 col-xxl-3" style="margin-top: 27px; margin-left: -12px;">
                                                    <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn btn-success waves-effect waves-light" OnClick="btnShow_Click" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtEmpName" class="form-label">Employee Name</label>
                                                <asp:TextBox ID="txtEmpName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlStatus" class="form-label">Status</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select" placeholder="Select Status...">
                                                    <asp:ListItem Selected="True">--Select Status--</asp:ListItem>
                                                    <asp:ListItem>Active</asp:ListItem>
                                                    <asp:ListItem>InActive</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVStatus" runat="server"
                                                    ControlToValidate="ddlStatus" ForeColor="Red" Display="Dynamic" InitialValue="--Select Status--"
                                                    ErrorMessage="Please Select Status!!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtEmpFName" class="form-label">Father Name</label>
                                                <asp:TextBox ID="txtEmpFName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlGender" class="form-label">Gender</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlGender" runat="server" type="text" class="form-select" placeholder="" value="">
                                                    <asp:ListItem Value="0" disabled="" Selected="true">--Select--</asp:ListItem>
                                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVGender" runat="server" ControlToValidate="ddlGender" Display="Dynamic" ForeColor="Red" ErrorMessage="Select a value" InitialValue="0" SetFocusOnError="true" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtContact" class="form-label">Contact No</label>
                                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtdoj" class="form-label">Date of Joining</label>
                                                <asp:TextBox ID="txtdoj" runat="server" Type="date" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtdol" class="form-label">Date Of Leaving</label>
                                                <asp:TextBox ID="txtdol" runat="server" Type="date" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlBranch" class="form-label">Branch </label>
                                                <span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-select" placeholder="Select Branch...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVBranch" runat="server" ControlToValidate="ddlBranch" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Branch !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlDepartment" class="form-label">Department </label>
                                                <span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select" placeholder="Select Department...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVDepartment" runat="server" ControlToValidate="ddlDepartment" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Department !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="ddlDesignation" class="form-label">Designation </label>
                                                <span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-select" placeholder="Select Designation...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVDesignation" runat="server" ControlToValidate="ddlDesignation" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Designation !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="chkSupervisor" class="form-label">IS Supervisor </label>
                                                <asp:CheckBox ID="chkSupervisor" runat="server" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div style="display: flex; justify-content: flex-end;">
                                            <div class="col-xxl-3 col-md-6" style="text-align: right">
                                                <div>
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Save" OnClick="btnSave_Click" ValidationGroup="g1" />
                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger waves-effect waves-light" OnClick="btnCancel_Click" Text="Clear" />

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
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <asp:GridView ID="gvEMPMaster" runat="server" AutoGenerateColumns="False" CssClass="EmployeeMaster table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%"
                                    OnRowCommand="gvEMPMaster_RowCommand" ShowHeader="true" ShowHeaderWhenEmpty="true">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="EditTask" CommandArgument='<%# Eval("EmpCode")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Empcode" HeaderText="Employee Code " SortExpression="" />
                                        <asp:BoundField DataField="Empname" HeaderText="Employee Name" SortExpression="" />
                                      <%--  <asp:BoundField DataField="Empname" HeaderText="Employee Name" SortExpression="" />
                                        <asp:BoundField DataField="Empname" HeaderText="Employee Name" SortExpression="" />
                                        <asp:BoundField DataField="Empname" HeaderText="Employee Name" SortExpression="" />--%>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <div align="center">No data available in table</div>
                                    </EmptyDataTemplate>
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
    <script type="text/javascript">
    $(document).ready(function () {           
        var table = $(".EmployeeMaster").prepend($("<thead></thead>").append($(".EmployeeMaster").find("tr:first"))).DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        });
    });
    </script>
</asp:Content>
