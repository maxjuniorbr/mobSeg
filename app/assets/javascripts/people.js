$(document).on('ready page:load', function(event) {
    //Libera/Bloqueia inputs
    $.inputBlock();

    //Adicionar autocomplete para o input Ocupação
    $('#metier_value').autocomplete({
        source: $('#metier_value').data('autocomplete-source'),
        select: function(event, ui) {
            $('#metier_value').val(ui.item.label);
            $('#person_metier_id').val(ui.item.value);
            return false;
        },
        focus: function(event, ui) {
            $('#metier_value').val(ui.item.label);
            $('#person_metier_id').val(ui.item.value);
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

$(document).on('change', '#person_person_type_id', function(event) {
    //Libera/Bloqueia inputs
    $.inputBlock();
});

$.inputBlock = function(personTypeId) {
    var personTypeId = $('#person_person_type_id').val();
    //Fisica    
    if (personTypeId === '1') {
        $('#metier_value').prop("disabled", true);
        $('#person_contact').prop("disabled", true);        
        $('#person_birth').prop("disabled", false);
        $('#person_marital_status_id').prop("disabled", false);
        $('#person_gender_id').prop("disabled", false);
        $('#person_politically_exposed_person').prop("disabled", false);
        $('#person_exposed_name').prop("disabled", false);
        $('#person_occupation_id').prop("disabled", false);
        $('#person_salary_range_id').prop("disabled", false);
    }

    //Juridica
    if (personTypeId === '2') {
        $('#metier_value').prop("disabled", false);
        $('#person_contact').prop("disabled", false);
        $('#person_birth').prop("disabled", true);
        $('#person_marital_status_id').prop("disabled", true);
        $('#person_gender_id').prop("disabled", true);
        $('#person_politically_exposed_person').prop("disabled", true);
        $('#person_exposed_name').prop("disabled", true);
        $('#person_occupation_id').prop("disabled", true);
        $('#person_salary_range_id').prop("disabled", true);        
    }
}