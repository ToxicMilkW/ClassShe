﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "insert into Users values('" + txtname.Text + "','" +
            txtpasswd.Text + "','" + txtmail.Text + "','" + "普通用户" + "')";

        string conStr = "Data Source=localhost;Initial Catalog=news;Integrated Security=True";
        SqlConnection cn = new SqlConnection(conStr);
        cn.Open();
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        Label1.Text = "注册成功！";
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conStr = "Data Source=localhost;Initial Catalog=news;Integrated Security=True";
        SqlConnection cn = new SqlConnection(conStr);
        cn.Open();
        string sql = "select count(*) from users where username='" + txtname.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        string res = cmd.ExecuteScalar().ToString();
        if (res == "1")
        {
            Response.Write("<script>alert('用户已存在')</script>");
            txtname.Focus();
        }
        else
        {
            Response.Write("<script>alert('用户名可用')</script>");
            txtname.Focus();
        }
        cn.Close();
    }
}