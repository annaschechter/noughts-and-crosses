$(document).ready(function() {

  var record_players_choice = function() {
    var choice = $('#choice').val();
    $.post('/computer/player_result', {choice: choice}).done(function() {
      $.get('/computer/board', function(data) {
        for(var i = 0; i < 9; i++){
          if (data[i] !== null) {
            $('#'+(i+1)).text(data[i]);
          };
        };
      });
    });
  };

  var record_computers_choice = function() {
    $.post('/computer/computer_result').done(function() {
      $.get('/computer/board', function(data) {
        console.log("function been called")
        for(var i = 0; i < 9; i++){
          if (data[i] !== null) {
            $('#'+(i+1)).text(data[i]);
          };
        };
      });
    });
  };

  $('#play-against-computer-link').on('click', function() {
    window.location = ('/play_computer')
  });

  $('#play-against-players-link').on('click', function() {
    window.location = ('/play_players')
  });

  $('#submit').on('click', function() {
    record_players_choice();
    setTimeout(function (){
      record_computers_choice()
    }, 5000);
  });

})