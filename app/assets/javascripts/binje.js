$( document ).ready(function() {
   $("#notice , #alert").delay(1500).fadeIn('normal', function() {
      $(this).delay(100).fadeOut("slow");
   });
});
