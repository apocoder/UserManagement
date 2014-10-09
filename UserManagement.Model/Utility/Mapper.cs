using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Model.ViewModels;

namespace UserManagement.Model.Utility
{
    public static  class Mapper
    {
        public static UserViewModel Map(User user)
        {
            return new UserViewModel { 
                Id=user.Id,
                Name=user.Name
            };
        }

        public static MessageViewModel Map(Message message)
        {
            return new MessageViewModel
            {
                Id = message.Id,
                Subject = message.Subject,
                Body = message.Body,
                UserId = message.UserId,
                ReadedAt = message.ReadedAt.HasValue ? message.ReadedAt.Value : DateTime.Now
            };
        }
    }
}
