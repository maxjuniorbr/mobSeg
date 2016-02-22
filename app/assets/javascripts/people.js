$(document).on('ready page:load', function(event) {
    return $('#metier_value').autocomplete({
        source: $('#metier_value').data('autocomplete-source'),
        select: function(event, ui) {
            $('#metier_value').val(ui.item.label);
            $('#person_metier_id').val(ui.item.value);
            return false;
        },
        focus: function(event, ui) {
            $('#metier_value').val(ui.item.label);
            return false;
        },
        change: function(event, ui) {
            if (!ui.item) {
                $('#metier_value').val('');
                $('#person_metier_id').val('');
            }
        }
    });
});