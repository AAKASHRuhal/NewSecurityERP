using BalLayer;
using Newtonsoft.Json;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Masters
{
    public partial class UnitQRCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BindBranchDropDown();
                    BindUnitDropDown();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        public void BindBranchDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlBranch.DataSource = mc.BindTableData("BRANCH", "branchname");
                ddlBranch.DataTextField = "branchname";
                ddlBranch.DataValueField = "branchcode";
                ddlBranch.DataBind();
                ddlBranch.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }


        public void BindUnitDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlUnit.DataSource = mc.BindTableData("UNIT", "unitcode");
                ddlUnit.DataTextField = "unitname";
                ddlUnit.DataValueField = "unitcode";
                ddlUnit.DataBind();
                ddlUnit.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            ddlBranch.SelectedValue = ddlUnit.SelectedValue = "0";
        }

        protected void ShowQRCode_Click(object sender, EventArgs e)
        {
            string unitId = ddlUnit.SelectedValue;

            MasterCommonClass mc = new MasterCommonClass();
            DataTable dt = mc.BindDataTableFromQuery("Select * from UNIT where unitcode = " + unitId + "");
            QRCodeUnitDetails unitDetails = GetUnitDetailsFromDataTable(dt);

            if (unitDetails != null)
            {
                // Generate QR code
                byte[] qrCodeBytes = GenerateQRCode(unitDetails);

                // Convert QR code byte array to base64 string
                Session["QRCodeBytes"] = qrCodeBytes;

                // Set the image source to display the QR code
                Response.Redirect("/Masters/QRCodePage.aspx");
            }
        }


        private byte[] GenerateQRCode(QRCodeUnitDetails unitDetails)
        {
            // string data = $"UnitMasterCode: {unitDetails.UnitMasterCode}, UnitName: {unitDetails.UnitName}, Latitude: {unitDetails.Latitude}, Longitude: {unitDetails.Longitude}";

            string jsonData = JsonConvert.SerializeObject(unitDetails);

            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(jsonData, QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qrCodeData);
            Bitmap qrCodeImage = qrCode.GetGraphic(20); // Adjust the size as needed

            using (MemoryStream stream = new MemoryStream())
            {
                qrCodeImage.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
                return stream.ToArray();
            }
        }


        private QRCodeUnitDetails GetUnitDetailsFromDataTable(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                return new QRCodeUnitDetails
                {
                    UnitMasterCode = row["UnitCode"].ToString(),
                    UnitName = row["UnitName"].ToString(),
                    //  Latitude = row["Latitude"].ToString(),
                    //  Longitude = row["Longitude"].ToString()
                };
            }
            return null;
        }
    }
}