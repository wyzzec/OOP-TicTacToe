class PlayerManipulator {
  PlayerManipulator();

  String _playerName = '';
  String _playerChoice = '';
  int _playerScore = 0;
  static int _playerID = 0;

  set playerName(String playerName) {
    _playerName = playerName;
    _playerID++;
  }

  set playerChoice(String playerChoice) {
    _playerChoice = playerChoice;
  }

  set playerScore(int playerScore) {
    _playerScore = playerScore;
  }

  String get playerName {
    return _playerName;
  }

  String get playerChoice => _playerChoice;

  int get playerScore => _playerScore;

  int get playerID => _playerID;
}
