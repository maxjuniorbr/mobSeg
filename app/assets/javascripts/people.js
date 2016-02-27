$(document).on('ready page:load', function(event) {
    // Libera/bloqueia campos considerando o tipo de pessoa
    $.inputBlock();

    // Fix para manter o footer no rodapé da página
    $.AdminLTE.layout.fix();

    // Adiciona autocomplete para o input Ocupação
    return $('#metier_value').autocomplete({
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
    // Limpa erros da tela
    $('.box-danger').parent().parent().remove();
    $('.field_with_errors').removeClass('field_with_errors');

    // Libera/bloqueia campos considerando o tipo de pessoa
    $.inputBlock();
});

$.inputBlock = function() {
    var personTypeId = $('#person_person_type_id').val();    

    // Fisica
    if (personTypeId === '1') {
        $('#person_metier_id').val('');
        $('#metier_value').prop('disabled', true).val('');
        $('#person_contact').prop('disabled', true).val('');
        $('#person_birth').prop('disabled', false);
        $('#person_marital_status_id').prop('disabled', false);
        $('#person_gender_id').prop('disabled', false);
        $('#person_politically_exposed_person').prop('disabled', false);
        $('#person_exposed_name').prop('disabled', false);
        $('#person_occupation_id').prop('disabled', false);
        $('#person_salary_range_id').prop('disabled', false);
    }

    // Juridica
    if (personTypeId === '2') {
        $('#metier_value').prop('disabled', false);
        $('#person_contact').prop('disabled', false);
        $('#person_birth').prop('disabled', true).val('');
        $('#person_marital_status_id').prop('disabled', true).val('');
        $('#person_gender_id').prop('disabled', true).val('');
        $('#person_politically_exposed_person').prop('disabled', true).val('');
        $('#person_exposed_name').prop('disabled', true).val('');
        $('#person_occupation_id').prop('disabled', true).val('');
        $('#person_salary_range_id').prop('disabled', true).val('');  
    }
}