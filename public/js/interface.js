$(document).ready(function() {

  $('#play-against-computer-link').on('click', function() {
    window.location = ('/play_computer')
  });

  $('#play-against-players-link').on('click', function() {
    window.location = ('/play_players')
  });


  $('#submit').on('click', function() {
    record_players_choice();
  });

  var record_players_choice = function() {
    var choice = $('#choice').val();
    $.post('/computer/player_result', {choice: choice}).done(function() {
      $.get('/computer/board', function(data) {
        console.log(data[2])
        for(var i = 0; i < 9; i++){
          if (data[i] !== null) {
            $('#'+(i+1)).text(data[i]);
          };
        };
      });
    });
  }
})