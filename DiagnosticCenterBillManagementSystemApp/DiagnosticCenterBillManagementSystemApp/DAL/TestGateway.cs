using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using DiagnosticCenterBillManagementSystemApp.Models;
using DiagnosticCenterBillManagementSystemApp.Models.ViewModel;

namespace DiagnosticCenterBillManagementSystemApp.DAL
{
    public class TestGateway
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["DiagnosticBillManagementDBConnectionString"].ConnectionString;
        public int InsertTest(Test test)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO Test(TestName, Fee, TestTypeId) VALUES('" + test.Name + "','" + test.Fee + "'," + test.TestTypeId + ")";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
        public List<TestViewModel> GetAllTests()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM TestViewModel";
            SqlCommand command = new SqlCommand(query, connection);
            List<TestViewModel> testList = new List<TestViewModel>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            int serialNo = 0;
            while (reader.Read())
            {
                //int id = int.Parse(reader["ID"].ToString());
                int serial = ++serialNo;
                string testName = reader["TestName"].ToString();
                double fee = double.Parse(reader["Fee"].ToString());
                string TestType = reader["Type"].ToString();
                TestViewModel testViewModel = new TestViewModel(serial, testName, fee, TestType);

                testList.Add(testViewModel);
            }
            connection.Close();

            return testList;
        }
        public Test GetTestByTestName(string testName)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Test WHERE TestName='" + testName + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            Test test = null;
            int serialNo = 0;
            if (reader.Read())
            {
                int id = int.Parse(reader["ID"].ToString());
                int serial = ++serialNo;
                string TestName = reader["TestName"].ToString();
                double fee = double.Parse(reader["Fee"].ToString());
                int TestTypeId = int.Parse(reader["TestTypeId"].ToString());

                test = new Test(id, serial, TestName, fee, TestTypeId);
            }

            return test;
        }

        public Test GetTestByTestType(int testTypeId)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Test WHERE TestTypeId='" + testTypeId + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            Test test = null;
            int serialNo = 0;
            if (reader.Read())
            {
                int id = int.Parse(reader["ID"].ToString());
                int serial = ++serialNo;
                string TestName = reader["TestName"].ToString();
                double fee = double.Parse(reader["Fee"].ToString());
                int TestTypeId = int.Parse(reader["TestTypeId"].ToString());

                test = new Test(id, serial, TestName, fee, TestTypeId);
            }

            return test;
        }

        public int Update(Test test)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "UPDATE Test SET TestName='" + test.Name + "',Fee='" +
                           test.Fee + "'TestTypeId=" + test.TestTypeId + " WHERE ID=" + test.Id + "";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowsAffected = command.ExecuteNonQuery();
            connection.Close();

            return rowsAffected;
        }

        public bool IsTestTypeExistsForOther(Test test)
        {
            bool isExists = false;
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM Test WHERE ID<>'" + test.Id +
                           "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();


            isExists = reader.HasRows;

            connection.Close();

            return isExists;

        }
    }
}