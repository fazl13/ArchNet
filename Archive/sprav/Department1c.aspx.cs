﻿using System;
using System.Data;
using System.Data.SqlClient;

namespace WebArchiveR6
{
    public partial class Department1c : System.Web.UI.Page
    {
        public faList list;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["texttree1c"] = Session["texttree1c"] ?? "Нефтекамск";
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {

        }

        protected DataTable GetData()
        {
            DataTable res = null;
            SqlConnection conn = new SqlConnection(Properties.Settings.Default.constr);
            try
            {
                conn.Open();
                string cur_basename = Master.cur_basename != "" ? Master.cur_basename : "";
                string sql = "SELECT * FROM _department_1c_pre order by pos";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                res = new DataTable();
                sqlDataAdapter.Fill(res);
                conn.Close();


                string where = (Session["texttree1c"] ?? "").ToString().Trim();
                if (where != "")
                {
                    where = where.ToLower();
                    string it = "";
                    foreach (DataRow row in res.Rows)
                        if (row.RowState != DataRowState.Deleted && row["treetext"].ToString().ToLower().Contains(where))
                        {
                            row["tree_expanded"] = true;
                            it = row["tree_parent"].ToString();
                            for (int i = 0; i < 10; i++)
                                foreach (DataRow r1 in res.Rows)
                                    if (r1.RowState != DataRowState.Deleted && r1["id"].ToString() == it)
                                    {
                                        r1["tree_expanded"] = true;
                                        it = r1["tree_parent"].ToString();
                                    }
                        }
                    foreach (DataRow row in res.Rows) if (row.RowState != DataRowState.Deleted && !(bool)row["tree_expanded"])
                            row.Delete();
                }
                res.AcceptChanges();
            }
            catch
            {
                conn.Close();
            }
            return res;
        }

        // Запрос данных
        protected void jqDepart_DataRequesting(object sender, Trirand.Web.UI.WebControls.JQGridDataRequestEventArgs e)
        {
            jqDepart.DataSource = GetData();
            jqDepart.DataBind();
        }
    }
}