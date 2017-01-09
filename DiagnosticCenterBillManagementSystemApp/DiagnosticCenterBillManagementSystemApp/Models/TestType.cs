using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class TestType
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string Name { get; set; }

        public TestType(int serialNo, string typeName)
        {
            this.SerialNo = serialNo;
            this.Name = typeName;
        }

        public TestType(int id, int serial, string name):this(serial, name)
        {
            this.Id = id;
        }
        
        public TestType(string name)
        {
            this.Name = name;
        }
    }
}