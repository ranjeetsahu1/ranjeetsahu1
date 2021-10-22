using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class datalistandrepeater_Ecommerce : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=rojgarseva.info;Initial Catalog=rojdarsevadb;Persist Security Info=True;User ID=rojgarsevauser;Password=6p3n&1Jd";

        cn = new SqlConnection(cs);

        cn.Open();

        string k3 = "select * from card1_db";

        cm = new SqlCommand(k3, cn);

        dr = cm.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        dr.Close();

        {
           
            string k4 = "select sum (totalamount) from card1_db";

            cm = new SqlCommand(k4, cn);

            Label5.Text = cm.ExecuteScalar().ToString();
         

           
            

        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=rojgarseva.info;Initial Catalog=rojdarsevadb;Persist Security Info=True;User ID=rojgarsevauser;Password=6p3n&1Jd";

        cn = new SqlConnection(cs);

        cn.Open();
        string k2 = "insert into product_db (pname,cost,quantity,description) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "')";

        cm = new SqlCommand(k2, cn);
        cm.ExecuteNonQuery();

        Response.Write("Record inserted");




    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=rojgarseva.info;Initial Catalog=rojdarsevadb;Persist Security Info=True;User ID=rojgarsevauser;Password=6p3n&1Jd";

        cn = new SqlConnection(cs);

        cn.Open();

        string k2 = "select * from product_db";

        cm = new SqlCommand(k2, cn);

        dr = cm.ExecuteReader();

        DataList1.DataSource = dr;
        DataList1.DataBind();

        dr.Close();




    }

    protected void datalist_command(object sender, DataListCommandEventArgs e)
    {
        int cost, qty, totalamt;
        {
            Label l2 = (Label)e.Item.FindControl("Label2");
            TextBox tb1 = (TextBox)e.Item.FindControl("TextBox4");
             TextBox t1b = (TextBox)e.Item.FindControl("TextBox5");

            qty = int.Parse(tb1.Text);
            cost = int.Parse(l2.Text);

            totalamt = qty * cost;

          t1b. Text = totalamt.ToString();
        
        
        }



        if (e.CommandName == "Addcard")
        {
            Label l1 = (Label)e.Item.FindControl("Label1");
            Label l2 = (Label)e.Item.FindControl("Label2");
            TextBox tb1 = (TextBox)e.Item.FindControl("TextBox4");
            TextBox tb2 = (TextBox)e.Item.FindControl("TextBox5");



            string cs = @"Data Source=rojgarseva.info;Initial Catalog=rojdarsevadb;Persist Security Info=True;User ID=rojgarsevauser;Password=6p3n&1Jd";

            cn = new SqlConnection(cs);

            cn.Open();

            string k2 = "insert into card1_db (productname,cost,quantity,totalamount) values ('" + l1.Text + "','" + l2.Text + "','" + tb1.Text + "','" + tb2.Text + "')";


            cm = new SqlCommand(k2, cn);

            dr = cm.ExecuteReader();
            Repeater1.DataSource = dr;
            Repeater1.DataBind();
            Response.Write("Record inserted");
            dr.Close();

        }

        if (e.CommandName == "Whatsapp")
        {
            Label l2 = (Label)e.Item.FindControl("Label1");
            Response.Redirect("https://api.whatsapp.com/send?phone=+919926646908" + "&text=" + l2.Text);
        }








    }
    protected void repeater1_command(object sender, RepeaterCommandEventArgs e)
    {
       
    
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        String cs = @"Data Source=rojgarseva.info;Initial Catalog=rojdarsevadb;Persist Security Info=True;User ID=rojgarsevauser;Password=6p3n&1Jd";
        cn = new SqlConnection(cs);
        cn.Open();
        String k1n = "Update product_db set cost='" + TextBox2.Text + "' where  pname ='" + TextBox1.Text + "'";
        cm = new SqlCommand(k1n, cn);
        cm.ExecuteNonQuery();
        Response.Write("record Modified");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}