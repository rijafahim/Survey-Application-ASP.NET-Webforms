<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="assignment2.WebForm7"  UnobtrusiveValidationMode ="none"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
        <br />
        <asp:Label ID="qlbl" runat="server" Text="Enter new question:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name" runat="server" Width="280px" Height="29px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_name" ErrorMessage="Cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="op1" runat="server" Text="Option 1: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name0" runat="server" Width="165px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_name0" ErrorMessage="Cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="op2" runat="server" Text="Option 2: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name1" runat="server" Width="165px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_name1" ErrorMessage="Cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="op3" runat="server" Text="Option 3:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name2" runat="server" Width="165px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_name2" ErrorMessage="Cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="op4" runat="server" Text="Option 4:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_name3" runat="server" Width="165px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_name3" ErrorMessage="Cannot be empty" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" CssClass="button" Height="40px" OnClick="Button5_Click" Text="Button" Width="175px" />
    <br />


</asp:Content>
