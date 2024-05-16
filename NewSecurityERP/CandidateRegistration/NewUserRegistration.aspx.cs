using BalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace NewSecurityERP.CandidateRegistration
{
    public partial class NewUserRegistration : System.Web.UI.Page
    {
        static int CompanyID = 0;
        static int UserId = 0;
        static string APIFolderPath = WebConfigurationManager.AppSettings.Get("APIFolderPath");
        static string APIURL = WebConfigurationManager.AppSettings.Get("APIURL");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Session["CompanyID"])))
                {
                    CompanyID = Convert.ToInt32(Session["CompanyID"]);
                    UserId = Convert.ToInt32(Session["UserID"]);

                    if (!IsPostBack)
                    {

                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {            
            string fileName = "";
            try
            {
                if (avatarUpload.PostedFile != null)
                {
                    int contentLength = avatarUpload.PostedFile.ContentLength;
                    string contentType = avatarUpload.PostedFile.ContentType;
                    string Ext = System.IO.Path.GetExtension(avatarUpload.PostedFile.FileName);
                    DateTime now = DateTime.Now;
                    string formattedDate = now.ToString("ddMMyyyy");
                    string formattedTime = now.ToString("HHmm");
                    fileName = $"Photo_{formattedDate}_{formattedTime}_{UserId}{Ext}";
                    avatarUpload.PostedFile.SaveAs(APIFolderPath + "EmpPhoto/" + fileName);
                }

                ConsumeApi objConsumeApi = new ConsumeApi();
                string resultMsg = "";
                string AadharNo = txtAadharNo.Text;
                string Salutation = ddlSalutation.SelectedValue;
                string Name = txtCandidateName.Text;
                string FatherName = txtFatherName.Text;
                string MotherName = txtMotherName.Text;
                string DOB = txtDateofBirth.Text;
                string Gender = ddlGender.SelectedItem.Text;
                string MaritalSts = ddlMarried.SelectedItem.Text;
                string spouseName = txtSpouse.Text;
                string DOJ = txtDoj.Text;
                string JobType = ddlJobType.SelectedItem.Text;
                string PanNo = txtPANNo.Text;
                string Email = txtEmail.Text;
                string isPreUAN = rdoPreUAN.SelectedItem.Text;
                string PreUAN = txtPreviousUAN.Text;
                string isPreESI = rdoESI.SelectedItem.Text;
                string preESICode = txtPreviousESICode.Text;
                string RegId = string.IsNullOrEmpty(txtRegistrationID.Text) ? "0" : txtRegistrationID.Text;
                string AadharVerified = string.IsNullOrEmpty(txtOTP.Text) ? "1" : txtOTP.Text;
                string ImageSrc = fileName;
                string TranSactionType = "1";

                if (RegId != "0")
                {
                    TranSactionType = "2";
                }

                string apiUrl = APIURL + "//api//CandidateRegistration//AddCandidate?PageType=1&TransactionType=" + TranSactionType + "&CandidateName=" + Name + "&AadharNo=" + AadharNo + "&Salutation=" + Salutation + "&JobType=" + JobType + "&DateofBirth=" + DOB + "&DOJ=" + DOJ + "&Gender=" + Gender + "&MaritalStatus=" + MaritalSts + "&FatherName=" + FatherName + "&MotherName=" + MotherName + "&SpouseName=" + spouseName + "&PanNo=" + PanNo + "&EmailID=" + Email + "&PreviousUAN=" + isPreUAN + "&PreUANNo=" + PreUAN + "&PreviousESI=" + isPreESI + "&PreESICode=" + preESICode + "&flag=" + AadharVerified + "&CompanyID=" + CompanyID + "&RegistrationID=" + RegId + "&UserID=" + UserId + "&RegStatus=InComplete&ImageSrc=" + ImageSrc;

                ConsumeApi objConsumeApi1 = new ConsumeApi();
                string resultMsg1 = objConsumeApi.ConsumePostApi(apiUrl);
                string regID = "";

                using (var ms = new MemoryStream(Encoding.Unicode.GetBytes(resultMsg1)))
                {
                    DataContractJsonSerializer deserializer = new DataContractJsonSerializer(typeof(Response));
                    Response objResponse = (Response)deserializer.ReadObject(ms);
                    resultMsg = objResponse.OutputMessage;
                    regID = objResponse.Data;
                }

                if (resultMsg == "Candidate data saved successfuly!" || resultMsg == "Candidate data updated successfuly!")
                {
                    activeTab.Value = "1";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject(resultMsg)})</script>", false);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Success: Test Toaster Successfully!")})</script>", false);
        }
    }
}