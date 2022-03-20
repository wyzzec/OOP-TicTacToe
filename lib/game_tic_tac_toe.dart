import 'matrice_3x3_manipulator.dart';
import 'player_insert.dart';
import 'player_manipulator.dart';
import 'check_winner_tic_tac_toe.dart';
import 'check_matrice_value.dart';

class PrintsTicTacToe2Player {
  void initializeGame() {
    Matrice3x3Manipulator matrice = Matrice3x3Manipulator();
    PlayerManipulator player1 = PlayerManipulator();
    PlayerManipulator player2 = PlayerManipulator();
    PlayerInserts playerInserts = PlayerInserts();
    CheckWinnerTicTacToe checkWinner = CheckWinnerTicTacToe();
    CheckMatriceValue checkMatriceValue = CheckMatriceValue();

    print('Welcome dear player.\n');
    print('Choose player 1 name:\n');
    playerInserts.typePlayerName(player1);
    print('${player1.playerName}, choose X or O:');
    playerInserts.typePlayerChoice(player1);

    print('Choose player 2 name:\n');
    playerInserts.typePlayerName(player2);
    print('${player2.playerName}, choose x or 0');
    playerInserts.typePlayerChoice(player2);

    matrice.matricePrinter(matrice);

    do {
      bool valueCheck;
      do {
        do {
          playerInserts.typePlayerLine(player1);
          playerInserts.typePlayerColumn(player1);
          if (checkMatriceValue.checkIsMatriceValueEqual(player1, matrice)) {
            print('The selected line and column already have a choice');
          }
        } while (checkMatriceValue.checkIsMatriceValueEqual(player1, matrice));
        valueCheck = matrice.matriceManipulate(
            player1.playerLine, player1.playerColumn, player1.playerChoice!);
        if (valueCheck == false) {
          print('Error line or column, type again.');
        }
      } while (valueCheck == false);
      matrice.matricePrinter(matrice);
      checkWinner.checkWinner(player1, player2);
      do {
        do {
          playerInserts.typePlayerLine(player2);
          playerInserts.typePlayerColumn(player2);
          if (checkMatriceValue.checkIsMatriceValueEqual(player2, matrice)) {
            print('The selected line and column already have a choice');
          }
        } while (checkMatriceValue.checkIsMatriceValueEqual(player2, matrice));
        valueCheck = matrice.matriceManipulate(
            player2.playerLine, player2.playerColumn, player2.playerChoice!);
        if (valueCheck == false) {
          print('Error line or column, type again.');
        }
      } while (valueCheck == false);
      matrice.matricePrinter(matrice);
      checkWinner.checkWinner(player1, player2);
    } while (checkWinner.checkWinner(player1, player2) == null);
  }
}
