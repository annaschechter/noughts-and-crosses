$(document).ready(function() {

  $('#play-against-computer-link').on('click', function() {
    window.location = ('/play_computer')
  });

  $('#play-against-players-link').on('click', function() {
    window.location = ('/play_players')
  });


  $('#submit').on('click', function() {
    var choice = $('#choice').val();
    $.post('/computer/result', {choice: choice}).done(function() {
      console.log("done")
      $.getJSON('/computer/result/'+ choice, function(data) {
        $('#1').text(data);
      }) 
     });
  });
})