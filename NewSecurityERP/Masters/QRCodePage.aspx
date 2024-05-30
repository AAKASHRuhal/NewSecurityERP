<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRCodePage.aspx.cs" Inherits="NewSecurityERP.Masters.QRCodePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>
                        <asp:Image ID="imgQRCode" runat="server" Width="250" height="250" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
