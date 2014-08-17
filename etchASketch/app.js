var main = function () {
    function drawGrid(size) {
        $('.grid').html("");
        for (var i = 0; i < size; i++) {
            $('<tr>').appendTo('.grid');
        }
        for (var i = 0; i < size; i++) {
            $('<td class="grid_sq">').appendTo('tr');
        }
        $('td').css('width', 800 / (size*1.5));
        $('td').css('height', 800 / (size*1.5));
    }
    drawGrid(16);

    $('.grid_sq').mouseover(function () {
        $(this).addClass('hovered');
    });
    
    $('.reset-btn').click( function() {
        $('.grid_sq').removeClass('hovered');
    });
};

$(document).ready(main);