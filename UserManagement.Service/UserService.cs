using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Data.Repositories;
using UserManagement.Model;
using UserManagement.Model.ViewModels;

namespace UserManagement.Service
{
   public class UserService
    {
       private readonly UserRepository _userRepository = new UserRepository();

       public List<UserViewModel> GetUsers() {
           return _userRepository.GetListViewModel();
       }

       public int GetUserCount()
       {
           return _userRepository.Count();
       }
    }
}
