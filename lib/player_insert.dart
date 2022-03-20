import 'dart:io';
import 'player_manipulator.dart';

class PlayerInserts {
  PlayerInserts();

  void typePlayerName(PlayerManipulator player) {
    String? name;
    do {
      name = stdin.readLineSync();
    } while (name == null || name.isEmpty);
    player.playerName = name;
  }

  void typePlayerChoice(PlayerManipulator player) {
    String? choice;
    do {
      choice = stdin.readLineSync();
      if (choice != null) {
        choice = choice.toUpperCase();
        player.playerChoice = choice;
      }
    } while (choice == null || (choice != 'X' && choice != 'O'));
  }

  void typePlayerLine(PlayerManipulator player) {
    String? line;
    do {
      print('${player.playerName}, choose line: ');
      line = stdin.readLineSync();
      if (line != null && line.isNotEmpty) {
        player.playerLine = int.parse(line);
      }
    } while (line == null || line.isEmpty);
  }

  void typePlayerColumn(PlayerManipulator player) {
    String? column;
    do {
      print('${player.playerName}, choose column: ');
      column = stdin.readLineSync();
      if (column != null) player.playerColumn = int.parse(column);
    } while (column == null || column.isEmpty);
  }
}
