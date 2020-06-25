<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Dzisiaj jest <asp:Label ID="dzisiajLabel" runat="server" Text=""></asp:Label>
        <br />
        Podaj swoie imię: <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
        
        <asp:Button ID="wyswietlButton" runat="server" Text="Wyświetl" OnClick="wyswietlButton_Click" />
        <br />
        <asp:Label ID="imieLabel" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
