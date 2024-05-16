$(document).ready(function() {
    $('#username, #password').on('keyup', function(event) {
        if (event.key === 'Enter') {
            $('#login_btn').click();
        }
    });

    $("#login_form").submit(function(event) {
        event.preventDefault();
        var $username = $("#username").val();
        var $password = $("#password").val();

        $('.error').hide();
        $('#login_btn').hide();
        $('#loading').show();

        // Introduce a 5-second delay before submitting the form
        setTimeout(function() {
            $.ajax({
                type: "POST",
                url: "server/login.php",
                data: {
                    username: $username,
                    password: $password
                },
                success: function(response) {
                    $('#loading').hide();
                    $('#login_btn').show();

                        // Hide the loader
                        $("#loader").show();
                        
                        // Show the login-div
                        $("#login-div").hide();
                    setTimeout(function() {
                
                        // console.log('reload')
                        if (response === "1") {
                            window.location.href = 'admin/';
                        } else {
                            $('.error').show();
                        }
                    }, 3000);
                    
                },
                error: function() {
                    $('#loading').hide();
                    $('#login_btn').show();
                    $('.error').show();
                }
            });
        }, 3000); // 5-second delay (5000 milliseconds)
    });
});
