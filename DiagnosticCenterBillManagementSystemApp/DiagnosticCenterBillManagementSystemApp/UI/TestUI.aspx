<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TestUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 299px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2> Test Setup</h2>
        <asp:Panel ID="Panel1" runat="server"> 
            <asp:HiddenField ID="testIdHiddenField" runat="server" />   
          <table>
               <tr>
            <td class="auto-style4">Test Name</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="testNameTextBox" runat="server" Width="301px"></asp:TextBox></td></tr>
            <tr>
                <td class="auto-style4">Fee</td>
                <td class="auto-style1">
                    <asp:TextBox ID="feeTextBox" runat="server" Width="301px"></asp:TextBox>
                </td>                      <td> <asp:Label ID="Label1" runat="server" Text="BDT"></asp:Label></td>

               <tr>
                   <td class="auto-style4">Test Type</td>
                   <td class="auto-style1">
                       <asp:DropDownList ID="testTypeDropDownList" runat="server" Width="309px">
                       </asp:DropDownList>
                   </td>
               </tr>
                <tr><td> <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td></tr>
                </table> 
            <asp:GridView ID="testSetupGridView" runat="server" AutoGenerateColumns="False" Width="384px">
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("SerialNo") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Test TestName">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TestName") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fee">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("Fee") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TestType") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
