<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestTypeSetupUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TestTypeSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 120px;
            height: 25px;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            width: 207px;
            height: 25px;
        }
    </style>
</head>
<body style="height: 479px">
    <form id="form1" runat="server">
    <div>
        <h2> Test Type Setup</h2>
        <asp:Panel ID="Panel1" runat="server" Height="106px" Width="675px">
           <table>
               <tr>
            <td class="auto-style4">Type Name</td>
            <td class="auto-style2"> 
            <asp:TextBox ID="typeNameTextBox" runat="server" Width="301px"></asp:TextBox></td></tr>
            <tr>
               
                <td class="auto-style3">
                    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click1" Width="87px" />
                </td>
           </table> 
        </asp:Panel>
        <asp:GridView ID="typeNameGridView" runat="server" AutoGenerateColumns="False" Width="679px"> 
            <Columns>
           <asp:TemplateField HeaderText="SerialNo">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("SerialNo") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Type Name">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("Name") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="TestUI.aspx">Setup Page</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="TestRequestEntryUI.aspx">test request entry</asp:HyperLink>
    </div>
    </form>
</body>
</html>
