class TicTacToeManipulator {
  TicTacToeManipulator();

  String collectResult(List<List<String>> matrice) {
    String? resultado;
    for (int resultadosPossiveis = 0;
        resultadosPossiveis < 8;
        resultadosPossiveis++) {
      switch (resultadosPossiveis) {
        case 0:
          resultado = matrice[0][0] + matrice[0][1] + matrice[0][2];
          break;
        case 1:
          resultado = matrice[1][0] + matrice[1][1] + matrice[1][2];
          break;
        case 2:
          resultado = matrice[2][0] + matrice[2][1] + matrice[2][2];
          break;
        case 3:
          resultado = matrice[0][0] + matrice[1][0] + matrice[2][0];
          break;
        case 4:
          resultado = matrice[0][1] + matrice[1][1] + matrice[2][1];
          break;
        case 5:
          resultado = matrice[0][2] + matrice[1][2] + matrice[2][2];
          break;
        case 6:
          resultado = matrice[0][0] + matrice[1][1] + matrice[2][2];
          break;
        case 7:
          resultado = matrice[0][2] + matrice[1][1] + matrice[2][0];
          break;
      }
      if (resultado == 'XXX') {
        return 'XXX';
      }
      if (resultado == 'OOO') {
        return 'OOO';
      }
      if (resultadosPossiveis == 8) {
        return 'EMPATE';
      }
    }
    return 'ERRO NA VERIFICAÇÃO DE VENCEDOR';
  }
}
