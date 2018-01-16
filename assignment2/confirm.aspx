<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="assignment2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-weight: bold;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style9" colspan="2" style="text-align:center; background-color:beige">
                <asp:Label ID="Label2" runat="server" Font-Names="Impact" Font-Size="X-Large" Text="Question added sucessfully!"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style9">uu</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" CssClass="button" Font-Bold="True" Font-Size="Small" Height="40px" OnClick="Button1_Click" Text="Main Menu" Width="359px" />
            </td>
        </tr>
    </table>
</asp:Content>
