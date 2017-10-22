using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Http;
using X_1_FirstWebAPI.Model;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace X_1_FirstWebAPI.Controller
{
    public class ArticleController : ApiController
    {
        [HttpGet]
        public string getAricle() {
            DBClass db = new DBClass();
            SqlConnection conn = db.GetConnection();
            string sql = "select * from tb_article";
            DataSet dataSet = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, conn);
            sqlDataAdapter.Fill(dataSet);
            return JsonConvert.SerializeObject(dataSet);
        }
    }
}