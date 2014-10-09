<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserManagement.WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <script type="text/javascript">
            $(document).ready(function () {
                GetUserCount();
                GetUsers();
            });
</script>
    <div>
        <div class="container">
<div class="row">

  <form role="form" action="" method="post" >
    <div class="col-lg-6">
     
 
      <div class="form-group">
        <label for="messageSubject">Konu</label>
        <div class="input-group">
          <input type="text" class="form-control" id="messageSubject" name="messageSubject" placeholder="Konu" required  >
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="messageBody">Mesaj</label>
        <div class="input-group"
>
          <textarea name="messageBody" id="messageBody" class="form-control" rows="5" required></textarea>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
     
      <input  name="submit" id="submit" value="Gönder" class="btn btn-info pull-right" onclick="SendMessageToAllUser($('#messageSubject').val(), $('#messageBody').val())" >
    </div>
  </form>
  <hr class="featurette-divider hidden-lg">
  
</div>

</div>
    </div>
    <div style="width:700px;padding:20px;S">
			<h5 style="text-align:center"><i style="color:#ccc"><small>Kullanıcı Sayısı :</small><h3><p id="userCount"></p></h3></i></h5>
		
			<table id="added-users" class="table">
				<tr>
					<th>Id</th>
					<th>Name</th>
				</tr>
			</table>
		</div>
</ul>
</asp:Content>

