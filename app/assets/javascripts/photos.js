// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


<!-- include jQuery library -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<!-- include Cycle plugin -->
<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.slideshow').cycle({
		fx: 'fade',
	pause: 1,
	prev: '#prev',
	next: '#next'

	});
});


