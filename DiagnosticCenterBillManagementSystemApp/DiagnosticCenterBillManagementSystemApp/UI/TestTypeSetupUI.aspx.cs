using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class TestTypeSetupUI : System.Web.UI.Page
    {
        
        TestTypeManager _testTypeManager = new TestTypeManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
            }
            FillAllTestType();
        }

        protected void saveButton_Click1(object sender, EventArgs e)
        {
            string typeName = typeNameTextBox.Text;
            TestType testType = new TestType(typeName);
            string message = _testTypeManager.SaveTestType(testType);
            Response.Write(message);
            FillAllTestType();
        }
        private void FillAllTestType()
        {
            List<TestType> testTypeList = _testTypeManager.GetAllType();
            typeNameGridView.DataSource = testTypeList;
            typeNameGridView.DataBind();
        }

    }
}