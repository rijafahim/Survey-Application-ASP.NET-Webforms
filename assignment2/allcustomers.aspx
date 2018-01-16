<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allcustomers.aspx.cs" Inherits="assignment2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
  <br />
      <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Gender "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Occupation"></asp:Label>
&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Income"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Survey Results"></asp:Label>
  <br />

   <asp:Repeater ID="userList" runat="server"  >

        <ItemTemplate>

        <table class="auto-style3" border="0" style="text-align:center; width: 100% ">
  
        <tr>
         
              <asp:Label ID="Label3" runat="server" Text='<%# Eval("gen") %>'  ></asp:Label>  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="gen_lb" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("occu") %>'></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("incom") %>'></asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("answers") %>'></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
          
        
        </tr>    
    </table>
 
        </ItemTemplate>

    </asp:Repeater>
</asp:Content>
