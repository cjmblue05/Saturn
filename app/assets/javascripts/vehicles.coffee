# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # console.log(models)
  $('#q_vehicle_brand_id_eq').change ->
    models = $('#q_vehicle_model_id_eq').html()
    brand = $('#q_vehicle_brand_id_eq :selected').text()
    options = $(models).filter("optgroup[label='#{brand}']").html()
    # console.log(options)

    if options
      $('#q_vehicle_model_id_eq').html(options)
      $('#q_vehicle_model_id_eq').parent().show()
    else
      $('#q_vehicle_model_id_eq').empty()

# $ ->
#
#   $('#vehicle_vehicle_brand_id').change ->
#     models = $('#vehicle_vehicle_model_id').html()
#     brand = $('#vehicle_vehicle_brand_id :selected').text()
#     options = $(models).filter("optgroup[label='#{brand}']").html()
#     # console.log(options)
#
#     if options
#       $('#vehicle_vehicle_model_id').html(options)
#       #$('#q_vehicle_model_id_eq').parent().show()
#     else
#       $('#vehicle_vehicle_model_id').empty()
