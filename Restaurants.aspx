<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurants.aspx.cs" Inherits="MainProject.Restaurants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 387px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="RESTAURANTS"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Restaurant ID"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantID" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Restaurant Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantName" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnShow" runat="server" Height="38px" Text="Show" Width="210px" OnClick="btnShow_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Restaurant Address"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantAddress" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Restaurant Phone"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantPhone" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Height="38px" Text="Add" Width="210px" OnClick="btnAdd_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Restaurant Type"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantType" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Height="38px" Text="Update" Width="210px" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Restaurant Price"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRestaurantPrice" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnDeactivate" runat="server" Height="38px" Text="Deactivate" Width="210px" OnClick="btnDeactivate_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Restaurant Active"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblRestaurantActive" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Height="38px" Text="Delete" Width="210px" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
