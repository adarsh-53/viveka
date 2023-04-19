<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PrivateMasterPage.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="WebPages_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="Server">

    <br />
    <div class="container">
        <div class="row" runat="server" visible="true" id="divEventAdd">

            <div class="col-md-12" style="border: 3px solid #565029; border-width: initial; border-radius: 12px; padding: 20px; background-color: #ffffff3b; box-shadow: -16px 15px 19px -6px rgb(0 0 0 / 18%)">
                <div class="row">
                    <asp:Label ID="lblEventAdd" runat="server" Text="Event Add" Font-Size="25pt" ForeColor="#565029" Font-Bold="true" Style="font-size: 40px; padding-left: 42%; font-family: -webkit-body;"></asp:Label>
                </div>
                <hr />
                <br />
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2 ">
                        <asp:Button ID="btnview" runat="server" Text="VIEW" OnClick="btnview_Click" />
                    </div>
                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lbldepartment" runat="server" Text="Department :" Font-Bold="true"></asp:Label>
                    </div>

                    <asp:DropDownList ID="ddlDepartment" runat="server" Width="13%" Height="27px">
                        <asp:ListItem Selected="true">Computer Science</asp:ListItem>
                        <asp:ListItem>Automobile</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lbltitle" runat="server" Text="Event Title :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Event Title" ControlToValidate="txttitle"></asp:RequiredFieldValidator>
                    </div>


                    <div class="col-md-2 aligntext1 ">
                        <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lbldate" runat="server" Text="Date Description :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Date Description" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblattach" runat="server" Text="Attach Title :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtattach" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Attach Title" ControlToValidate="txtattach"></asp:RequiredFieldValidator>
                    </div>


                    <div class="col-md-2 aligntext1 ">
                        <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="Attachment" runat="server" Text="Attachment :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txtattachment" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Date Description" ControlToValidate="txtattachment"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblphoto" runat="server" Text="Photo :" Font-Bold="true"></asp:Label>

                    </div>

                    <div class="col-md-2 aligntext1">
                        <asp:TextBox ID="txtphoto" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Photo" ControlToValidate="txtphoto"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-2 aligntext1">
                        <asp:TextBox ID="txtphoto2" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select Photo" ControlToValidate="txtphoto2"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-2 aligntext1">
                        <asp:TextBox ID="txtphoto3" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Photo" ControlToValidate="txtphoto3"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-2 aligntext1">
                        <asp:TextBox ID="txtphoto4" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Select Photo" ControlToValidate="txtphoto4"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">

                    <div class="col-md-5 aligntext1">
                        <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lbldescription" runat="server" Text="Description :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-2 aligntext1">
                        <asp:TextBox ID="txtdescription" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdescription"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <br />

                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <asp:Button ID="btnsave" runat="server" Text="Save" Width="50%" OnClick="btnsave_Click" />

                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="50%" OnClick="btncancel_Click" CausesValidation="false" />
                    </div>

                </div>

            </div>
        </div>

        <br />


        <div class="row" runat="server" visible="true" id="divViewEvent">

            <div class="col-md-12" style="border: 3px solid #565029; border-width: initial; border-radius: 12px; padding: 20px; background-color: #ffffff3b; box-shadow: -16px 15px 19px -6px rgb(0 0 0 / 18%)">
                <div class="row">
                    <div class="col-md-12 com-xs-12" style="text-align: center; font-family: -webkit-body;">
                        <asp:Label ID="lblEventView" runat="server" Text="VIEW Event" Font-Size="25pt" ForeColor="#565029" Font-Bold="true"></asp:Label>
                    </div>
                </div>
                <hr />
                <br />

                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2 ">
                        <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
                    </div>
                </div>

                <br />


                <div class="row">

                    <div class="col-md-3 aligntext1">
                        <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblsearch" runat="server" Text="Search By :" Font-Bold="true"></asp:Label>

                    </div>
                    <div class="col-md-3 aligntext1">
                        <asp:TextBox ID="txttitle1" runat="server" CssClass="form-control" Width="82%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Title" ControlToValidate="txttitle1"></asp:RequiredFieldValidator>
                    </div>


                    <div class="col-md-2 aligntext1 ">
                        <asp:Label ID="Label13" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lbldepartment1" runat="server" Text="Department :" Font-Bold="true"></asp:Label>

                    </div>

                    <asp:DropDownList ID="DropDownList1" runat="server" Width="13%" Height="27px">
                        <asp:ListItem Selected="true">Computer Science</asp:ListItem>
                        <asp:ListItem>Automobile</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                    </asp:DropDownList>

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

                    <p style="padding-left: 20px;">Records</p>

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
            </div>

            <asp:GridView ID="gvevent" runat="server" AutoGenerateColumns="False" CssClass="Admingridtable1" EmptyDataText="No Records Found!!!" Width="64%" EnableModelValidation="True">

                <Columns>
                    <asp:TemplateField HeaderText="Sl.No">
                        <ItemTemplate>
                            <asp:Label ID="slno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEdt" runat="server" CommandName="Edt" CommandArgument='<%# Eval("Event_MID") %>' OnClientClick="return confirm('Are you sure you want to Edit? '); aspnetForm.target ='_self'"><i class="fa fa-edit" style="color:#563a09; font-size:1.5em;Width:15px"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <asp:Label ID="lblGtitle" runat="server" Text='<%# Eval("Event_Title") %>' Style="word-break: break-all; word-wrap: break-word" Width="150px"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Department">
                        <ItemTemplate>
                            <asp:Label ID="lblGdept" runat="server" Text='<%# Eval("Event_Department") %>' Style="word-break: break-all; word-wrap: break-word" Width="150px"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDel" runat="server" CommandName="Del" CommandArgument='<%# Eval("Event_MID") %>' OnClientClick="return confirm('Are you sure you want to delete? '); aspnetForm.target ='_self'"><i class="fa fa-trash" style="color:red; font-size:1.5em;"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>

    </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="Server">
</asp:Content>

