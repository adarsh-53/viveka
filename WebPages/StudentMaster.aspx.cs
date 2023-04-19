using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class WebPages_StudentMaster : System.Web.UI.Page
{
    DataManager dm = new DataManager();
    SqlConnection objsql = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"].ToString());
    int FlagPhoto = 0;
    int FlagAadhar = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();

        }
    }
    public void ShowMessage(string msg)
    {
        StringBuilder bd = new StringBuilder();
        bd.Append(@"<script type='txt/javascript'>");
        bd.Append("Alert('" + msg + "');");
        bd.Append(@"</script>");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Message", bd.ToString(), false);
    }

    private void ShowMessageAndRedirect(string msg, string url)
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("function Redirect()");
            sb.Append("{");
            sb.Append(" window.location.href='" + url + "'");
            sb.Append("}");
            sb.Append("alert('" + msg + "');");
            sb.Append("setTimeout('Redirect()',1000);");
            Response.Write("<script>" + sb + "</script>");
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
            //Response.Redirect("oops.aspx");
        }
    }
    private void BindGrid()
    {
        try
        {
            //int signid = int.Parse(Request.Cookies["UserId"].Value);
            gvstudent.DataSource = null;
            gvstudent.DataBind();
            string count = "";
            //string dob = DateTime.Today.ToString("dd/MM/yyyy");
            ////string Qry = "select * ,convert(varchar,Student_DOB,103) as DOB from dbo.Tbl_Student where Student_ActiveFlag=1";
            if (ddlShowTop.SelectedIndex > 0)
            {
                int top = int.Parse(ddlShowTop.SelectedItem.ToString());
                count += " top(" + top + ") ";
            }

            string Qry = "SELECT  " + count + " * FROM dbo.tbl_Registration WHERE Reg_ActiveFlag=1";
            if (txtregno.Text != "")
                Qry += " AND Reg_RegNo LIKE '%" + txtregno.Text + "%'";

            if (txtname.Text != "")
                Qry += " AND Reg_Name LIKE '%" + txtname.Text + "%'";

            if (txtphno.Text != "")
                Qry += " AND Reg_Contact LIKE '%" + txtphno.Text + "%'";

            if (txtpassword.Text != "")
                Qry += " AND Reg_Password LIKE '%" + txtpassword.Text + "%'";

            if (txtemail.Text != "")
                Qry += " AND Reg_Email LIKE '%" + txtemail.Text + "%'";

            Qry += "order by Reg_MID desc";
            Qry += " Select count(Reg_MID) TotalRecords from tbl_Registration where Reg_ActiveFlag=1";
            DataSet ds = dm.GetDataSet(Qry);
            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblCount.Text = ds.Tables[0].Rows.Count + " Records Found Out Of " + ds.Tables[1].Rows[0]["TotalRecords"].ToString();
                    gvstudent.DataSource = ds.Tables[0];
                    gvstudent.DataBind();
                }
            }
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
        }
    }

    private void GetDetails(int Mid)
    {
        string Query = "SELECT * FROM tbl_Registration where Reg_MID=" + Mid + " and Reg_ActiveFlag=1";
        DataSet ds = dm.GetDataSet(Query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtregno.Text = ds.Tables[0].Rows[0]["Reg_RegNo"].ToString();
            txtname.Text = ds.Tables[0].Rows[0]["Reg_Name"].ToString();
            txtphno.Text = ds.Tables[0].Rows[0]["Reg_Contact"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["Reg_Email"].ToString();
            txtpassword.Text = ds.Tables[0].Rows[0]["Reg_Password"].ToString();

            btnsubmit.Text = "Update";
            btnrefresh.Text = "Cancel";
            btnsubmit.CausesValidation = false;
            divStudentMaster.Visible = true;
            divViewStudent.Visible = false;
        }
    }

    private void CleraAll()
    {
        txtname.Text = "";
        txtregno.Text = "";
        txtphno.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";

    }

    // protected void gvintroducer_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName.ToString() == "Edt")
    //    {
    //        int Mid = int.Parse(e.CommandArgument.ToString());
    //        GetDetails(Mid);
    //    }

    //    if (e.CommandName.ToString() == "Del")
    //    {
    //        int Mid = int.Parse(e.CommandArgument.ToString());
    //        string query = "update Tbl_Student set Student_ActiveFlag=0 where Student_MasterId='" + Mid + "'";
    //        objsql.Open();
    //        SqlCommand cmd = new SqlCommand(query, objsql);
    //        int res = cmd.ExecuteNonQuery();
    //        objsql.Close();
    //        if (res > 0)
    //        {
    //            BindGrid();
    //            ShowMessage("Successfully Deleted");
    //        }
    //        else
    //        {
    //            ShowMessage("Sorry I Try Again");
    //        }
    //    }
    //}


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string regno = txtregno.Text;
            string name = txtname.Text;
            string phno = txtphno.Text;
            string email = txtemail.Text;
            string password = txtpassword.Text;


            if (btnsubmit.Text == "Submit")
            {
                string qry = "Insert into tbl_Registration(Reg_RegNo,Reg_Name,Reg_Contact,Reg_Email,Reg_Password)values('" + regno + "','" + name + "','" + phno + "','" + email + "','" + password + "')";
                objsql.Open();
                SqlCommand cmd = new SqlCommand(qry, objsql);
                int res = cmd.ExecuteNonQuery();
                objsql.Close();
                if (res > 0)
                {
                    ShowMessageAndRedirect("Submitted Successfully", "StudentMaster.aspx");
                }
                else
                {
                    ShowMessageAndRedirect("Sorry Try Again!", "StudentMaster.aspx");
                }
            }
            else
            {
                string qry1 = "update tbl_Registration set Reg_RegNo='" + regno + "',Reg_Name='" + name + "',Reg_Contact='" + phno + "',Reg_Email='" + email + "',Reg_Password='" + password + "' ";
                objsql.Open();
                SqlCommand cmd = new SqlCommand(qry1, objsql);
                int res = cmd.ExecuteNonQuery();
                objsql.Close();
                if (res > 0)
                {
                    ShowMessageAndRedirect("Submitted Successfully", "StudentMaster.aspx");
                    divStudentMaster.Visible = false;
                    divViewStudent.Visible = true;
                }
                else
                {
                    ShowMessageAndRedirect("Sorry Try Again!", "StudentMaster.aspx");
                    divStudentMaster.Visible = false;
                    divViewStudent.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
        }
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        divStudentMaster.Visible = true;
        divViewStudent.Visible = false;
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        divStudentMaster.Visible = false;
        divViewStudent.Visible = true;
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtregno.Text = "";
        txtphno.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
    }
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        CleraAll();
    }
    protected void gvstudent_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdEdit")
        {
            int RegId = int.Parse(e.CommandArgument.ToString());

            string qry = "select * from dbo.tbl_Registration where Reg_ActiveFlag=1 and Reg_MID='" + RegId + "'";
            DataSet ds = dm.GetDataSet(qry);
            if (ds != null)
            {

                divStudentMaster.Visible = false;
                divViewStudent.Visible = true;
                GetDetails(RegId);





                btnsubmit.Text = "UPDATE";
            }
        }
        else if (e.CommandName == "Del")
        {
            try
            {
                int RegId = int.Parse(e.CommandArgument.ToString());
                int UserId = 0;
                int Result = 0;



               // string qry1 = "delete from tbl_Registration  Reg_RegNo='" + regno + "',Reg_Name='" + name + "',Reg_Contact='" + phno + "',Reg_Email='" + email + "',Reg_Password='" + password + "' ";
                string qry1 = "update table tbl_Registration  set Reg_ActiveFlag=0 where Reg_MID='" + RegId + "'";

                objsql.Open();
                SqlCommand cmd = new SqlCommand(qry1, objsql);
                int res = cmd.ExecuteNonQuery();
                objsql.Close();
                if (res > 0)
                {
                    ShowMessageAndRedirect("Deleted Successfully", "StudentMaster.aspx");
                    BindGrid();
                }
                else
                {
                    ShowMessageAndRedirect("Sorry Try Again!", "StudentMaster.aspx");
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
            }

        }
    }
}
























