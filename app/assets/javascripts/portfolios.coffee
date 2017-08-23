ready = undefined
set_positions = undefined

# set positions of each portfolio item
# by iterating over them and adding a
# 'data-pos' attribute
set_positions = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

# function to run when document is ready
ready = ->
  set_positions()
  $(".sortable").sortable()

  # this is fired when the DOM position is changed
  $(".sortable").sortable().bind 'sortupdate', (e, ui) ->

    # array for new order of items
    updated_order = []

    # set positions once again to update the HTML
    set_positions()

    # go over each portfolio item (parent <div class="card">),
    # add data about new positions to array
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return

    # then, run an ajax call to '/portfolios/sort' and pass the
    # updated_order array as params. this will be processed
    # by the controller, and the new positions will be persisted. woo yey
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return

# call to the 'ready' function when document is loaded
$(document).ready ready
