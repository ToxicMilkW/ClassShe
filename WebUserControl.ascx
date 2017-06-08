<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<table border="0" cellpadding="0" cellspacing="0" width=100% align=center>
    <tr>
        <td align=center>
            <h1>用户登录
            </h1>
        </td>
    </tr>
    <tr>
        <td align=center>
            
            用户名：<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td align=center>
            
            密码：&nbsp; 
            <asp:TextBox ID="txtpasswd" runat="server"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td align=center>
            
           
            
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登陆" />
            
           
            
        </td>
    </tr>
    <tr>
        <td align=center>
            <a href="#">新用户注册</a>
        </td>
    </tr>
</table>
