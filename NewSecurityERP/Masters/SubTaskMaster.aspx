<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SubTaskMaster.aspx.cs" Inherits="NewSecurityERP.Masters.SubTaskMaster" %>

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
                                <h5 class="card-title mb-0 flex-grow-1">Sub Task Master</h5>
                            </div>
                            <!-- end card header -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Sub Task Code</label>
                                            <asp:TextBox ID="txtSubTaskCode" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Task Name</label><span class="text-danger">*</span>
                                            <asp:DropDownList ID="ddlTaskName" runat="server" CssClass="form-select" AutoPostBack="false"></asp:DropDownList> 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTaskName" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Select a value" InitialValue="0" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                     <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Sub Task Name</label><span class="text-danger">*</span>
                                            <asp:TextBox ID="txtSubTaskName" runat="server" CssClass="form-control" placeholder="Enter Sub Task Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubTaskName" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Enter Sub Task Name" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Sub Task Question</label><span class="text-danger">*</span>
                                            <asp:TextBox ID="txtSubTaskQues" runat="server" CssClass="form-control" placeholder="Enter Sub Task Question"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubTaskQues" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Enter Sub Task Question" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Question Type</label><span class="text-danger">*</span>
                                            <asp:DropDownList ID="ddlQuesType" runat="server" CssClass="form-select" AutoPostBack="false">
                                                <asp:ListItem Selected="True" disabled="" Value="0">--Select--</asp:ListItem>
                                                <asp:ListItem Value="Yes/No">Yes/No</asp:ListItem>
                                                <asp:ListItem Value="Text">Text</asp:ListItem>
                                                <asp:ListItem Value="Comparative">Comparative</asp:ListItem>
                                            </asp:DropDownList> 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlQuesType" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Select a value" InitialValue="0" ValidationGroup="Group1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Is Image Required</label>
                                            <asp:RadioButtonList ID="rblImage" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="1">Yes &nbsp &nbsp </asp:ListItem>
                                                <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Is Audio Required</label>
                                            <asp:RadioButtonList ID="rblAudio" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="1">Yes &nbsp &nbsp </asp:ListItem>
                                                <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>

                                     <div class="col-md-3">
                                        <div class="mb-3">
                                            <label class="form-label">Is Video Required</label>
                                            <asp:RadioButtonList ID="rblVideo" runat="server" AutoPostBack="false" CssClass="form-control" Height="36px" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="1">Yes &nbsp &nbsp </asp:ListItem>
                                                <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                            </asp:RadioButtonList>
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
                                <asp:GridView ID="gvSubTaskMaster" runat="server" AutoGenerateColumns="False" CssClass="SubTaskMaster table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%"
                                    OnRowCommand="gvSubTaskMaster_RowCommand" ShowHeader="true" ShowHeaderWhenEmpty="true">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="EditSubTask" CommandArgument='<%# Eval("SubTaskCode")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="SubTaskCode" HeaderText="Sub Task Code " SortExpression="" />
                                        <asp:BoundField DataField="Taskname" HeaderText="Task Name" SortExpression="" />
                                        <asp:BoundField DataField="SubTaskName" HeaderText="Sub Task Name" SortExpression="" />
                                        <asp:BoundField DataField="SubTaskQues" HeaderText="Sub Task Question" SortExpression="" />
                                        <asp:BoundField DataField="SubTaskType" HeaderText="Question Type" SortExpression="" />
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
            var table = $(".SubTaskMaster").prepend($("<thead></thead>").append($(".SubTaskMaster").find("tr:first"))).DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
</asp:Content>
