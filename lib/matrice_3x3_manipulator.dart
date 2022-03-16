class Matrice3x3Manipulator {
  Matrice3x3Manipulator();

  List<List<String>> _matrice = [
    ['-', '-', '-'],
    ['-', '-', '-'],
    ['-', '-', '-']
  ];

  List<List<String>> get matrice => _matrice;

  bool matriceManipulate(int matriceLine, int matriceColunm, String value) {
    if (matriceLine < 0 ||
        matriceLine > 2 ||
        matriceColunm < 0 ||
        matriceColunm > 2) {
      return false;
    }
    _matrice[matriceLine][matriceColunm] = value;
    return true;
  }
}
