jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  if $('#messages').length > 0
    messages_to_bottom = -> messages.scrollTop(messages.prop("scrollHeight"))

    messages_to_bottom()

    App.global_chat = App.cable.subscriptions.create {
        channel: "ChatRoomsChannel"
        chat_room_id: messages.data('chat-room-id')
      },
      connected: ->
        # Called when the subscription is ready for use on the server
      

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        #messages.append data['message']

        messages_to_bottom()

      send_message: (message, chat_room_id) ->
        @perform 'send_message', message: message, chat_room_id: chat_room_id



    $('#new_message').submit (e) ->
      $this = $(this)
      textarea = $this.find('#message_body')
      if $.trim(textarea.val()).length > 1
        App.global_chat.send_message textarea.val(), messages.data('chat-room-id')
        new_file= $(".card", "#messages").eq(0)
       
        today = new Date
        dd = today.getDate()
        mm = today.getMonth() + 1
        yyyy = today.getFullYear()
        hh = today.getHours()
        MM = today.getMinutes()
        ss = today.getSeconds()

        today = hh + ':' + MM + ':' + ss + ':' + ' - ' + yyyy + '-' + mm + '-' + dd
        
        part1= "<span class='text-muted'>"
        name= $(".current_user").html()
        part2= today
        part3= "</span><br>"
        part4= textarea.val()
        new_file.find(".card-text").html  part1.concat name.concat " a las ".concat part2.concat part3.concat part4
        #new_file.find(".text-muted").html today

        messages.append new_file
        textarea.val('')

      e.preventDefault()
      return false

