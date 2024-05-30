using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Masters
{
    public partial class QRCodePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve QR code bytes from session
                byte[] qrCodeBytes = Session["QRCodeBytes"] as byte[];

                if (qrCodeBytes != null)
                {
                    // Set the QR code image
                    imgQRCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(qrCodeBytes);
                }
                else
                {
                    // Handle the case where QR code bytes are not available
                    // For example, redirect to an error page
                }
            }
        }
    }
}