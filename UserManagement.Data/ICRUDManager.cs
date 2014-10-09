using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;

namespace UserManagement.Data
{
    public interface ICRUDManager<T> where T:class
    {
        FunctionResult Save(T entity);
        FunctionResult Update(T entity);
        FunctionResult Delete(T entity);
        T Get(int id);
        T Get(string criteria);
        List<T> GetList();
        bool IsExists(object id);
    }
}
