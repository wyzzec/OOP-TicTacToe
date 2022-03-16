import 'dart:io';
import 'player_tic_tac_toe_manipulator.dart';
import 'non_nullable_exception.dart';

class PlayerInserts extends PlayerTicTacToeManipulator {
  PlayerInserts();

  PlayerTicTacToeManipulator _player1 = PlayerTicTacToeManipulator();
  PlayerTicTacToeManipulator _player2 = PlayerTicTacToeManipulator();

  void initialInfoCollector() {
    String? _name;
    String? _chooseXorO;
    print('Welcome dears players\n');


      do {
        print('Type player 1 name:');
        _name = stdin.readLineSync();
        _player1.setPlayer(playerID: 1, name: _name);
      } while (_name == null);


    do {
      print('$_name, choose X or O');
      _chooseXorO = stdin.readLineSync();
    } while (_chooseXorO == null);
    _chooseXorO.toUpperCase();

  }
}
