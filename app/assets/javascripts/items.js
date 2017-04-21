$(document).on( 'ready',function () {
    $('tbody').sortable({
        stop: function () {
            $.ajax({
                url: '/items/sort',
                type: 'post',
                data: $('tbody').sortable('serialize')
            })
        }
    });
});


