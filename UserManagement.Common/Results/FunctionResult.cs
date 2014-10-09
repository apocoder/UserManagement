using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserManagement.Common.Results
{
    public class FunctionResult
    {
        private string _message;

        public string Message
        {
            get { return _message; }
            set { _message = value; }
        }

        private int _value;

        public int Value
        {
            get { return _value; }
            set { _value = value; }
        }

    }
    public class ResultTexts
    {
        public static string SaveText = "Kaydedildi.";
        public static string UpdateText = "Güncellendi.";
        public static string DeleteText = "Silindi.";
        public static string DuplicateRecord = "Aynı kayıt mevcut!";
        public static string Error = "Hata oluştu!";
        public static string Success = "Başarılı.";
        public static string UserNotFound = "Kullanıcı Bulunamadı!";
        public static string NotFound = "Kayıt Bulunamadı!";
        public static string BlankField = "Lütfen tüm alanları doldurun!";
        public static string getErrorText(string exception)
        {
            return ErrorText + exception;
        }
        public static string ErrorText = "Hata Oluştu  : ";
    }
}
