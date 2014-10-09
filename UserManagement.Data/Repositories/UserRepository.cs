using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;
using UserManagement.Model;
using UserManagement.Model.Utility;
using UserManagement.Model.ViewModels;

namespace UserManagement.Data.Repositories
{
    public class UserRepository:DaBase,ICRUDManager<User>
    {
        public Common.Results.FunctionResult Save(User entity)
        {
            try
            {
                using (UserManagementDBEntities context = EntityUtils.getDataContext())
                {
                    context.Users.Add(entity);
                    context.SaveChanges();
                    Result.Message = ResultTexts.Success;
                    Result.Value = 1;
                }

            }
            catch (Exception exception)
            {
                Result.Message = ResultTexts.getErrorText(exception.Message);
            }
            return Result;
        }

        public Common.Results.FunctionResult Update(User entity)
        {
            throw new NotImplementedException();
        }

        public Common.Results.FunctionResult Delete(User entity)
        {
            throw new NotImplementedException();
        }

        public User Get(int id)
        {
            throw new NotImplementedException();
        }

        public User Get(string criteria)
        {
            throw new NotImplementedException();
        }

        public List<User> GetList()
        {
            using (UserManagementDBEntities context=EntityUtils.getDataContext())
            {
                return context.Users.Select(u => u).ToList();
            }
           
        }
        public List<UserViewModel> GetListViewModel()
        {

            using (UserManagementDBEntities context = EntityUtils.getDataContext())
            {
                return context.Users.Select(u => new UserViewModel { Id = u.Id, Name = u.Name }).ToList();
            }
        }
        public bool IsExists(object id)
        {
            throw new NotImplementedException();
        }
        public int Count()
        {
            using (UserManagementDBEntities context=EntityUtils.getDataContext())
            {
                return context.Users.Count();
            }
        }
    }
}
