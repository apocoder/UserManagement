using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;

namespace UserManagement.Data
{
    public abstract class DaBase
    {
        public FunctionResult Result { get; set; }
        
        static DaBase()
        {

        }

        public DaBase()
        {
            Result = new FunctionResult { Value = 0, Message = "" };
        }
       
    }
}
