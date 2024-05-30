<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UnitWiseTaskManagment.aspx.cs" Inherits="NewSecurityERP.Transaction.UnitWiseTaskManagment" %>

<%@ Register TagPrefix="asp" Namespace="Saplin.Controls" Assembly="DropDownCheckBoxes" %>

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
                                <h5 class="card-title mb-0 flex-grow-1">Unitwise Task Management</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="row">

                                    <asp:HiddenField ID="HiddenFieldID" runat="server" Value="0" />

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label">Branch</label><span class="text-danger">*</span>
                                            <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-select" AutoPostBack="false"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlBranch" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Select a value" InitialValue="0" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label">Unit</label><span class="text-danger">*</span>
                                            <asp:DropDownList ID="ddlUnit" runat="server" CssClass="form-select" AutoPostBack="false"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlUnit" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Select a value" InitialValue="0" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label">Task</label><span class="text-danger">*</span>
                                            <asp:DropDownList ID="ddlTask" runat="server" CssClass="form-select" OnSelectedIndexChanged="ddlTask_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlTask" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Select a value" InitialValue="0" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label class="form-label">Questions</label><span class="text-danger">*</span>
                                            <asp:DropDownCheckBoxes ID="ddlTaskQuestion" runat="server" AutoPostBack="false" UseSelectAllNode="True">
                                            </asp:DropDownCheckBoxes>                                           
                                        </div>
                                    </div>

                                    <div class="hstack gap-2 justify-content-end">
                                        <asp:Button ID="ClearBtn" type="button" runat="server" OnClick="ClearBtn_Click" Text="Clear" class="btn btn-danger"></asp:Button>
                                        <asp:Button ID="SaveBtn" type="button" runat="server" OnClick="SaveBtn_Click" Text="Save" ValidationGroup="Group1" class="btn btn-success"></asp:Button>
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
                                <asp:GridView ID="gvUnitWiseTask" runat="server" AutoGenerateColumns="False" CssClass="UnitWiseTask table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%"
                                    OnRowCommand="gvUnitWiseTask_RowCommand" ShowHeader="true" ShowHeaderWhenEmpty="true">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="EditUnitWiseTask" CommandArgument='<%# Eval("ID")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="BranchName" HeaderText="Branch Name " SortExpression="" />
                                        <asp:BoundField DataField="unitname" HeaderText="Unit Name" SortExpression="" />
                                        <asp:BoundField DataField="Taskname" HeaderText="Task Name" SortExpression="" />
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
            var table = $(".UnitWiseTask").prepend($("<thead></thead>").append($(".UnitWiseTask").find("tr:first"))).DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>

</asp:Content>
