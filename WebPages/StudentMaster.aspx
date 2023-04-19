<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PrivateMasterPage.master" AutoEventWireup="true" CodeFile="StudentMaster.aspx.cs" Inherits="WebPages_StudentMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <br />
    <div class="container">
        <div class="row" runat="server" visible="false" id="divStudentMaster">

            <div class="col-md-12" style="border: 3px solid #565029; border-width: initial; border-radius: 12px; padding: 20px; background-color: #ffffff3b; box-shadow: -16px 15px 19px -6px rgb(0 0 0 / 18%)">
                <div class="row">
                    <asp:Label ID="lblstudentmaster" runat="server" Text="Student Master" Font-Size="25pt" ForeColor="#565029" Font-Bold="true" Style="font-size: 40px; padding-left: 32%; font-family: -webkit-body;"></asp:Label>
                </div>
                <hr />
                <br />
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2 ">
                        <asp:Button ID="btnview" runat="server" Text="VIEW" OnClick="btnview_Click" CausesValidation="false" />
                    </div>
                </div>

                <br />

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4 " style="width: 70%">
                        <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblregno" runat="server" Text="Registration Number :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtregno" runat="server" placeholder=" Enter Registration Number" CssClass="form-control" Width="64%" MaxLength="10"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                            FilterType="UpperCaseLetters,Numbers" ValidChars=" ."
                            TargetControlID="txtregno">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Registration Number" ControlToValidate="txtregno"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4 " style="width: 70%">
                        <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblname" runat="server" Text="Full Name :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtname" runat="server" placeholder=" Enter Full Name" CssClass="form-control" Width="64%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Full Name" ControlToValidate="txtname"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4 " style="width: 70%">
                        <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblphno" runat="server" Text="Phone Number :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtphno" runat="server" placeholder=" Enter Phone Number" CssClass="form-control" Width="64%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Phone Number" ControlToValidate="txtphno"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4  " style="width: 70%">
                        <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblemail" runat="server" Text="Email-Id :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtemail" runat="server" placeholder=" Enter Email-Id" CssClass="form-control" Width="64%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Email-Id" ControlToValidate="txtemail"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2 "></div>
                    <div class="col-md-4 " style="width: 70%">
                        <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblPassword" runat="server" Text="Password :" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" CssClass="form-control" Width="64%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter user password" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <br />
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="50%" OnClick="btnsubmit_Click" />

                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnreset" runat="server" Text="Reset" Width="50%" OnClick="btnreset_Click" CausesValidation="false" />
                    </div>

                </div>

            </div>
        </div>

        <br />


        <div class="row" runat="server" visible="true" id="divViewStudent">

            <div class="col-md-12" style="border: 3px solid #565029; border-width: initial; border-radius: 12px; padding: 20px; overflow-x: scroll; background-color: #ffffff3b; box-shadow: -16px 15px 19px -6px rgb(0 0 0 / 18%)">
                <div class="row">
                    <div class="col-md-12 com-xs-12" style="text-align: center; font-family: -webkit-body;">
                        <asp:Label ID="lblviewstudent" runat="server" Text="VIEW STUDENT MASTER" Font-Size="25pt" ForeColor="#565029" Font-Bold="true"></asp:Label>
                    </div>
                </div>
                <hr />
                <br />

                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2 ">
                        <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" CausesValidation="false" />
                    </div>
                </div>

                <br />


                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblregno1" runat="server" Text="Registration Number:" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtregno1" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Registration Number" ControlToValidate="txtregno1"></asp:RequiredFieldValidator>
                    </div>


                    <div class="col-md-2 aligntext1 ">
                        <asp:Label ID="Label13" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblname1" runat="server" Text="Name :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtname1" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtname1"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label15" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblphno1" runat="server" Text="Phone Number :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtphno1" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Phone Number" ControlToValidate="txtphno1"></asp:RequiredFieldValidator>
                    </div>


                    <div class="col-md-2 aligntext1 ">
                        <asp:Label ID="Label17" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblemail1" runat="server" Text="Email-Id :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtemail1" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Email-Id" ControlToValidate="txtemail1"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblshow" runat="server" Text="Show :" Font-Bold="true"></asp:Label>
                    </div>

                    <asp:DropDownList ID="ddlShowTop" runat="server" Width="44px" Height="27px">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem Selected="true">10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <br />

                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2 ">
                        <asp:Button ID="btnsearch" runat="server" Text="SEARCH" OnClick="btnsearch_Click" />

                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnrefresh" runat="server" Text="Refresh" Width="50%" OnClick="btnrefresh_Click" CausesValidation="false" />
                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-md-4" align="left"></div>
                    <div class="col-md-4" align="center">
                        <asp:Label ID="lblCount" runat="server" Font-Bold="true" Text="0 records found"></asp:Label>
                    </div>
                    <div class="col-md-4" align="left"></div>

                </div>

                <asp:GridView ID="gvstudent" runat="server" AutoGenerateColumns="False" CssClass="Admingridtable1" EmptyDataText="No Records Found!!!" Width="64%" EnableModelValidation="True" OnRowCommand="gvstudent_RowCommand">

                    <Columns>
                        <asp:TemplateField HeaderText="Sl.No">
                            <ItemTemplate>
                                <asp:Label ID="slno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEdt" runat="server" CausesValidation="false" CommandName="cmdEdit" CommandArgument='<%# Eval("Reg_MID") %>' OnClientClick="return confirm('Are you sure you want to Edit? '); aspnetForm.target ='_self'"><i class="fa fa-edit" style="color:#563a09; font-size:1.5em;Width:15px"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Reg No">
                            <ItemTemplate>
                                <asp:Label ID="lblGregno" runat="server" Text='<%# Eval("Reg_RegNo") %>' Style="word-break: break-all; word-wrap: break-word" Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="lblGname" runat="server" Text='<%# Eval("Reg_Name") %>' Style="word-break: break-all; word-wrap: break-word" Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Phone Number">
                            <ItemTemplate>
                                <asp:Label ID="lblGContactNumber" runat="server" Text='<%# Eval("Reg_Contact") %>' Width="150px"> </asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email-Id">
                            <ItemTemplate>
                                <asp:Label ID="lblGEmailId" runat="server" Text='<%# Eval("Reg_Email") %>' Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Role">
                            <ItemTemplate>
                                <asp:Label ID="lblGRole" runat="server" Text='<%# Eval("Reg_Role") %>' Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Class">
                            <ItemTemplate>
                                <asp:Label ID="lblGClass" runat="server" Text='<%# Eval("Reg_Class") %>' Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Department">
                            <ItemTemplate>
                                <asp:Label ID="lblGDepartment" runat="server" Text='<%# Eval("Reg_Department") %>' Width="150px"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDel" runat="server" CausesValidation="false" CommandName="Del" CommandArgument='<%# Eval("Reg_MID") %>' OnClientClick="return confirm('Are you sure you want to delete? '); aspnetForm.target ='_self'"><i class="fa fa-trash" style="color:red; font-size:1.5em;"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>

        </div>

    </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="Server">
</asp:Content>

