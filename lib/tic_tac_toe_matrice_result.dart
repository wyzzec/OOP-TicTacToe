class TicTacToeMatriceResult {
  TicTacToeMatriceResult();

  String collectResult(List<List<String>>? matrice) {
    String? matriceResult;
    for (int possibleResults = 0;
        possibleResults < 8;
        possibleResults++) {
      switch (possibleResults) {
        case 0:
          matriceResult = matrice![0][0] + matrice[0][1] + matrice[0][2];
          break;
        case 1:
          matriceResult = matrice![1][0] + matrice[1][1] + matrice[1][2];
          break;
        case 2:
          matriceResult = matrice![2][0] + matrice[2][1] + matrice[2][2];
          break;
        case 3:
          matriceResult = matrice![0][0] + matrice[1][0] + matrice[2][0];
          break;
        case 4:
          matriceResult = matrice![0][1] + matrice[1][1] + matrice[2][1];
          break;
        case 5:
          matriceResult = matrice![0][2] + matrice[1][2] + matrice[2][2];
          break;
        case 6:
          matriceResult = matrice![0][0] + matrice[1][1] + matrice[2][2];
          break;
        case 7:
          matriceResult = matrice![0][2] + matrice[1][1] + matrice[2][0];
          break;
      }
      if (matriceResult == 'XXX') {
        return 'XXX';
      }
      if (matriceResult == 'OOO') {
        return 'OOO';
      }
      if (possibleResults == 8) {
        return 'DRAW';
      }
    }
    return 'WINNER VERIFICATION ERROR';
  }
}
