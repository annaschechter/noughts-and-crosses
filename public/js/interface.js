$(document).ready(function() {

  var displayBoard = function(player) {
    $.get('/computer/board', function(data) {
      for(var i = 0; i < 9; i++){
        if (data[i] !== null) {
          $('#'+(i+1)).text(data[i]);
        };
      };
      if (data[9] === null) {
        $('h3').text("")
      } else if (data[9] === "winner") {
        $('h3').text(player+" won!")
      } else if (data[9] === "draw") {
        $('h3').text("It's a draw!")
      }
    });
  };

  var recordPlayersChoice = function() {
    var choice = $('#choice').val();
    $.post('/computer/player_result', {choice: choice}).done(function() {
      displayBoard("You");
      $('h3').text("Computer is thinking...");
    });
  };

  var recordComputersChoice = function() {
    $.post('/computer/computer_result').done(function() {
      displayBoard("Computer");
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
    setTimeout(function (){
      recordComputersChoice();
    }, 5000);
  });

})