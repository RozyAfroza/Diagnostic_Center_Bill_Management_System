using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL;
using DiagnosticCenterBillManagementSystemApp.Models;
using DiagnosticCenterBillManagementSystemApp.Models.ViewModel;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class TestManager
    {
        TestGateway _testGateway = new TestGateway();

        public string SaveTest(Test test)
        {
            if (IsTestExists(test))
            {
                return "Test Type Already Exists!";
            }
            var rowAffected = _testGateway.InsertTest(test);

            if (rowAffected > 0)
            {
                return "Saved Successfully!";
            }
            return "Insertion Failed!";
        }
        public bool IsTestExists(Test test)
        {
            var isTestExists = false;
            if (test == null)
            {
                return isTestExists;
            }

            var existingTest = _testGateway.GetTestByTestName(test.Name);

            isTestExists = existingTest != null;

            return isTestExists;
        }
        public Test GetTestByTestTypeId(int testTypeId)
        {
            return _testGateway.GetTestByTestType(testTypeId);
        }
        public List<TestViewModel> GetAllTests()
        {
            return _testGateway.GetAllTests();
        }


        public string UpdateTest(Test test)
        {
            bool isTestTypeExistsForOther = _testGateway.IsTestTypeExistsForOther(test);

            if (isTestTypeExistsForOther)
            {
                return "Test Type already exists! ";
            }
            var rowsAffected = _testGateway.Update(test);

            if (rowsAffected > 0)
            {
                return "Updated successfully";
            }

            return "Update Failed!";
        }
    }
}