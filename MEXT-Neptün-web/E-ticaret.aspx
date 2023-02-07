<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E-ticaret.aspx.cs" Inherits="MEXT_Neptün_web.E_ticaret" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MusteriID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                    <asp:BoundField DataField="MusteriID" HeaderText="MusteriID" ReadOnly="True" SortExpression="MusteriID" />
                    <asp:BoundField DataField="MusteriUnvan" HeaderText="MusteriUnvan" SortExpression="MusteriUnvan" />
                    <asp:BoundField DataField="MusteriAd" HeaderText="MusteriAd" SortExpression="MusteriAd" />
                    <asp:BoundField DataField="MusteriSoyad" HeaderText="MusteriSoyad" SortExpression="MusteriSoyad" />
                    <asp:CheckBoxField DataField="MusteriCinsiyet" HeaderText="Kadın" SortExpression="MusteriCinsiyet" />
                    <asp:BoundField DataField="MusteriIDT" HeaderText="MusteriIDT" SortExpression="MusteriIDT" />
                    <asp:CommandField DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
</Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eTicaretConnectionString %>" DeleteCommand="DELETE FROM Musteriler WHERE MusteriID=@MusteriID" SelectCommand="SELECT [MusteriID], [MusteriUnvan], [MusteriAd], [MusteriSoyad], [MusteriCinsiyet], [MusteriIDT] FROM [Musteriler]" UpdateCommand="UPDATE Musteriler
   SET MusteriUnvan=@MusteriUnvan, MusteriAd=@MusteriAd,MusteriSoyad=@MusteriSoyad
      ,MusteriCinsiyet = @MusteriCinsiyet, MusteriIDT = @MusteriIDT
 WHERE MusteriID=@MusteriID"></asp:SqlDataSource>

      
        
        
   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UnvanId" DataSourceID="SqlDataSource2" Width="458px" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
            <Columns>
                <asp:BoundField DataField="UnvanId" HeaderText="UnvanId" ReadOnly="True" SortExpression="UnvanId" />
                <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                <asp:CommandField DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
                
                <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
                
            </Columns>

    </asp:GridView>

     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eTicaretConnectionString %>" DeleteCommand="DELETE FROM Unvanlar WHERE UnvanId=@UnvanId" SelectCommand="Select [UnvanId], [Unvan] FROM [Unvanlar]" UpdateCommand="UPDATE Unvanlar 
         SET UnvanId=@UnvanId, Unvan=@Unvan WHERE UnvanId=@UnvanId" ></asp:SqlDataSource>

    </form>
</body>
</html>
