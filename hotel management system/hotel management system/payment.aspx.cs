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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Book1_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["travelconnectionstring"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into Payment(BankName,Name,CardNumber,CVV,ExpireDate,loginid) values(@BankName,@Name,@CardNumber,@CVV,@ExpireDate,@loginid)", conn);
                cmd.Parameters.AddWithValue("BankName", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("CardNumber", TextBox2.Text);
                cmd.Parameters.AddWithValue("CVV", TextBox7.Text);
                cmd.Parameters.AddWithValue("ExpireDate", TextBox3.Text);
                cmd.Parameters.AddWithValue("loginid", Convert.ToString(Session["User"]));

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
               
            }
        }
    }
}