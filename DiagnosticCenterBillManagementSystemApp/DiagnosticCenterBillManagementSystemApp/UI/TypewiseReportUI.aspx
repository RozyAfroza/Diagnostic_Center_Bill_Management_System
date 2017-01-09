<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TypewiseReportUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TypewiseReportUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <h2> Type wise Report</h2>
            <table>
                  <tr>
            <td class="auto-style2">From Date</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="calenderFromDateTextBox" runat="server" Width="301px"></asp:TextBox></td>
                <td>
                    <asp:Calendar ID="fromDateCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="88px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
            </tr>
                 <tr>
            <td class="auto-style2">To Date</td>
            <td class="auto-style1"> 
            <asp:TextBox ID="toDateTextBox" runat="server" Width="301px"></asp:TextBox></td>
                <td>
                    <asp:Calendar ID="toDateCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="70px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    </tr>
                <tr><td> <asp:Button ID="showButton" runat="server" Text="Show" /></td></tr>
                </table>
        <asp:GridView ID="testwiseReportGridView" runat="server" AutoGenerateColumns="False" Width="734px">
                <Columns>
                    <asp:TemplateField HeaderText="SerialNo">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("SerialNo") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Test Type TestName">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TypeTestName") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total no of Test">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TotalTest") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <asp:Label runat="server"><%#Eval("TotalAmount") %></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        <table> <tr><td class="auto-style4"> <asp:Button ID="pdfButton" runat="server" Text="PDF" /></td>
       <td class="auto-style5">  Total</td>
            <td> <asp:TextBox ID="totalTextBox" runat="server" Width="289px"></asp:TextBox></td>
        </tr></table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
