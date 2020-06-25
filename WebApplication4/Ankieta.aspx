<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>
<script runat="server">

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox1.Checked) {
            this.CheckBoxListASP.Visible = true;
        }
        else
        {
            this.CheckBoxListASP.Visible = false;

            foreach( ListItem item in CheckBoxListASP.Items)
            {
                item.Selected = false;
            }
        }
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox2.Checked) {
            this.CheckBoxListSQL.Visible = true;
        }
        else
        {
            this.CheckBoxListSQL.Visible = false;
        }

         foreach( ListItem item in CheckBoxListSQL.Items)
            {
                item.Selected = false;
            }

    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox3.Checked) {
            this.CheckBoxListJP.Visible = true;
        }
        else
        {
            this.CheckBoxListJP.Visible = false;
        }

        foreach( ListItem item in CheckBoxListJP.Items)
            {
                item.Selected = false;
            }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.CheckBox1.Checked || this.CheckBox2.Checked || this.CheckBox3.Checked)
        {
            this.LabelPodkategorie.Visible = true;
        }
        else
        {
            this.LabelPodkategorie.Visible = false;
        }
    }

    protected void ButtonPodsumowanie_Click(object sender, EventArgs e)
    {
        String osoba = this.TextBoxImie.Text + " " + this.TextBoxNazwisko.Text;

        String wynik = "";

        foreach (ListItem item in CheckBoxListASP.Items)
        {
            if(item.Selected)
            {
                wynik += item.Value + ",";
            }
        }

        foreach (ListItem item in CheckBoxListSQL.Items)
        {
            if(item.Selected)
            {
                wynik += item.Value + ",";
            }
        }

        foreach (ListItem item in CheckBoxListJP.Items)
        {
            if(item.Selected)
            {
                wynik += item.Value + ",";
            }
        }

        this.Label1.Text = "Osoba : " + osoba;
        this.Label1.Text = " wybrała" + wynik;

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Imie:<asp:TextBox ID="TextBoxImie" runat="server"></asp:TextBox> 
        i Nazwisko:<asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
         <br />
        <asp:Label ID="KategorieId" runat="server" Text="Kategoria"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />ASP.NET
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />MS SQL Server
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged" />Języki Programowania
        <asp:Label ID="LabelPodkategorie" runat="server" Text="Podkategorie"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxListASP" runat="server" AutoPostBack="True" Width="140px">
            <asp:ListItem>Podstawy</asp:ListItem>
            <asp:ListItem>Master Page</asp:ListItem>
            <asp:ListItem>Dostep do BD</asp:ListItem>
            <asp:ListItem>Ajax</asp:ListItem>
            <asp:ListItem>Bezpieczenstwo</asp:ListItem>
        </asp:CheckBoxList>
        <asp:CheckBoxList ID="CheckBoxListSQL" runat="server" AutoPostBack="True">
            <asp:ListItem>DDL</asp:ListItem>
            <asp:ListItem>DML</asp:ListItem>
            <asp:ListItem>SQL</asp:ListItem>
            <asp:ListItem>T-SQL</asp:ListItem>
        </asp:CheckBoxList>
        <asp:CheckBoxList ID="CheckBoxListJP" runat="server" AutoPostBack="True">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>VB</asp:ListItem>
        </asp:CheckBoxList>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
        <asp:Button ID="ButtonPodsumowanie" runat="server" Text="Podsumowanie" OnClick="ButtonPodsumowanie_Click" />
        </div>
    </form>
</body>
</html>
