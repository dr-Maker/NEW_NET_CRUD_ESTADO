<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estadoborrar.aspx.cs" Inherits="CentroMedicoV1.estadoborrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>

  <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h2>Borrar hora</h2>
                </div>
                <div class="card-body">


                    <div class="form-group">
                        <asp:Label runat="server" Text="Id.Estado" />
                        <asp:TextBox ReadOnly="true" CssClass="form-control" ID="idestado" runat="server" />
                    </div>


                    <div class="form-group">
                        <asp:Label runat="server" Text="Descripcion" />
                        <asp:TextBox ReadOnly="true" CssClass="form-control" ID="txtdescripcion" runat="server" />   
                    </div>


                    <div class="form-group">
                        <asp:Button 
                            CssClass="btn btn-danger" 
                            ID="btnBorrar" 
                            runat="server" 
                            Text="borrar" OnClick="btnBorrar_Click"        
                             />
                    </div>

                    <p>
                        <a href="horalistar.aspx">Volver</a>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
