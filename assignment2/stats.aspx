<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stats.aspx.cs" Inherits="assignment2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 40px;
        }
        .auto-style9 {
        height: 21px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" BackColor="#FFCCFF" BorderColor="Aqua" BorderStyle="Dotted" Font-Bold="True" Font-Names="Eras Demi ITC" Font-Size="XX-Large" ForeColor="#000066" Text="Statistics Page" CssClass="table"></asp:Label>
   
    <br />
    <br />
    <br />
    <table class="table">
        <tr>
            <td>
              <asp:Label ID="Label2" runat="server" Text="Total participants" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="tltpar_lb" runat="server" Text="Count" Font-Bold="False"></asp:Label>
            </td>
            >
           
        </tr>
        <tr>
            <td> <asp:Label ID="Label5" runat="server" Text="Female" Font-Bold="True"></asp:Label></td>
            <td class="auto-style2">
                <asp:Label ID="fc_lbl" runat="server" Text="Label"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td> <asp:Label ID="Label7" runat="server" Text="Male" Font-Bold="True"></asp:Label></td>
            <td class="auto-style2"> <asp:Label ID="mc_lbl" runat="server" Text="Label"></asp:Label></td>
            
        </tr>

    </table>
    <br />
    <br />
    <br />



    <table class="table">
        <tr>
            <td>
              <asp:Label ID="Label4" runat="server" Text="Income" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Count" Font-Bold="True"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>0-20k</td>
            <td>
                <asp:Label ID="inc_lb1" runat="server" Text="Label"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style9">20k-30k</td>
            <td> <asp:Label ID="inc_lb2" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td>30k-40k</td>
            <td> <asp:Label ID="inc_lb3" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td class="auto-style4">40k-50k</td>
            <td> <asp:Label ID="inc_lb4" runat="server" Text="Label"></asp:Label></td>
            
        </tr>

        <tr>
            <td class="auto-style4">50k+</td>
            <td class="auto-style5"> <asp:Label ID="inc_lb5" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
       
    </table>
    <br />
    <br />
    <br />



    <table class="table">
        <tr>
            <td>
              <asp:Label ID="Label3" runat="server" Text="Age Group" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="gen_lb" runat="server" Text="Count" Font-Bold="True"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>0-20</td>
            <td class="auto-style2">
                <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>20-30</td>
            <td class="auto-style2"> <asp:Label ID="lb2" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td>30-40</td>
            <td class="auto-style2"> <asp:Label ID="lb3" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td>40-50</td>
            <td class="auto-style2"> <asp:Label ID="lb4" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        <tr>
            <td>50+</td>
            <td class="auto-style2"> <asp:Label ID="lb5" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
    </table>
</asp:Content>
