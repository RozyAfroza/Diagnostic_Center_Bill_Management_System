using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiagnosticCenterBillManagementSystemApp.Models
{
    public class Test
    {

        public Test(int serialNo, string testName, double fee, int testTypeId)
        {
            this.SerialNo = serialNo;
            this.Name = testName;
            this.Fee = fee;
            this.TestTypeId = testTypeId;

        }

        public Test(int id, int serialNo, string testName, double fee, int testTypeId)
            : this(serialNo, testName, fee, testTypeId)
        {
            Id = id;
        }

        public Test(string testName, double fee, int testTypeId)
        {
            this.Name = testName;
            this.Fee = fee;
            this.TestTypeId = testTypeId;
        }

        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string Name { get; set; }
        public double Fee { get; set; }
        public int TestTypeId { get; set; }
    }
}