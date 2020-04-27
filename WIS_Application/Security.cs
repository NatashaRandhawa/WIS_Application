using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace WIS_Application
{
    public class Security
    {
        public static string getHash(string username, string password)
        {
            //get hash
            //mix with salt (calc using another pvt method)
            //apply your mechanism

            string hashpassword = computehash(username + password);

            return hashpassword;
        }
        private static string computehash(string password)
        {
            byte[] bytepassword = ASCIIEncoding.ASCII.GetBytes(password);

            HashAlgorithm algo = SHA512.Create();

            byte[] hashBytePassword = algo.ComputeHash(bytepassword);

            return Convert.ToBase64String(hashBytePassword);

        }
    }
}