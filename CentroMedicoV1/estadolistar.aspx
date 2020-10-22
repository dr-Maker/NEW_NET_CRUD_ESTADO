<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estadolistar.aspx.cs" Inherits="CentroMedicoV1.estadolistar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>listado estado</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <a href="estadonuevo.aspx">nuevo</a>

            <asp:Table
                ID="tblEstado"
                runat="server"
                CssClass="table table-bordered table-striped">
                <asp:TableRow runat="server" TableSection="TableHeader">
                    <asp:TableCell runat="server">Id.Estado</asp:TableCell>
                    <asp:TableCell runat="server">Estado</asp:TableCell>
                    <asp:TableCell runat="server">Editar</asp:TableCell>
                    <asp:TableCell runat="server">Borrar</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
</html>
