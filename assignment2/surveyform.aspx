<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="surveyform.aspx.cs" Inherits="assignment2.WebForm2" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <asp:Repeater ID="questionList" runat="server" OnItemCommand="questionList_ItemCommand">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
            <br />
 
            <asp:RadioButton GroupName="radiolist" ID="RadioButton1" runat="server"  Text='<%# Eval("opt1") %>' Value='1'  AutoPostBack="true" OnCheckedChanged="check1"/>  <br />
             <asp:RadioButton GroupName="radiolist" ID="RadioButton2" runat="server"  Text='<%# Eval("opt2") %>' Value='2' AutoPostBack="true" OnCheckedChanged="check2"/>  <br />
             <asp:RadioButton GroupName="radiolist" ID="RadioButton3" runat="server"  Text='<%# Eval("opt3") %>' Value='3' AutoPostBack="true" OnCheckedChanged="check3"/>  <br />
             <asp:RadioButton GroupName="radiolist" ID="RadioButton4" runat="server"  Text='<%# Eval("opt4") %>' Value='4' AutoPostBack="true" OnCheckedChanged="check4"/>
            <br />
            <br />
            <br />



        </ItemTemplate>

    </asp:Repeater>
    <br />
    <br />

    <asp:Button ID="submitbtn" runat="server" Text="Submit" CssClass="auto-style1" OnClick="Button1_Click" Width="183px" />
</asp:Content>
