$(document).ready ->

  $("#addBtn").on "click", ->
    newItem = $("<span>" + $('#addItemTxt').val() + "</span>")
    listTags = $("<li></li>")
    checkBox = $("<input type='checkbox'>")
    deleteImg = $("<button class='deleteBtn'><img class='delete' src='images/remove-icon.png'><span class='btnText'>Remove</span></button>")

    deleteImg.on "click", ->
      btn = $(this)
      btn.parent().fadeOut(800, ->
        btn.parent().remove())

    checkBox.on "click", ->
      chkBox = $(this)
      if chkBox.is(':checked')
        chkBox.parent().appendTo('#completedItems').addClass('completed')
      else
        chkBox.parent().appendTo('#todoItems').removeClass('completed')

    $(checkBox).appendTo(listTags)
    $(newItem).appendTo(listTags)
    $(deleteImg).appendTo(listTags)
    $(listTags).appendTo('#todoItems')
    $('#addItemTxt').val('')