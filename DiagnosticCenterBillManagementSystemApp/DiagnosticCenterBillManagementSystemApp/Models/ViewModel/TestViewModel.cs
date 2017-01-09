using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiagnosticCenterBillManagementSystemApp.Models.ViewModel
{
    public class TestViewModel
    {
        public TestViewModel(int serial, string testName, double fee, string testType)
        {
            this.SerialNo = serial;
            this.TestName = testName;
            this.Fee = fee;
            this.TestType = testType;
        }

        public int SerialNo { get; set; }
        public string TestName { get; set; }
        public double Fee { get; set; }
        public string TestType { get; set; }
    }
}