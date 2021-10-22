<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ecommerce.aspx.cs" Inherits="datalistandrepeater_Ecommerce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
      
        <br />
        <br />
        ENTER PRODUCT Name&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        ENTER PRICE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" type="Number" ontextchanged="TextBox2_TextChanged"></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
            ValidationGroup="\d{5}"></asp:RegularExpressionValidator>
        <br />
        <br />
        ENTER DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Height="46px" Width="133px"></asp:TextBox>
        <br />
&nbsp;
        <br />
        <br />
        ENTER QUANTITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Show" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Modify" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server"  RepeatColumns="4" 
            RepeatDirection="Horizontal" CellSpacing="3"
            onselectedindexchanged="DataList1_SelectedIndexChanged" Width="1078px" OnItemCommand="datalist_command">
            <ItemTemplate>
            
                  <b>Product Name:-</b>
                  <br />
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval ("pname") %>'></asp:Label><br />
                 <b> Product Price:-</b>
                 <br />

                 <asp:Label ID="Label2" runat="server" Text='<%# Eval ("cost") %>'></asp:Label><br />
                 <b>Product Quantity:-</b>
                 <br />

                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval ("quantity") %>' ></asp:TextBox><br />
                <b>Product Description:-</b>
                <br />

                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval ("description") %>' ></asp:TextBox><br />

                <asp:TextBox ID="TextBox5" runat="server" Visible="false"></asp:TextBox><br />
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Whatsapp">Whatsapp me</asp:LinkButton><br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Addcard">Add to card</asp:LinkButton><br />
            </ItemTemplate>

        
        </asp:DataList>
        

        <br />
        <br />


        <asp:Button ID="Button4" runat="server"   onclick="Button1_Click"  Text="view Card" />
        <br />

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="repeater1_command">

        <ItemTemplate>
      
      
        <b> product name</b><br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label><br />
             <b> cost</b><br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("cost") %>'></asp:Label><br />
             <b> Quantity</b><br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("quantity") %>'></asp:Label><br />
             <b> Total ammount</b><br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("totalamount") %>'></asp:Label><br />
            <b>Product Description</b>
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("description") %>'></asp:Label><br />
            <hr />
           <br />
        </ItemTemplate>
        </asp:Repeater>
         <h3> Your  Total ammount:-</h3>
        <asp:Label ID="Label5" runat="server" ForeColor="Blue"></asp:Label>
    </div>
    </form>
</body>
</html>
