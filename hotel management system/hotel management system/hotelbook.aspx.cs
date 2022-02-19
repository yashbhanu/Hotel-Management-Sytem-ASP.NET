using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hotel_management_system
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Request.QueryString["HotelId"];
            if (!IsPostBack)
            {

                int i;
                for (i = 1; i < 5; i++)
                {
                    DropDownList1.Items.Add(new ListItem(i.ToString()));
                }
            }
            if (!IsPostBack)
            {

                int i;
                for (i = 1; i < 10; i++)
                {
                    no_of_person.Items.Add(new ListItem(i.ToString()));
                }
            }
        }

        protected void Book1_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["travelconnectionstring"].ConnectionString);
                GridView1.DataBind();
                foreach (GridViewRow gr in GridView1.Rows)
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("insert into CustomerBooking(FullName,Email,PhoneNumber,CheckIn,CheckOut,Rooms,Guests,Cost,loginid,HotelId) values(@FullName,@Email,@PhoneNumber,@CheckIn,@CheckOut,@Rooms,@Guests,@Cost,@loginid,@HotelId)", conn);
                    cmd.Parameters.AddWithValue("FullName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("Email", TextBox2.Text);
                    cmd.Parameters.AddWithValue("PhoneNumber", TextBox7.Text);
                    cmd.Parameters.AddWithValue("CheckIn", TextBox3.Text);
                    cmd.Parameters.AddWithValue("CheckOut", TextBox4.Text);
                    cmd.Parameters.AddWithValue("Rooms", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("Guests", no_of_person.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("Cost", Label4.Text);
                    cmd.Parameters.AddWithValue("loginid", Convert.ToString(Session["User"]));
                    cmd.Parameters.AddWithValue("HotelId", gr.Cells[0].Text);
                    

                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                Response.Redirect("payment.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gr in GridView1.Rows)
            {
                DropDownList DropDownList1 = sender as DropDownList;

                int cost = Convert.ToInt32(gr.Cells[4].Text);

                Label4.Text = Convert.ToString(cost * Convert.ToInt32(DropDownList1.SelectedItem.Text));


            }
        }
    }
}