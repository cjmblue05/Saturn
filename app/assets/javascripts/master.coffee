$ ->

  $('#vehicle_vehicle_brand_id').change ->
    models = $('#vehicle_vehicle_model_id').html()
    brand = $('#vehicle_vehicle_brand_id :selected').text()
    options = $(models).filter("optgroup[label='#{brand}']").html()
    # console.log(options)

    if options
      $('#vehicle_vehicle_model_id').html(options)
      $('#q_vehicle_model_id_eq').parent().show()
    else
      $('#vehicle_vehicle_model_id').empty()
