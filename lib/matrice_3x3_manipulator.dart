class Matrice3x3Manipulator {
  Matrice3x3Manipulator();

  static List<List<String>>? _matrice = [
    ['-', '-', '-'],
    ['-', '-', '-'],
    ['-', '-', '-']
  ];

  List<List<String>>? get matrice => _matrice;

  bool matriceManipulate(int matriceLine, int matriceColumn, String value) {
    if (matriceLine < 0 ||
        matriceLine > 2 ||
        matriceColumn < 0 ||
        matriceColumn > 2) {
      return false;
    }
    _matrice![matriceLine][matriceColumn] = value;
    return true;
  }
  void matricePrinter(Matrice3x3Manipulator matrice){
    print('  0 1 2');
    int column = 0;
    for (int line = 0; line < 3; line++) {
      print('$column' +
          ' ' +
          matrice.matrice![line][0] +
          ' ' +
          matrice.matrice![line][1] +
          ' ' +
          matrice.matrice![line][2]);
      column++;
    }
  }

}
