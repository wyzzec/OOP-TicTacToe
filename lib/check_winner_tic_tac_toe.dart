import 'dart:io';

import 'package:jogo_da_velha/tic_tac_toe_matrice_result.dart';
import 'player_manipulator.dart';
import 'matrice_3x3_manipulator.dart';

class CheckWinnerTicTacToe extends TicTacToeMatriceResult {
  CheckWinnerTicTacToe();

  Matrice3x3Manipulator matrice = Matrice3x3Manipulator();

  PlayerManipulator? checkWinner(
      PlayerManipulator player1, PlayerManipulator player2) {
    if (collectResult(matrice.matrice) == 'XXX') {
      if (player1.playerChoice == 'X') {
        print('${player1.playerName} are the Winner!!');
        exit(0);
      } else {
        print('${player2.playerName} are the Winner!!');
        exit(0);
      }
    }
    if (collectResult(matrice.matrice) == 'OOO') {
      if (player1.playerChoice == 'O') {
        print('${player1.playerName} are the Winner!!');
        exit(0);
      } else {
        print('${player2.playerName} are the Winner!!');
        exit(0);
      }
    }
  }
}
