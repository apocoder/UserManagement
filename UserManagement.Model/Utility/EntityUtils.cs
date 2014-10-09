using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserManagement.Model.Utility
{
    public class EntityUtils
    {
        public static UserManagementDBEntities getDataContext()
        {

            return new UserManagementDBEntities();
        }


    }
}
