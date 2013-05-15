// Some general UI pack related JS

$(function () {
    // Custom selects
    $("select").dropkick();
});

$(document).ready(function() {
    // Todo list
    $(".todo li").click(function() {
        $(this).toggleClass("todo-done");
    });

    // Init tooltips
    $("[data-toggle=tooltip]").tooltip("show");

    // Init tags input
    $("#tagsinput").tagsInput();

    // Init jQuery UI slider
    $("#slider").slider({
        min: 1,
        max: 5,
        value: 2,
        orientation: "horizontal",
        range: "min",
    });

    // JS input/textarea placeholder
    $("input, textarea").placeholder();

    // Make pagination demo work
    $(".pagination a").click(function() {
        if (!$(this).parent().hasClass("previous") && !$(this).parent().hasClass("next")) {
            $(this).parent().siblings("li").removeClass("active");
            $(this).parent().addClass("active");
        }
    });

    $(".btn-group a").click(function() {
        $(this).siblings().removeClass("active");
        $(this).addClass("active");
    });

    // Disable link click not scroll top
    $("a[href='#']").click(function() {
        return false
    });

    var scrollorama = $.scrollorama({
        enablePin: false,
        blocks:'.scrollblock'
    });

    console.log('hello');
    
    scrollorama.onBlockChange(function() {
        var i = scrollorama.blockIndex;
        $('#console')
            .css('display','block')
            .text('onBlockChange | blockIndex:'+i+' | current block: '+scrollorama.settings.blocks.eq(i).attr('id'));
    });

    scrollorama
        .animate('#fade-in',{ delay: -300, duration: 300, property:'opacity', start:0 })
});

