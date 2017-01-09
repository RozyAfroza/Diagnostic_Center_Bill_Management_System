<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestRequestEntryUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TestRequestEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 432px;
        }
        .auto-style2 {
            width: 155px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2> Test Request Entry</h2>
        <asp:Panel ID="Panel1" runat="server">          
            <table>
            <tr>
            <td class="auto-style2">Name of the Patient</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="patientNameTextBox" runat="server" Width="301px"></asp:TextBox></td></tr>
            <tr>
                <td class="auto-style2">Date of Birth</td>
                <td class="auto-style1">
                    <asp:TextBox ID="dateOfBirthTextBox" runat="server" Width="301px"></asp:TextBox>
                </td>
                <tr>
                    <td class="auto-style2">Mobile No</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="mobileNoTextBox" runat="server" Width="301px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Select Test</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="selectTestDropDownList" runat="server" Width="307px">
                        </asp:DropDownList>
                        <tr>
                            <td class="auto-style2">Fee</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="feeTextBox" runat="server" Width="301px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr><td class="auto-style2">
                            <asp:Button ID="addButton" runat="server" Text="Add" Width="65px" OnClick="addButton_Click" />
                    </td>
                </tr>
                          </table>
            <asp:GridView ID="testRequestEntryGridView" runat="server" AutoGenerateColumns="False" Width="434px" Height="122px">
                <Columns>
                    <asp:TemplateField HeaderText="SerialNo">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("SerialNo") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Test">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TestTestName") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fee">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("Fee") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
  <tr><td>Total</td>
      <td>
          <asp:TextBox ID="totalTextBox" runat="server"></asp:TextBox>
      </td>
  </tr>
            <asp:Button ID="saveButton" runat="server" Text="Save" Width="82px" />
        </asp:Panel>
    </div>
        <asp:HiddenField ID="HiddenField" runat="server" />
    </form>
</body>
</html>
