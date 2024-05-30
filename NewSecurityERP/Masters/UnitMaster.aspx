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
                                    <div class="row">
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtUnitCode" class="form-label">Unit Code</label>
                                                <asp:TextBox ID="txtUnitCode" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlClientName" class="form-label">Client Name</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlClientName" runat="server" class="form-select" placeholder="Select Client Name...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVClientName" runat="server"
                                                    ControlToValidate="ddlClientName" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Client Name !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtUnitName" class="form-label">Unit Name</label><span class="text-danger">*</span>
                                                <asp:TextBox ID="txtUnitName" runat="server" CssClass="form-control" placeholder="Enter Unit Name..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVUnitName" runat="server"
                                                    ControlToValidate="txtUnitName" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter Unit Name !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">ERP Unit Code</label>
                                                <asp:TextBox ID="txtErpUnitCode" runat="server" CssClass="form-control" placeholder="Enter City Name..."></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlStatus" class="form-label">Status</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select" placeholder="Select Status...">
                                                    <asp:ListItem Selected="True">--Select Status--</asp:ListItem>
                                                    <asp:ListItem>Active</asp:ListItem>
                                                    <asp:ListItem>Terminate</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVStatus" runat="server"
                                                    ControlToValidate="ddlStatus" ForeColor="Red" Display="Dynamic" InitialValue="--Select Status--"
                                                    ErrorMessage="Please Select Status!!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlState" class="form-label">State Name </label>
                                                <span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-select" placeholder="Select State Name...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVState" runat="server"
                                                    ControlToValidate="ddlState" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select State Name !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtCityName" class="form-label">City Name</label>
                                                <asp:TextBox ID="txtCityName" runat="server" CssClass="form-control" placeholder="Enter City Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtLocation" class="form-label">Location</label>
                                                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" placeholder="Enter Location..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtPinCode" class="form-label">PinCode</label>
                                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" MaxLength="6" placeholder="Enter PinCode..." onkeypress="return isNumeric(event)"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlState" class="form-label">Supervisor</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlSupervisor" runat="server" CssClass="form-select" placeholder="Select State Name...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlState" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Supervisor !!!" ValidationGroup="g1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlBranch" class="form-label">Branch </label>
                                                <span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-select" placeholder="Select Branch...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVBranch" runat="server"
                                                    ControlToValidate="ddlBranch" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Branch !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlRegionName" class="form-label">Region Name</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlRegionName" runat="server" CssClass="form-select" placeholder="Select Region Name...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVREgion" runat="server"
                                                    ControlToValidate="ddlRegionName" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Region !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="ddlOperationArea" class="form-label">Operational Area</label><span class="text-danger">*</span>
                                                <asp:DropDownList ID="ddlOperationArea" runat="server" CssClass="form-select" placeholder="Select Operational area...">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVOPArea" runat="server"
                                                    ControlToValidate="ddlOperationArea" ForeColor="Red" Display="Dynamic" InitialValue="0"
                                                    ErrorMessage="Please Select Operational Area !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtEmailID" class="form-label">Email ID</label>
                                                <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Enter Email ID...">
                                                </asp:TextBox>
                                                <asp:RegularExpressionValidator ID="REVEmailID" runat="server" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter EmailID In Correct Format !!!" ControlToValidate="txtEmailID" ValidationGroup="g1"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Contact Person 1</label>
                                                <asp:TextBox ID="txtContactPerson1" runat="server" CssClass="form-control" placeholder="Enter Contact Person Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Contact Person 2</label>
                                                <asp:TextBox ID="txtContactPerson2" runat="server" CssClass="form-control" placeholder="Enter Contact Person Name..."></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Contact Person 3</label>
                                                <asp:TextBox ID="txtContactPerson3" runat="server" CssClass="form-control" placeholder="Enter Contact Person Name..."></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Phone No 1</label>
                                                <asp:TextBox ID="txtPhoneNo1" runat="server" CssClass="form-control" MaxLength="10" placeholder="Enter Phone No..." onkeypress="return isNumeric(event)"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Phone No 2</label>
                                                <asp:TextBox ID="txtPhoneNo2" runat="server" CssClass="form-control" MaxLength="10" placeholder="Enter Phone No..." onkeypress="return isNumeric(event)"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Phone No 3</label>
                                                <asp:TextBox ID="txtPhoneNo3" runat="server" CssClass="form-control" MaxLength="10" placeholder="Enter Phone No..." onkeypress="return isNumeric(event)"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Longitude</label>
                                                <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Enter Longitude" onkeypress="return isNumeric(event)"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Please Enter Longitude" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-3 col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Latitude</label>
                                                <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Enter Latitude" onkeypress="return isNumeric(event)"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Please Enter Latitude" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-xxl-6 col-md-6">
                                            <div class="mb-3">
                                                <label for="txtAddress" class="form-label">Address</label>
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Height="38px" TextMode="MultiLine" placeholder="Enter Address..."></asp:TextBox>
                                            </div>
                                        </div>

                                        <div style="display: flex; justify-content: flex-end;">
                                            <div class="col-xxl-3 col-md-6" style="text-align: right">
                                                <div>
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Save" OnClick="btnSave_Click" ValidationGroup="g1" />
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
                                <asp:GridView ID="gvUnitMaster" runat="server" AutoGenerateColumns="False" CssClass="UnitMaster table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%" OnRowUpdating="gvUnitMaster_RowUpdating" OnRowCommand="gvUnitMaster_RowCommand">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="update" CommandArgument='<%# Eval("UnitCode")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="UnitCode" HeaderText="Unit Code " SortExpression="" />
                                        <asp:BoundField DataField="UnitName" HeaderText="Unit Name" SortExpression="" />
                                        <asp:BoundField DataField="ClientCode" HeaderText="Client Code" SortExpression="" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="" />
                                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="" />
                                        <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="" />
                                        <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="" />
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <div align="center">No records found.</div>
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
            var table = $(".UnitMaster").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
    <script>
        function isNumeric(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
