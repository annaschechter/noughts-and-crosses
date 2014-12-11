$(document).ready(function() {

  $('#play-against-computer-link').on('click', function() {
    window.location = ('/play_computer')
  });

  $('#play-against-players-link').on('click', function() {
    window.location = ('/play_players')
  });


  $('#submit').on('click', function() {
    console.log("hello");
  });
})