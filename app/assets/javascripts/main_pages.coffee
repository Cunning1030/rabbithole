# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $('#send').on 'click', ->
    comment = $('#message-box').val()
    console.log comment
    senderName = $('#name').val()
    senderPhone = $('#phone').val()
    senderEmail = $('#email').val()
    if comment == ''
      $('#message-box').css 'border', '2px solid red'
    else
      $('#visible-comment').html(comment);
      $('#message-box').hide();
      $('#visible-name').html(senderName);
      $('#name').hide();
      $('#visible-phone').html(senderPhone);
      $('#phone').hide();
      $('#visible-email').html(senderEmail);
      $('#email').hide();
      $('#send').hide();
      $('label').hide();
      $('#visible-comment').css("padding-bottom", "150px");
    false
  # send listener

  $('#message-box').on 'keyup', ->
    console.log 'keyup happened'
    # here is where we catch keyup
    charCount = $('#message-box').val().length
    # here we set the length of the content of the textarea to a variable
    console.log charCount
    # here we make sure we set it to the right value
    $('#char-count').html charCount + ' out of 50 characters'
    # here we show a running character count to the user
    if charCount > 50
      $('#char-count').css 'color', 'red'
    else
      $('#char-count').css 'color', 'black'
    return
  #running count

  return
