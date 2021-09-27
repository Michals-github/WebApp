using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.student
{
    public class Class1
    {

        public static string GetRandomPassword(int length)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string password = string.Empty;
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //For avoiding Repetation of Characters
                if (!password.Contains(chars.GetValue(x).ToString()))
                    password += chars.GetValue(x);
                else
                    i = i - 1;
            }
            return password;
        }

    }
    public partial class student_registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ManagementSystem\WebApplication1\WebApplication1\App_Data\LibraryMS.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            int count = 0;
            int CountUser = 0;

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from student_registration where enrollment_no = '" + enrollmentno.Text + "'";
            cmd1.ExecuteNonQuery();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            count = Convert.ToInt32(dt1.Rows.Count.ToString());


            if (count>0)
            {
                Response.Write("<script>alert('Podany Enrollment nr już istnieje') </script>");
            }
            else
            {
                //Sprawdzenie czy uzytkownik o podanej nazwie użytkownika istnieje w bazie
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "select * from student_registration where username = '" + username.Text + "'";
                cmd2.ExecuteNonQuery();

                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(dt2);
                CountUser = Convert.ToInt32(dt2.Rows.Count.ToString());
                //koniec zapytania tutaj

                if (CountUser>0)
                {
                    Response.Write("<script>alert('Podany Użytkownik już istnieje') </script>");
                }
                else
                {
                    string randomno = Class1.GetRandomPassword(10) + ".jpg";
                    string path = "";

                    f1.SaveAs(Request.PhysicalApplicationPath + "/student/student_img/" + randomno.ToString());
                    path = "student/student_img/" + randomno.ToString();

                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into student_registration values('" + firstname.Text + "','" + lastname.Text + "'" + "," +
                    "'" + enrollmentno.Text + "','" + username.Text + "','" + password.Text + "','" + email.Text + "','" + contact.Text + "','" + path.ToString() + "','no')";
                    cmd.ExecuteNonQuery();


                    Response.Write("<script>alert('Rekord został dodany') </script>");
                }

               


                
            }


            



        }
        
    }
}