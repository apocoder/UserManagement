using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;
using UserManagement.Data.Interfaces;
using UserManagement.Model;
using UserManagement.Model.Utility;

namespace UserManagement.Data.Repositories
{
   public class MessageRepository:DaBase,IMessageRepository
    {
       private readonly UserRepository _userRepository = new UserRepository();

        public Common.Results.FunctionResult Save(Message entity)
        {
            try
            {
                using (UserManagementDBEntities context = EntityUtils.getDataContext())
                {
                    context.Messages.Add(entity);
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

        public Common.Results.FunctionResult Update(Message entity)
        {
            throw new NotImplementedException();
        }

        public Common.Results.FunctionResult Delete(Message entity)
        {
            throw new NotImplementedException();
        }

        public Message Get(int id)
        {
            throw new NotImplementedException();
        }

        public Message Get(string criteria)
        {
            throw new NotImplementedException();
        }

        public List<Message> GetList()
        {
            throw new NotImplementedException();
        }

        public bool IsExists(object id)
        {
            throw new NotImplementedException();
        }

        public FunctionResult SendMessageToAllUser(Message message)
        {
            try
            {
                using (UserManagementDBEntities context = EntityUtils.getDataContext())
                {
                    
                    var userList = _userRepository.GetList();
                    int i = 0;
                    foreach (var user in userList)
                    {
                       Result= Save(new Message { UserId = user.Id, Subject = message.Subject, Body = message.Body });
                       if (Result.Value == 1)
                           i++;
                    }
                    if (i>0)
                    {
                        Result.Message = string.Format("Mesaj {0} adet Kullanıcıya gönderildi",i);
                        Result.Value = i;
                    }
                    else
                        Result.Message = "Mesaj gönderimi başarısız";
                    
                }
            }
            catch (Exception ex)
            {
                Result.Message = ResultTexts.getErrorText(ex.Message);
            }
            return Result;
        }
    }
}
