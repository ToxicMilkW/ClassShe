using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conStr = "Data Source=localhost;Initial Catalog=news;Integrated Security=True";
        SqlConnection cn = new SqlConnection(conStr);
        cn.Open();
        string sql = "SELECT COUNT(*) FROM Users WHERE UserName='"
              + txtname.Text + "' AND Password='" + txtpasswd.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        String result = cmd.ExecuteScalar().ToString();
        if (result == "1") {
            Response.Write("<script>alert('登陆成功')</script>");
            Session["Username"] = txtname.Text;
        }
        else Response.Write("<script>alert('登陆失败')</script>");
        cn.Close();

    }
}