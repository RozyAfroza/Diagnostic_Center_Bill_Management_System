<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.PaymentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 257px">
        <asp:Panel ID="Panel1" runat="server" Font-Bold="False" Height="253px" Width="1213px">
            <h2> Payment</h2>
            <table>
                
            <tr>
            <td class="auto-style2">Bill No</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="billNoTextBox" runat="server" Width="301px"></asp:TextBox></td>
                <td>
                <asp:Label ID="Label1" runat="server" Text="Or"></asp:Label></td></tr>
            <tr>
            <td class="auto-style2">Mobile No</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="mobileNoTextBox" runat="server" Width="301px"></asp:TextBox></td>
                <td>
                    <asp:Button ID="searchButton" runat="server" Text="Search" /></td>
            </tr>

                </table>
            <br>
             <br />
            <br></br>
            <table>
                <tr>
                    <td class="auto-style2">Amount</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="amountTextBox" runat="server" Width="301px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Due Date</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="dueDateTextBox" runat="server" Width="301px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="payButton" runat="server" Text="Pay" Width="69px" />
                    </td>
                </tr>
            </table>
            <br>
            <br></br>
            </br>
             </br>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
