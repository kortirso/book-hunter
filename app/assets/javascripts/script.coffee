$ ->
    $('#dl-menu').dlmenu()
    $('.point').click ->
        $("body, html").animate
            scrollTop: 0,
            250