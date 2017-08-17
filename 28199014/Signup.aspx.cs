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
    public partial class Signup : System.Web.UI.Page
    {
        public int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (d12.Text != null && !d12.Text.Equals(""))
            {
                string date = d12.Text;
                string[] dArray = date.Split('-');
                int temp = Convert.ToInt16(dArray[0]);
                int temp1 = 2017 - temp;

                age.Text = Convert.ToString(temp1);
            }
        }

        protected void ageCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            if (d12.Text != null && !d12.Text.Equals(""))
            {
                string date = d12.Text;
                string[] dArray = date.Split('-');
                int temp = Convert.ToInt16(dArray[0]);
                int temp1 = 2017 - temp;
                args.IsValid = (temp1 < 0 || temp1 > 100);
                if (temp1 >= 0 && temp1 <= 100)
                {
                    Response.Write(@"<script>alert('right age!');</script>");

                }
                else
                {
                    Response.Write(@"<script>alert('wrong age!');</script>");
                }
            }

        }

        protected void register_Click(object sender, EventArgs e)
        {
            if(flag == 0)
            {
                return;
            }
            string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //connect to db，webconfig
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string catsizesum = "";
            if (Request["catsize"] != null)
            {
                catsizesum = Request["catsize"].ToString();
            }
            string sql = "INSERT INTO [dbo].[User] ([username], [usertype], [email],[password],[birthday],[age],[gender],[catsize],[catfur],[address], [petkeeping],[url]) VALUES ('" + username.Text + "','" + usertype.Text + "' ,'" + email.Text + "','" + password.Text + "','" + d12.Text + "','" + age.Text + "','" + genderListBox.Text + "','" + genderListBox.Text + "','" + furDropDownList.Text + "','" + address.Text + "','" + petkeepRadioButtonList.Text + "','" + url.Text + "')";
            //string sql = "INSERT INTO [dbo].[User] ([username], [usertype], [email],[password],[birthday],[age],[gender],[catsize],[catfur],[address], [petkeeping],[url]) VALUES ('+ username.Text  ','  User  ' ,'  email.Text  ','  password.Text  ','  d12.Text  ','  age.Text  ','  genderListBox.Text  ','  genderListBox.Text  ','  furDropDownList.Text  ','  address.Text  ','  petkeepRadioButtonList.Text  ','  url.Text  ')";

            SqlCommand comm = new SqlCommand(sql, conn);

            // SqlDataReader sdr = comm.ExecuteReader();


            if (comm.ExecuteNonQuery() > 0)
            {
                Session["username"] = username.Text;
                Session["usertype"] = usertype.Text;
                Session["email"] = email.Text;
                Session["password"] = password.Text;
                Session["birthday"] = d12.Text;
                Session["age"] = age.Text;
                Session["gender"] = genderListBox.Text;
                Session["catsize"] = genderListBox.Text;
                Session["catfur"] = furDropDownList.Text;
                Session["address"] = address.Text;
                Session["petkeeping"] = petkeepRadioButtonList.Text;
                Session["url"] = url.Text;
                Response.Write(@"<script>alert('success register！');</script>");
                Response.Write("<script>alert('success register！')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed！')</script>");
            }

            //if (sdr.Read())
            //{
            //    Session["username"] = username.Text;
            //    Session["usertype"] = usertype.Text;
            //    Session["email"] = email.Text;
            //    Session["password"] = password.Text;
            //    Session["birthday"] = d12.Text;
            //    Session["age"] = age.Text;
            //    Session["gender"] = genderListBox.Text;
            //    Session["catsize"] = genderListBox.Text;
            //    Session["catfur"] = furDropDownList.Text;
            //    Session["address"] = address.Text;
            //    Session["petkeeping"] = petkeepRadioButtonList.Text;
            //    Session["url"] = url.Text;
            //    Response.Write(@"<script>alert('success register！');</script>");

            //}
            //else
            //{
            //    Response.Write(@"<script>alert('Failed！');</script>");
            //}
            conn.Close();
        }

        protected void usernameCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                //string username1 = args.Value;
                string str = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString; //连接数据库，在webconfig中配置
                SqlConnection conn = new SqlConnection(str);
                conn.Open();

                string sql = "select Count(*) from [dbo].[User] where [username]='" + username.Text + "'";
                SqlCommand comm = new SqlCommand(sql, conn);
                int count = Convert.ToInt32(comm.ExecuteScalar());

                if (count > 0 || count == 1)
                {
                    args.IsValid = false;
                    flag = 0;
                }
                else
                {
                    args.IsValid = true;
                    flag = 1;
                }
            }
            catch (Exception)
            {
                args.IsValid = false;
                flag = 0;
            }
        }

    }
}