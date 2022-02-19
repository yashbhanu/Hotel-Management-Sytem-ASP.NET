using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace hotel_management_system
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["travelconnectionstring"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into customer(customername,customerlastname,emailid,loginid,password) values(@customername,@customerlastname,@emailid,@loginid,@password)", conn);
                cmd.Parameters.AddWithValue("customername", Textname.Text);
                cmd.Parameters.AddWithValue("customerlastname", Textlast.Text);
                cmd.Parameters.AddWithValue("emailid", Textemail.Text);
                cmd.Parameters.AddWithValue("loginid", Textuser.Text);
                cmd.Parameters.AddWithValue("password", Textpass.Text);

                cmd.ExecuteNonQuery();
                Label4.Text = "Register Successfull";
            }
            catch (Exception ex)
            {

                Label4.Text = "Username already in use, try another";

            }
            finally
            {

            }
        }
    }
}