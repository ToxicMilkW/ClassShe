$(document).ready(function () {
    var sub = $('#sub')
    var list = $('#list')

    var activeRow
    var activeMenu

    $('#header')
       .on('mouseenter', function (e) {
           list.removeClass('hide')
       })
       .on('mouseleave', function (e) {
           list.addClass('hide')
       })

    $('#list')
       .on('mouseenter', function (e) {
           sub.removeClass('hide')
       .on('mouseleave', function (e) {
          sub.addClass('hide')
       })

})