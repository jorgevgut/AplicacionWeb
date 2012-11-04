<%@ Page Title="" Language="C#" MasterPageFile="~/app/Site1.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="appWeb1.app.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="Usuarios" runat="server"
        ConnectionString="Data Source=|DataDirectory|\DB.sdf"
        ProviderName="System.Data.SqlServerCe.4.0"
        SelectCommand="SELECT [id],[username],[password],[nombre],[apellido]
        FROM [Usuarios]">

    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="false" DataKeyNames="id"
        DataSourceID="Usuarios">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Identificador" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido" />
            <asp:BoundField DataField="username" HeaderText="usuario" />
            <asp:BoundField DataField="password" HeaderText="password" />
        </Columns>

    </asp:GridView>


</asp:Content>
