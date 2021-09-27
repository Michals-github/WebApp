using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication1.librarian
{
    public partial class delete_fiiles : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ManagementSystem\WebApplication1\WebApplication1\App_Data\LibraryMS.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if(Request.QueryString["id2"]!=null)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete books where id = '"+Request.QueryString["id2"].ToString()+"'";
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("display_all_books.aspx");
          

            
        }
    }
}