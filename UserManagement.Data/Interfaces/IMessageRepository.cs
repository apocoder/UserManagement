using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Common.Results;
using UserManagement.Model;

namespace UserManagement.Data.Interfaces
{
    public interface IMessageRepository : ICRUDManager<Message>
    {
        FunctionResult SendMessageToAllUser(Message message);

    }
}
