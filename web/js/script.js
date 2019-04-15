$(document).ready(function () {

    $('.destroy_session').click(function () {
        $(".modal-new").fadeIn(1000);
    });

    // $('.modal-new').click(function () {
    //     $('.modal-new').fadeOut(1000);
    // });

    $('#yes').click(function () {
       //  destroy session
    });

    $('#no').click(function () {
       $('.modal-new').fadeOut(1000);
    });

    $('.close_icon').click(function () {
        $('.modal-new').fadeOut(1000);
    });

    $('.head').fadeTo(3, 0.3).fadeTo(1000, 1);

    $('.reg_log_btn').click(function () {
       $('.reg_log_btn').hide();
       $('#reg_log_form').show();
    });

});