﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkManInfo.aspx.cs" Inherits="Module_Blog_LinkManInfo" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>联系人信息</title>
        <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    </head>
    <body style="margin-top: 0px; padding-top: 0px">
        <form id="form1" runat="server">
            <div style="text-align: left">
                <table align="left" style="height: 492px; text-align: center; vertical-align: top; width: 596px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="1" style="background-image: url(../../Images/Skin/bg.jpg); height: 477px; text-align: center; vertical-align: middle; width: 771px;">
                        </td>
                        <td align="center" colspan="1" style="background-image: url(../../Images/Skin/bg.jpg); height: 477px; text-align: center; vertical-align: middle; width: 771px;">
                        </td>
                        <td align="center" colspan="1" style="background-image: url(../../Images/Skin/bg.jpg); height: 477px; text-align: center; vertical-align: middle; width: 11565px;">
                        </td>
                        <td align="center" colspan="3" 
                            style="background-image: url(../../Images/Skin/bg.jpg); height: 477px; text-align: center; vertical-align: middle; width: 771px;">
                            <table style="border-bottom-color: black; border-bottom-width: thin; border-left-color: black; border-left-width: thin; border-right-color: black; border-right-width: thin; border-top-color: black; border-top-width: thin; width: 392px;">
                                <tr>
                                    <td colspan="4" style="height: 20px; text-align: center">
                                        <span style="color: #993300"><strong>联系人资料</strong></span></td>
                                </tr>
                                <tr>
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">姓 &nbsp; &nbsp; 名：</span></td>
                                    <td colspan="2" style="font-size: 12pt; height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtName" runat="server" Width="149px"></asp:TextBox></td>
                                    <td colspan="1" style="font-size: 12pt; height: 21px; text-align: left; width: 173px;">
                                    </td>
                                </tr>
                                <tr style="color: #000000; font-size: 9pt;">
                                    <td style="height: 18px; text-align: center; width: 82px;">
                                        <span>性 &nbsp;&nbsp; 别:</span></td>
                                    <td colspan="2" style="font-size: 12pt; height: 18px; text-align: center; width: 16px;">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="77px">
                                            <asp:ListItem>男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:DropDownList>&nbsp;</td>
                                    <td colspan="1" style="height: 18px; width: 173px;">
                                    </td>
                                </tr>
                                <tr style="color: #000000; font-size: 9pt;">
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span>生 &nbsp;&nbsp; 日:</span></td>
                                    <td colspan="2" style="font-size: 12pt; height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtBirthday" runat="server" Width="153px"></asp:TextBox></td>
                                    <td colspan="1" style="font-size: 12pt; height: 21px; text-align: left; width: 173px;">
                                    </td>
                                </tr>
                                <tr style="font-size: 12pt">
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">家庭地址:</span></td>
                                    <td colspan="3" style="font-size: 12pt; height: 21px; text-align: left">
                                        <asp:TextBox ID="txtAddress" runat="server" Width="290px"></asp:TextBox></td>
                                </tr>
                                <tr style="font-size: 12pt">
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">邮政编码:</span></td>
                                    <td colspan="2" style="height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtPostCode" runat="server" Width="154px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 21px; width: 173px;" align="left">
                                        <asp:RegularExpressionValidator ID="revPostCode" runat="server" ControlToValidate="txtPostCode"
                                                                        ErrorMessage="您的邮编输入有误" Font-Size="9pt" ValidationExpression="\d{6}" Width="134px">您的邮编输入有误</asp:RegularExpressionValidator></td>
                                </tr>
                                <tr style="font-size: 12pt">
                                    <td style="height: 29px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">E-mail:</span></td>
                                    <td colspan="2" style="height: 29px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="154px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 29px; text-align: left; width: 173px;">
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                                                        ErrorMessage="您输入的E-mail地址格式不正确，请重新输入" Font-Size="9pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                        Width="138px">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator></td>
                                </tr>
                                <tr style="font-size: 12pt">
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">家庭电话:</span></td>
                                    <td colspan="2" style="height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtHphone" runat="server" Width="156px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 21px; width: 173px;">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtHphone"
                                                                        ErrorMessage="您输入的电话号码有误，请重新输入" Font-Size="9pt" ValidationExpression="\d{3,4}-\d{7,8}">您输入的电话号码有误，请重新输入</asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">手机号码</span>:</td>
                                    <td colspan="2" style="height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtMphone" runat="server" Width="157px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 21px; width: 173px;">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMphone"
                                                                        ErrorMessage="您输入的号码有误，请重新输入" Font-Size="9pt" ValidationExpression="^[1]\d{10}">您输入的手机号码有误，请重新输入</asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">QQ:</span></td>
                                    <td colspan="2" style="height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtQQ" runat="server" Width="157px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 21px; width: 173px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 21px; text-align: center; width: 82px;">
                                        <span style="font-size: 9pt">ICQ:</span></td>
                                    <td colspan="2" style="height: 21px; text-align: center; width: 16px;">
                                        <asp:TextBox ID="txtICQ" runat="server" Width="159px"></asp:TextBox></td>
                                    <td colspan="1" style="height: 21px; width: 173px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: 21px; text-align: center">
                                        <asp:Button ID="btnUpdate" CssClass="ButtonCss" runat="server" Font-Size="9pt" Text="修改" OnClick="btnUpdate_Click" Width="53px" />
                                        <asp:Button ID="btnBack"  CssClass="ButtonCss" runat="server" Font-Size="9pt" OnClick="btnCancle_Click"
                                                    Text="返回" Width="51px" CausesValidation="False" /></td>
                                </tr>
                            </table>
                        </td>
                        <td align="center" colspan="1" style="background-image: url(../../Images/Skin/bg.jpg); height: 477px; text-align: center; vertical-align: middle; width: 771px;">
                        </td>
                    </tr>
                </table>
    
            </div>
        </form>
    </body>
</html>