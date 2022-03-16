class PlayerTicTacToeManipulator {
  PlayerTicTacToeManipulator();
  Map<String?, String?> _player1 = {};
  Map<String?, String?> _player2 = {};

  void setPlayer({int? playerID, String? name, String? chooseXorO}) {
    if (playerID == 1) {
      _player1 = {name: chooseXorO};
    }else{
      _player2 = {name: chooseXorO};
    }
  }

}
