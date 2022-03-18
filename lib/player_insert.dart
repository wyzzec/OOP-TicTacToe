import 'dart:io';
import 'player_manipulator.dart';

class PlayerInserts {
  PlayerInserts();
  void typePlayerName(PlayerManipulator player){
    String? name;
    do {
      print('Type player ${player.playerID} name:');
      name = stdin.readLineSync();
    } while (name == null);
    player.playerName = name;
  }
  void typePlayerChoice(PlayerManipulator player){
    String? choice;
    do{
      print('Type player ${player.playerName} choice');
      choice = stdin.readLineSync();
      if (choice == null){
        print('Your choice cant be NULL!!');
      }else{
        choice.toUpperCase();
      }
    } while (choice == null || (choice != 'X' && choice != 'O'));
  }
}

//
// void initialInfoCollector() {
//
//   String? _chooseXorO;
//   print('Welcome dears players\n');
//
//
//
//   do {
//     print('$_name, choose X or O');
//     _chooseXorO = stdin.readLineSync();
//   } while (_chooseXorO == null ||
//       (_chooseXorO.toUpperCase() != 'X' && _chooseXorO.toUpperCase() != 'O'));
//   _chooseXorO.toUpperCase();
//   _player1.setPlayer(chooseXorO: _chooseXorO);
//   do{
//     print('Type player 2 name:');
//     _name = stdin.readLineSync();
//     _player2.setPlayer(playerID: 2, name: _name);
//   }while(_name == null);
//
// }