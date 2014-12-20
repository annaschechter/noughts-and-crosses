$(document).ready(function() {

  var recordPlayersChoice = function() {
    var choice = $('#choice').val();
    $.post('/computer/player_result', {choice: choice}).done(function() {
      $.get('/computer/board', function(data) {
        for(var i = 0; i < 9; i++){
          if (data[i] !== null) {
            $('#'+(i+1)).text(data[i]);
          };
        };
        if (data[9] === null) {
          $('h4').text("")
        } else if (data[9] === "winner") {
            $('#winner').text("You won!")
        } else if (data[9] === "draw") {
            $('#winner').text("It's a draw!"); 
        };
      }).done(function() {
        if ($('#winner').text() !== 'You won!') {
          setTimeout(function (){
            recordComputersChoice();
          }, 5000);
        }
      });
    });
  };

  var recordComputersChoice = function() {
    $.post('/computer/computer_result').done(function() {
      $.get('/computer/board', function(data) {
        for(var i = 0; i < 9; i++){
          if (data[i] !== null) {
            $('#'+(i+1)).text(data[i]);
          };
        };
        if (data[9] === null) {
          $('h4').text("")
        } else if (data[9] === "winner") {
            $('#winner').text("Computer won!")
        } else if (data[9] === "draw") {
            $('#winner').text("It's a draw!"); 
        };
      }).done(function() {
        for(var i = 1; i < 10; i++) {
          if($("#"+i).text() !== i.toString()) {
            $("#option"+i).hide();
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
    recordPlayersChoice();
  });

})