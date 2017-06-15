<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="直接打印" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="页面设置" />
        <asp:Button ID="Button3" runat="server" Text="打印预览" />
        <br />
    <div class="rightframe2">
    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="307px" PageSize="5" Width="780px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="pxid" HeaderText="项目编号" />
                            <asp:BoundField DataField="lsh" HeaderText="流水号">
                            <ControlStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="xm" HeaderText="姓名">
                            <ControlStyle Width="40px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gzdw" HeaderText="工作单位" />
                            <asp:BoundField HeaderText="人均缴费" DataField="jfje">
                            <ControlStyle Width="40px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="人数">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server">1</asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="70px" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
    
                </div>
    </div>
    </form>
</body>
</html>
