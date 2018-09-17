// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery2
//= require jquery_ujs
//= require cable
//= require_tree
//= require jquery3 
//= require popper 
//= require bootstrap-sprockets


/*Modales citas*/
function loadModalShowEvent(event, idTag){
	$(idTag).load("./events/"+event);
}

function loadModalEditEvent(event, idTag){
	$(idTag).load("./events/"+event+"/edit");
}

function loadModalNewEvent(idTag){
	$(idTag).load("./events/new");
}

/*Alertas*/
$(document).ready(function(){
	setTimeout(function(){
		$('#alert_notification').fadeOut('slow', function(){
			$(this).remove();
		})
	}, 2500);
});

/*
$(document).ready(function () {
    setInterval(function () {
        $("#messages").load('http://localhost:3000/chat_rooms/2');
    }, 1000);
    console.log("b1");
});*/

function reFresh() {
  location.reload(true)
}
//window.setInterval("reFresh()",1000);