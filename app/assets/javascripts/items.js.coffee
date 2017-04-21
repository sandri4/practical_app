# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
sortable_element = document.getElementById('items-sortable')
if sortable_element
  $(sortable_element).sortable({
    placeholder: "<div style='border-style: dashed'>&nbsp;&nbsp;&nbsp;</div>"
    })
    .bind('sortupdate', (e, ui) ->
      orders = ui.endparent.children().map( -> return $(this).data("id") ).toArray()
      document.getElementById('items_ids').value = JSON.stringify(orders)
    )
