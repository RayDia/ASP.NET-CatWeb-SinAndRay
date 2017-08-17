using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _28199014
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //String username = lusername.Text;
            // String password = lpassword.Text;
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //连接数据库，在webconfig中配置
            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            string sql = "select * from [dbo].[User] where [username]='" + lusername.Text + "' and [password] = '" + lpassword.Text + "'";

            SqlCommand comm = new SqlCommand(sql, conn);
            //comm.Parameters.AddWithValue("username", lusername.Text);
            //comm.Parameters.AddWithValue("password", lpassword.Text);

            SqlDataReader sdr = comm.ExecuteReader();

            if (sdr.Read())
            {
                Session["username"] = lusername.Text;
                Session["password"] = lpassword.Text;
                Response.Write(@"<script>alert('success！');</script>");
                if (string.IsNullOrEmpty(Request.QueryString["URL"]))
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Redirect(Request.QueryString["URL"]);
                }

            }
            else
            {
                Response.Write(@"<script>alert('Failed！');</script>");
            }
            conn.Close();
        }
        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");

        }

    }
}