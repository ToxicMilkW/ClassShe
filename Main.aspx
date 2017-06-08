<%@ Page Title="" Language="C#" MasterPageFile="~/Top.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" align=center>
        <tr>
            <td align=center>
                <h1>用户注册
                </h1>
            </td>
            <tr>
            <td align=center>用户名称：</td>
             
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="Button1" runat="server" Text="检测用户" onclick="Button1_Click" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="用户名不能为空!" ControlToValidate="txtname"></asp:CustomValidator>
            </td>
            </tr>
            <tr >
            <td align=center>用户密码：</td>
             
                <td><asp:TextBox ID="txtpasswd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:CustomValidator ID="CustomValidator2" runat="server" 
                    ErrorMessage="密码不能为空!" ControlToValidate="txtpasswd"></asp:CustomValidator>
            </td>
            </tr>
            <tr>
            <td align=center>确认密码：</td>
             
                <td><asp:TextBox ID="txtpasswd2" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:CustomValidator ID="CustomValidator3" runat="server" 
                    ErrorMessage="确认密码不能为空!" ControlToValidate="txtpasswd"></asp:CustomValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="确认密码与密码不一致!" ControlToCompare="txtpasswd" 
                    ControlToValidate="txtpasswd2"></asp:CompareValidator>
            </td>
            </tr>
            <tr>
            <td align=center>电子邮箱：</td>
            <td><asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
                <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="邮箱格式错误!" ControlToValidate="txtmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            </tr>
            <tr>
            <td align=center>
                <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            </tr>
    </table>
</asp:Content>

