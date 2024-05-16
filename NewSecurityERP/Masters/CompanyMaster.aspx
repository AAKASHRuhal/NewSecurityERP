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
                                                <label for="txtCompanyName" class="form-label">Company Name</label><span class="text-danger">*</span>
                                                <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Enter Company Name..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVCompanyName" runat="server"
                                                    ControlToValidate="txtCompanyName" ForeColor="Red" Display="Dynamic" 
                                                    ErrorMessage="Please Enter Company Name !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" MaxLength="6" Minlength="6" placeholder="Enter Pincode ..." onkeypress="return isNumeric(event)"> </asp:TextBox>
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
                                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" MaxLength="10" Minlength="10" placeholder="Enter Pnone No..." onkeypress="return isNumeric(event)"></asp:TextBox>
                                                <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPhoneNo" ID="RegularExpressionValidator5" ValidationExpression="^[0-9]{10}$" runat="server" ErrorMessage="Minimum 10 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
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
                                                <asp:RegularExpressionValidator ID="REVEmailID" runat="server" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter EmailID for Correct Format !!!" ControlToValidate="txtEmailID" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                                <label for="txtReqAddress" class="form-label">Registered Address</label><span class="text-danger">*</span>
                                                <asp:TextBox ID="txtReqAddress" runat="server" CssClass="form-control" Height="38px" placeholder="Enter Reg. Address..." TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVRegAddress" runat="server"
                                                    ControlToValidate="txtReqAddress" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter Reg. Address !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div class="col-xxl-3 col-md-6">
                                            <div>
                                                <label for="txtAddress" class="form-label">Address</label><span class="text-danger">*</span>
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Height="38px" placeholder="Enter Address..." TextMode="MultiLine"></asp:TextBox><%--ontextchanged="txtAddress_TextChanged" --%>
                                                <asp:RequiredFieldValidator ID="RFVAddresss" runat="server"
                                                    ControlToValidate="txtAddress" CssClass="error" ForeColor="Red" Display="Dynamic"
                                                    ErrorMessage="Please Enter Address !!!" ValidationGroup="g1"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <!--end col-->
                                        <div style="display: flex; justify-content: flex-end;">
                                            <div class="col-xxl-3 col-md-6" style="text-align: right">
                                                <div>
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success waves-effect waves-light" Text="Save" OnClick="btnSave_Click"  ValidationGroup="g1"/>
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
                                <asp:GridView ID="gvCompanyMaster" runat="server" CssClass="companyMaster table table-bordered dt-responsive nowrap table-striped align-middle" Width="100%" AutoGenerateColumns="false"
                                    onrowcommand="gvCompanyMaster_RowCommand" onrowdeleting="gvCompanyMaster_RowDeleting" onrowupdating="gvCompanyMaster_RowUpdating">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="compid" HeaderText="CompID " SortExpression="firstname" />
                                        <asp:BoundField DataField="compname" HeaderText="Company Name" SortExpression="lastname" />
                                        <asp:BoundField DataField="compaddress" HeaderText="Address" SortExpression="phone" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="gender" />
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="email_id" />
                                        <asp:TemplateField HeaderText="action">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="update" CommandArgument='<%# Container.DataItemIndex + 1 %>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
<%--                                                <asp:LinkButton ID="btndelete" runat="server" CssClass="link-danger fs-15" CommandName="delete" CommandArgument='<%# Eval("compid")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="delete"><i class="ri-delete-bin-line"></i></asp:LinkButton>--%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="pincode" HeaderText="PinCode" SortExpression="city" />
                                        <asp:BoundField DataField="phoneno" HeaderText="Phone" SortExpression="sad" />
                                        <asp:BoundField DataField="FaxNo" HeaderText="Fax" SortExpression="fdg" visible="false"/>
                                        <asp:BoundField DataField="Email" HeaderText="Email ID" SortExpression="asr" />
                                        <asp:BoundField DataField="website" HeaderText="Website" SortExpression="cvf" />

                                        <%-- <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>

                                                <asp:Button ID="btnChangeStatus" runat="server" OnClick="btnChangeStatus_Click" Text='<%# Eval("is_active").ToString() == "True" ? "Active" : "De Activate"  %>' CssClass='<%# Eval("is_active").ToString() == "True" ? "status-active" : "status-deactive" %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                    </Columns>
                                    <%-- <Columns>
                               <asp:TemplateField  HeaderText="SNo.">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="10px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Center" Width="10px"/>
                                    </asp:TemplateField>
                                 <asp:TemplateField HeaderText="CompanyID" >
                                        <EditItemTemplate>
                                          <asp:TextBox ID="txtCompId" runat="server" MaxLength="20" 
                                                Text='<%# Bind("compid") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCompId" runat="server" Text='<%# Eval("compid") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="50px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" Width="50px"/>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Company" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCompName" runat="server" MaxLength="20" 
                                                Text='<%# Bind("compname") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCompName" runat="server" Text='<%# Eval("compname") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="150px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"/>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCompAddress" runat="server" MaxLength="20" 
                                                Text='<%# Bind("compaddress") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCompAddress" runat="server" Text='<%# Eval("compaddress") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtstate" runat="server" MaxLength="20" 
                                                Text='<%# Bind("state") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="City" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCity" runat="server" MaxLength="20" 
                                                Text='<%# Bind("City") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PinCode" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtpincode" runat="server" MaxLength="20" 
                                                Text='<%# Bind("pincode") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblpincode" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PhoneNo" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtphoneno" runat="server" MaxLength="20" 
                                                Text='<%# Bind("phoneno") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblphoneno" runat="server" Text='<%# Eval("phoneno") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="120px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" Width="120px" />
                                    </asp:TemplateField>
                                   <%-- <asp:TemplateField HeaderText="FaxNo" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFaxNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("FaxNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblFaxNo" runat="server" Text='<%# Eval("FaxNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>--%>
                                   <%-- <asp:TemplateField HeaderText="EmailID" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="lblEmailID" runat="server" MaxLength="20" 
                                                Text='<%# Bind("Email") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmailID" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="150px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" Width="150px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="WebSite" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtWebSite" runat="server" MaxLength="20" 
                                                Text='<%# Bind("website") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblWebSite" runat="server" Text='<%# Eval("website") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Width="150px" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" Width="150px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="RegNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtRegNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("RegNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblRegNo" runat="server" Text='<%# Eval("RegNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PANNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPANNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("PANNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblPANNo" runat="server" Text='<%# Eval("PANNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TanNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTanNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("TANno") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblTanNo" runat="server" Text='<%# Eval("TANno") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="PFEstCode" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPFEstCode" runat="server" MaxLength="20" 
                                                Text='<%# Bind("PFEstCode") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblPFEstCode" runat="server" Text='<%# Eval("PFEstCode") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="ESIEstCode" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtESIEstCode" runat="server" MaxLength="20" 
                                                Text='<%# Bind("ESIEstCode") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblESIEstCode" runat="server" Text='<%# Eval("ESIEstCode") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Staxno" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStaxno" runat="server" MaxLength="20" 
                                                Text='<%# Bind("Staxno") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblStaxno" runat="server" Text='<%# Eval("Staxno") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="LocalTaxNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtLocalTaxNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("LocalTaxNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblLocalTaxNo" runat="server" Text='<%# Eval("LocalTaxNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="InterStateTaxNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtInterStateTaxNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("InterStateTaxNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblInterStateTaxNo" runat="server" Text='<%# Eval("InterStateTaxNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Req.Address" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtReqAddress" runat="server" MaxLength="20" 
                                                Text='<%# Bind("ReqAddress") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblReqAddress" runat="server" Text='<%# Eval("ReqAddress") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CINNo" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCINNo" runat="server" MaxLength="20" 
                                                Text='<%# Bind("CINNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCINNo" runat="server" Text='<%# Eval("CINNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SalaryTypeDisplayK" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSalaryTypeDisplayK" runat="server" MaxLength="20" 
                                                Text='<%# Bind("SalaryTypeDisplayK") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblSalaryTypeDisplayK" runat="server" Text='<%# Eval("SalaryTypeDisplayK") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SalaryTypeDisplayG" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSalaryTypeDisplayG" runat="server" MaxLength="20" 
                                                Text='<%# Bind("SalaryTypeDisplayG") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblSalaryTypeDisplayG" runat="server" Text='<%# Eval("SalaryTypeDisplayG") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DeductionMappingWith" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDeductionMappingWith" runat="server" MaxLength="20" 
                                                Text='<%# Bind("DeductionMappingWith") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblDeductionMappingWith" runat="server" Text='<%# Eval("DeductionMappingWith") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="YearlyEL" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYearlyEL" runat="server" MaxLength="20" 
                                                Text='<%# Bind("YearlyEL") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblYearlyEL" runat="server" Text='<%# Eval("YearlyEL") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="YearlyCL" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblYearlyCL" runat="server" Text='<%# Eval("YearlyCL") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="YearlySL" Visible="false" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYearlySL" runat="server" MaxLength="20" 
                                                Text='<%# Bind("YearlySL") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblYearlySL" runat="server" Text='<%# Eval("YearlySL") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ClassGv"/>
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="CWF Amount" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblCWFAmount" runat="server" Text='<%# Eval("CompCWF") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField HeaderText="GSTINNo" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblGSTINNo" runat="server" Text='<%# Eval("GSTINNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="CompStateCode" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblCompStateCode" runat="server" Text='<%# Eval("CompStateCode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="BankChargeDedAmt" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblBankChargeDedAmt" runat="server" Text='<%# Eval("BankChargeDedAmt") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="MSMEDRegNo" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblMSMEDRegNo" runat="server" Text='<%# Eval("MSMEDRegNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="UdhyogAadharNo" Visible="false" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblUdhyogAadharNo" runat="server" Text='<%# Eval("UdhyogAadharNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit" >
                                    <ItemTemplate>--%>
<%--                                    <asp:ImageButton ID="cmdEditRemark" runat="server" CommandName="update" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" ImageUrl="~/images/edit.png" CausesValidation="false" />--%>                                    
                                   <%-- <asp:LinkButton ID="btnedit" CssClass="me-2 link-success fs-15" runat="server" CommandName="update" CommandArgument='<%# Eval("compid")%>' data-bs-toggle="tooltip" data-bs-placement="bottom" title="edit"><i class="ri-edit-2-line"></i></asp:LinkButton>
                                    </ItemTemplate>
                                     <HeaderStyle HorizontalAlign="Center" Width="50px" Height="22px"  CssClass="ClassGv"/>
                                    <ItemStyle HorizontalAlign="Center"  Width="50px" />
                                    </asp:TemplateField>

                                 </Columns>--%>
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
            var table = $(".companyMaster").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
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
