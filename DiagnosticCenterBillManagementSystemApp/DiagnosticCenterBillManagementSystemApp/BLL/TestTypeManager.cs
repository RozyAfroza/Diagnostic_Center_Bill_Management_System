using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class TestTypeManager
    {
        TestTypeGateway _testTypeGateway = new TestTypeGateway();
        public List<TestType> GetAllType()
        {
            return _testTypeGateway.GetAllTestTypes();
        }
        public List<TestType> GetAllTestTypes()
        {
            return _testTypeGateway.GetAllTestTypes();
        }
        public string SaveTestType(TestType testType)
        {
            string message;
            if (IsTestTypeExists(testType))
            {
                message = "Test Type Already Exists!";
                return message;
            }

            int rowAffected = _testTypeGateway.InsertTestType(testType);
            if (rowAffected > 0)
            {
                message = "Test Type Saved Successfully";
            }
            else
            {
                message = "Test type save unsuccessfull";
            }
            return message;
        }
        private bool IsTestTypeExists(TestType testType)
        {
            var isTestTypeExists = false;
            if (testType == null)
            {
                return isTestTypeExists;
            }

            TestType existingTestType = _testTypeGateway.GetTestBytypeName(testType.Name);

            isTestTypeExists = existingTestType != null;

            return isTestTypeExists;
        }
    }
}