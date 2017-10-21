using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//引入命名空间
using System.Web.Http;
using X_1_FirstWebAPI.Model;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;


namespace X_1_FirstWebAPI.Controller
{
    public class UserController : ApiController
    {

        /// <summary>
        /// GET api/values
        /// </summary>
        /// <returns></returns>
        public IEnumerable<string> Get() {
            return new string[] { "value1", "value2" };
        }

        /// <summary>
        ///    GET api/values/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string Get(int id) {
            return "value";
        }

        /// <summary>
        /// POST api/values
        /// </summary>
        /// <param name="value"></param>
        public void Post([FromBody] string value) { 
            
        }

        [HttpGet]
        public string PostUser() {
            DBClass db = new DBClass();
            SqlConnection conn = db.GetConnection();
            string sql = "select * from tb_nav";
            DataSet dataSet = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, conn);
            sqlDataAdapter.Fill(dataSet);
            return JsonConvert.SerializeObject(dataSet);
        }

        public List<Users> GetUser()
        {
            DBClass db = new DBClass();
            SqlConnection conn = db.GetConnection();
            string sql = "select * from tb_nav";
            string title = null;
            SqlDataReader reader = new SqlCommand(sql, conn).ExecuteReader();
            while (reader.Read()) {
                title = reader["title"].ToString();
            }
            var userList = new List<Users> { 
                new Users{ Id = 1, UName = title, UAge = 12,UAddress = title},
            };
            reader.Close();
            var temp = (from u in userList
                        select u).ToList();
            return temp;
        }

    }
}