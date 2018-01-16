<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="assignment2.WebForm1"  UnobtrusiveValidationMode="None"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <br />
    <br />
    
&nbsp;<asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name" runat="server" Width="165px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Occupation:"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="tb_occu" runat="server" Width="165px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_occu" ErrorMessage="cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text=" Income:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_incom" runat="server" Width="165px"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_incom" ErrorMessage="*" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_incom" ErrorMessage="cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_age" runat="server" Width="165px"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_age" ErrorMessage="*" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_age" ErrorMessage="cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="genderbtn" ErrorMessage="Must select one option" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <asp:RadioButtonList ID="genderbtn" runat="server" Height="24px" Width="117px">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    <br />
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="227px" CssClass="button" Font-Bold="True" Font-Size="Medium" Height="40px" />
    <br />
&nbsp;&nbsp; Press submit to move on to the survey!<br />
    
</asp:Content>
