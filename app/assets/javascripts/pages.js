/* # Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
*/

/* 
coords.latitude	double	degrees
coords.longitude	double	degrees
coords.altitude	double or null	meters
coords.accuracy	double	meters
coords.altitudeAccuracy	double or null	meters
coords.heading	double or null	degrees clockwise
coords.speed	double or null	meters/second
timestamp	DOMTimeStamp	like the Date object
*/

$(function(){
	$("#btnNearBy").on("click", function(){
		var btn = $(this);
		if (navigator.geolocation){  // does the geolocation object exist?             
		  navigator.geolocation.getCurrentPosition( 
		    function(position) {
				  latitude = position.coords.latitude;
					longitude = position.coords.longitude;
					
					document.location = btn.prop("href") + "?" + $.param({latitude: latitude, longitude: longitude})
				},
		    function(){
					alert("Sorry, we couldn't get your location! Just try punching in the hashtag of the event");
				}, 
		    {timeout:5000} 
		  );          
		} else {
		  alert("Yike! Looks like you're using a unsupported browser!");
		}
	})
})