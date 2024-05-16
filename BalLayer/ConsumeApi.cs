using System;
using System.Collections.Generic;
using System.IO;
using RestSharp;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace BalLayer
{
    public class ConsumeApi
    {
        public string ConsumePostApi(string apiurl)
        {
            string outPutMsg = string.Empty;

            WebRequest objRequest = WebRequest.Create(apiurl);
            objRequest.Method = "POST";
            objRequest.ContentLength = 0;
            HttpWebResponse objRespone = null;
            objRespone = (HttpWebResponse)objRequest.GetResponse();

            using (Stream objstream = objRespone.GetResponseStream())
            {
                StreamReader sr = new StreamReader(objstream);
                outPutMsg = sr.ReadToEnd();
                sr.Close();
            }

            return outPutMsg;
        }

        public string ConsumePostPan(string apiurl)
        {
            string outPutMsg = string.Empty;

            var client = new RestClient("https://sandbox.aadhaarkyc.io/api/v1/pan/pan");
            var request = new RestRequest(Method.Post.ToString());
            request.Timeout = (int)TimeSpan.FromSeconds(10).TotalMilliseconds;
            const SecurityProtocolType tls13 = (SecurityProtocolType)12288;

            ServicePointManager.SecurityProtocol = tls13 | SecurityProtocolType.Tls12;

            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTY2ODQyMjgxNiwianRpIjoiYWY4ZjU5NjYtMWQ1OC00MDBmLThiM2EtYzEzZDBkMzQ5MmQwIiwidHlwZSI6ImFjY2VzcyIsImlkZW50aXR5IjoiZGV2LmNhbnRpY2xlaW5kaWFAc3VyZXBhc3MuaW8iLCJuYmYiOjE2Njg0MjI4MTYsImV4cCI6MTY2ODg1NDgxNiwidXNlcl9jbGFpbXMiOnsic2NvcGVzIjpbIndhbGxldCJdfX0.2NgHagm12CaBaTQyvNaoUPkoCKvO6-_8Yac5nQSoMdA");
            var body = @"{" + "\n" + @"	""id_number"": """ + apiurl + "" + "\"" + @"}";
            request.AddParameter("application/json", body, ParameterType.RequestBody);
            RestResponse response = client.Execute(request);
            return response.Content.ToString();
        }

        public string ConsumePostAadhaarGenerateOTP(string AadharNo)
        {
            string outPutMsg = string.Empty;

            var client = new RestClient("https://kyc-api.surepass.io/api/v1/aadhaar-v2/generate-otp");
            var request = new RestRequest(Method.Post.ToString());
            request.Timeout = (int)TimeSpan.FromSeconds(10).TotalMilliseconds;
            const SecurityProtocolType tls13 = (SecurityProtocolType)12288;
            ServicePointManager.SecurityProtocol = tls13 | SecurityProtocolType.Tls12;

            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcwODQwNzI3MSwianRpIjoiYzExZjMzYzUtNDBiZS00NmVmLTkzZWMtYjM0MTc1YWRhN2ZhIiwidHlwZSI6ImFjY2VzcyIsImlkZW50aXR5IjoiZGV2LmNhbnRpY2xlMTJAc3VyZXBhc3MuaW8iLCJuYmYiOjE3MDg0MDcyNzEsImV4cCI6MjAyMzc2NzI3MSwidXNlcl9jbGFpbXMiOnsic2NvcGVzIjpbInVzZXIiXX19.r8uNW5J0w6MSFoeNiKZ-QywirR63D_fhJr043xpJgF8");
            //var body = @"{" + "\n  id_number: " + apiurl + "\n" + @"}";

            var body = @"{" + "\n" +
            @"	""id_number"": " + AadharNo + "" + "\n" +
            @"}";

            request.AddParameter("application/json", body, ParameterType.RequestBody);
            RestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);
            return response.Content.ToString();
        }

        public string ConsumePostAadhaarVerification(string clientId, string OTP)
        {
            string outPutMsg = string.Empty;

            var client = new RestClient("https://kyc-api.surepass.io/api/v1/aadhaar-v2/submit-otp");
            var request = new RestRequest(Method.Post.ToString());
            request.Timeout = (int)TimeSpan.FromSeconds(10).TotalMilliseconds;
            const SecurityProtocolType tls13 = (SecurityProtocolType)12288;
            ServicePointManager.SecurityProtocol = tls13 | SecurityProtocolType.Tls12;
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcwODQwNzI3MSwianRpIjoiYzExZjMzYzUtNDBiZS00NmVmLTkzZWMtYjM0MTc1YWRhN2ZhIiwidHlwZSI6ImFjY2VzcyIsImlkZW50aXR5IjoiZGV2LmNhbnRpY2xlMTJAc3VyZXBhc3MuaW8iLCJuYmYiOjE3MDg0MDcyNzEsImV4cCI6MjAyMzc2NzI3MSwidXNlcl9jbGFpbXMiOnsic2NvcGVzIjpbInVzZXIiXX19.r8uNW5J0w6MSFoeNiKZ-QywirR63D_fhJr043xpJgF8");
            var body = @"{" + "\n" +
           @"	""client_id"": """ + @"" + clientId + @"""," + "\n" +
           @"	""otp"": """ + @"" + OTP + @"""" + "\n" +
           @"}";
            request.AddParameter("application/json", body, ParameterType.RequestBody);
            RestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);
            //Session["Response"] = Convert.ToString(response.ResponseStatus); 
            return response.Content.ToString() + "#" + Convert.ToString(response.ResponseStatus);

        }

        public string ConsumePostBankVerification(string AccountNo, string Ifsc)
        {

            string outPutMsg = string.Empty;

            var client = new RestClient("https://kyc-api.surepass.io/api/v1/bank-verification/pennyless");
            var request = new RestRequest(Method.Post.ToString());
            request.Timeout = (int)TimeSpan.FromSeconds(10).TotalMilliseconds;
            const SecurityProtocolType tls13 = (SecurityProtocolType)12288;
            ServicePointManager.SecurityProtocol = tls13 | SecurityProtocolType.Tls12;
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcwODQwNzI3MSwianRpIjoiYzExZjMzYzUtNDBiZS00NmVmLTkzZWMtYjM0MTc1YWRhN2ZhIiwidHlwZSI6ImFjY2VzcyIsImlkZW50aXR5IjoiZGV2LmNhbnRpY2xlMTJAc3VyZXBhc3MuaW8iLCJuYmYiOjE3MDg0MDcyNzEsImV4cCI6MjAyMzc2NzI3MSwidXNlcl9jbGFpbXMiOnsic2NvcGVzIjpbInVzZXIiXX19.r8uNW5J0w6MSFoeNiKZ-QywirR63D_fhJr043xpJgF8");
            var body = @"{" + "\n" +
            @"	""id_number"": """ + @"" + AccountNo + @"""," + "\n" +
            @"	""ifsc"": """ + @"" + Ifsc + @"""," + "\n" +
            @"	""ifsc_details"": """ + @"" + true + @"""" + "\n" +
            @"}";
            request.AddParameter("application/json", body, ParameterType.RequestBody);
            RestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);
            //Session["Response"] = Convert.ToString(response.ResponseStatus); 
            return response.Content.ToString() + "#" + Convert.ToString(response.ResponseStatus);
        }
    }

    public class Response
    {
        public string OutputCode { get; set; }
        public string Data { get; set; }
        public string OutputMessage { get; set; }
    }
}

