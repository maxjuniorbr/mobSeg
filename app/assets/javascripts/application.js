// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require meiomask
//= require_tree .

var menuActive = '';

$(document).on('ready page:load', function(event) {
    $("input[type=\"text\"]").setMask();

    if (menuActive !== '') {
        $('.sidebar-menu > li > a').filter(function() {
            if ($(this).text() === menuActive) {
                $(this).parent().addClass('active');
            }
        });
    }

    $('.sidebar-menu > li > a').click(function() {
        menuActive = $(this).text()
    });
});

// Máscara para celular com 9 dígitos
$.mask.masks = $.extend($.mask.masks, {
    'cell-phone': {
        mask: '(99) 99999-9999'
    },
    'decimal_percentage': {
        mask: '99,99',
        type: 'reverse',
        defaultValue: '000',
        precision: '4'
    },
});