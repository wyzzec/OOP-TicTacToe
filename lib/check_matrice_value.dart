import 'player_manipulator.dart';
import 'matrice_3x3_manipulator.dart';

class CheckMatriceValue {
  CheckMatriceValue();

  bool checkIsMatriceValueEqual(
      PlayerManipulator player, Matrice3x3Manipulator matrice) {
    if (matrice.matrice![player.playerLine][player.playerColumn] == 'X' ||
        matrice.matrice![player.playerLine][player.playerColumn] == 'O') {
      return true;
    }
    return false;
  }
}
