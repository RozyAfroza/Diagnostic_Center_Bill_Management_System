using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;
using DiagnosticCenterBillManagementSystemApp.Models;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class TestRequestEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            //string patientName = patientNameTextBox.Text;
            //string dateOfBirth = dateOfBirthTextBox.Text;
            //string phoneNo = mobileNoTextBox.Text;
            //int testId = Convert.ToInt32(selectTestDropDownList.SelectedValue);
            //double fee = Convert.ToDouble(feeTextBox.Text);

            //if (testIdHiddenField.Value != "")
            //{
            //    int testId = Convert.ToInt32(testIdHiddenField.Value);
            //    test = new Test(testId, testName, fee, testTypeId);
            //}
            //else
            //{
            //    test = new Test(testName, fee, testTypeId);
            //}

            //string message = "";
            //if (saveButton.Text == "Update")
            //{
            //    message = _testManager.UpdateTest(test);
            //}
            //else
            //{
            //    message = _testManager.SaveTest(test);
            //}
            //Response.Write(message);
        }

        private void LoadTestTypeDropdown()
        {
            //TestTypeManager testTypeManager = new TestTypeManager();
            //List<Test> testTypes = testTypeManager.GetAllTestTypes();
            //selectTestDropDownList.DataSource = testTypes;
            //selectTestDropDownList.DataTextField = "Name";
            //selectTestDropDownList.DataValueField = "Id";
            //selectTestDropDownList.DataBind();
        }
    }
}