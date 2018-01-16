<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="assignment2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 284px;
        }
        .auto-style3 {
            width: 82%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 284px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
    <table class="auto-style3">
        <tr>
            <td>
               Gender:
            </td>
            <td class="auto-style2">
                <asp:Label ID="gen_lb" runat="server" Text="Label"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>Age:</td>
            <td class="auto-style2">
                <asp:Label ID="age_lb" runat="server" Text="Label"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>Occupation:</td>
            <td class="auto-style2"> <asp:Label ID="occu_lb" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td>Income:</td>
            <td class="auto-style2"> <asp:Label ID="inc_lb" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td class="auto-style4">Survery Result:</td>
            <td class="auto-style5"> <asp:Label ID="resl_lb" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
    </table>
  
    <br />
    <br />
    <br />
    <a href="stats.aspx">Click here to view survery statistics</a>
</asp:Content>
