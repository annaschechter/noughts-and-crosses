$(document).ready(function() {

  var displayBoard = function() {
    $.get('/computer/board', function(data) {
      for(var i = 0; i < 9; i++){
        if (data[i] !== null) {
          $('#'+(i+1)).text(data[i]);
        };
      };
    });
  };

  var recordPlayersChoice = function() {
    var choice = $('#choice').val();
    $.post('/computer/player_result', {choice: choice}).done(function() {
      displayBoard();
      $('h3').text("Computer is thinking...");
    });
  };

  var recordComputersChoice = function() {
    $.post('/computer/computer_result').done(function() {
      displayBoard();
      $('h3').text("")
    });
  };

  $('#play-against-computer-link').on('click', function() {
    window.location = ('/play_computer')
  });

  $('#play-against-players-link').on('click', function() {
    window.location = ('/play_players')
  });

  $('#submit').on('click', function() {
    recordPlayersChoice();
    $('h3').text("Computer is thinking...")
    setTimeout(function (){
      recordComputersChoice();
    }, 5000);
  });

})