﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI;

public partial class Module_Blog_AddFriend : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/BlogIndex.aspx");
        }
    }

    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("LinkManManage.aspx");
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        string ID;
        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter =
            new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();

        string P_str_Com = "Insert into tb_Message(FriendName,Sex,HomePhone,MobilePhone,QQ,ICQ,Address,Birthday,Email,PostCode,BlogID,IP)"
                           + " values ('" + txtName.Text + "','" + DropDownList1.SelectedValue + "','" + txtHphone.Text +
                           "'"
                           + ",'" + txtMphone.Text + "','" + txtQQ.Text + "','" + txtICQ.Text + "','" + txtAddress.Text +
                           "'"
                           + ",'" + txtBirthday.Text + "','" + txtEmail.Text + "','" + txtPostCode.Text + "','" + ID +
                           "','" + Request.UserHostAddress + "')";
        SqlData da = new SqlData();
        if (!ValidateDate1(txtBirthday.Text) && !ValidateDate2(txtBirthday.Text) && !ValidateDate3(txtBirthday.Text))
        {
            Response.Write(
                "<script language=javascript>alert('输入的日期格式有误！');location='javascript:history.go(-1)'</script>");
        }
        else
        {
            bool add = da.ExceSQL(P_str_Com);
            if (add)
            {
                Response.Write("<script language=javascript>alert('添加成功!');location='AddLinkMan.aspx'</script>");
            }
            else
            {
                Response.Write(
                    "<script language=javascript>alert('添加失败！');location='javascript:history.go(-1)'</script>");
            }
        }
    }

    public bool ValidateDate1(string input)
    {
        return Regex.IsMatch(input, "\\b(?<year>\\d{2,4})/(?<month>\\d{1,2})/(?<day>\\d{1,2})\\b");
    }

    public bool ValidateDate2(string input)
    {
        return Regex.IsMatch(input, "\\b(?<year>\\d{2,4})-(?<month>\\d{1,2})-(?<day>\\d{1,2})\\b");
    }

    public bool ValidateDate3(string input)
    {
        return Regex.IsMatch(input, "\\b(?<year>\\d{2,4})年(?<month>\\d{1,2})月(?<day>\\d{1,2})日\\b");
    }
}