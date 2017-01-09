using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using DiagnosticCenterBillManagementSystemApp.BLL;

namespace DiagnosticCenterBillManagementSystemApp.DAL
{
    public class TestTypeGateway
    {
        readonly string _connectionString = WebConfigurationManager.ConnectionStrings["DiagnosticBillManagementDBConnectionString"].ConnectionString;

        public List<TestType> GetAllTestTypes()
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "SELECT *FROM TestType";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<TestType> testTypeList = new List<TestType>();
            if (reader.HasRows)
            {
                int serialNo = 0;
                while (reader.Read())
                {
                    int id = Convert.ToInt32(reader["ID"]);
                    int serial = ++ serialNo;
                    string typeName= reader["TypeName"].ToString();
                    var testType = new TestType(id, serial, typeName);
                    testTypeList.Add(testType);
                }
                reader.Close();
            }
            connection.Close();
            return testTypeList;
        }

        public TestType GetTestBytypeName(string name)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "SELECT * FROM TestType WHERE TypeName='" + name + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            TestType testType = null;
            int serialNo = 0;
            if (reader.Read())
            {
                int id = Int32.Parse(reader["ID"].ToString());
                int serial = ++ serialNo;
                string typeName = reader["TypeName"].ToString();
                testType = new TestType(id,serial,typeName);
            }
            return testType;
        }

        public int InsertTestType(TestType testType)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "INSERT INTO TestType(TypeName) VALUES('" + testType.Name + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
    }
}