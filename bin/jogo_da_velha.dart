import 'dart:io';
import 'package:jogo_da_velha/matrice_3x3_manipulator.dart';
import 'package:jogo_da_velha/tic_tac_toe_manipulator.dart';

void main() {
  Matrice3x3Manipulator matrice3x3 = Matrice3x3Manipulator();

  matrice3x3.matriceManipulate(1, 1, 'X');
  matrice3x3.matriceManipulate(0, 0, 'X');
  matrice3x3.matriceManipulate(2, 2, 'X');
  TicTacToeManipulator ticTacToeManipulator = TicTacToeManipulator();

  print(matrice3x3.matrice[1][1]);
  print(matrice3x3.matrice[0][0]);
  print(matrice3x3.matrice[2][2]);
  print(ticTacToeManipulator.collectResult(matrice3x3.matrice));
}