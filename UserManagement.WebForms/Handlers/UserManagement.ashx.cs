using FB.AjaxGenericHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using UserManagement.Model.ViewModels;
using UserManagement.Service;

namespace UserManagement.WebForms.Handlers
{
    /// <summary>
    /// Summary description for UserManagement
    /// </summary>
    public class UserManagement : BaseHandler
    {
        private readonly UserService _userService = new UserService();
        private readonly MessageService _messageService = new MessageService();
        JavaScriptSerializer jsonSer = new JavaScriptSerializer();
        public object GetUserCount()
        {
            return jsonSer.Serialize(_userService.GetUserCount());
        }

        public object GetUsers()
        {
            return jsonSer.Serialize(_userService.GetUsers());
        }
        public object SendMessageToAllUser(MessageViewModel message)
        {
            return jsonSer.Serialize(_messageService.SendMessageToAllUsers(message)); ;
        }
    }
}