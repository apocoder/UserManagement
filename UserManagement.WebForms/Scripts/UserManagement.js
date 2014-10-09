var serviceURL = "Handlers/UserManagement.ashx";

function GetUserCount() {
    $.ajax({
        url: serviceURL,
        type: 'GET',
        data: { method: 'GetUserCount' },
        success: function (data) {
            $("#userCount").text(data);
        }
    });
}

function GetUsers() {
    $.ajax({
        url: serviceURL,
        type: 'GET',
        data: { method: 'GetUsers'},
        success: function (data) {

            $("tr:has(td)").remove();

            $.each($.parseJSON(data), function (index, user) {
                var td_categories = $("<td/>");
                var td_tags = $("<td/>");

                $("#added-users").append($('<tr/>')
                        .append($('<td/>').html("<span>" + user.Id + "</span>"))
                        .append($('<td/>').html("<span>" + user.Name + "</span>"))
                     
                );
            });
        }
    });
}

function SendMessageToAllUser(subject,body) {

        var message = {
            Subject: subject,
            Body: body
        };

        $.ajax({
            url: serviceURL,
            type: 'POST',
            data: {
                method: 'SendMessageToAllUser',
                args: { message: message }
            },
            success: function (data) {
                var obj = $.parseJSON(data);
                alert(obj.Message);
            }
        });
}