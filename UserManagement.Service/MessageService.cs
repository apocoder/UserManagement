using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;
using UserManagement.Data.Repositories;
using UserManagement.Model.ViewModels;

namespace UserManagement.Service
{
   public class MessageService
    {
       private readonly MessageRepository _messageRepository = new MessageRepository();

       public FunctionResult SendMessageToAllUsers(MessageViewModel message)
       {
           return _messageRepository.SendMessageToAllUser(new Model.Message { Subject = message.Subject, Body = message.Body });
       }
    }
}
