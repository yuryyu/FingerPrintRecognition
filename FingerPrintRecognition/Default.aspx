<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FingerPrintRecognition.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="ResultID" runat="server"></asp:TextBox>

        <asp:Button ID="CalculateBTN" runat="server" Text="Calculate" OnClick="CalculateBTN_Click" />
    
    </div>
    </form>
</body>
</html>
