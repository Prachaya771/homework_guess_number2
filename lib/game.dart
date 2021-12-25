import 'dart:math';

class Game{
  static const maxRandom = 100;
  int? _answer;
  var _guessCount;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
    // print(_answer);
    _guessCount = 1;
  }

  int getguessCount (){
    return _guessCount++;
  }

  int doGuess(int num){
    if(num == _answer){
      return 0;
    }else if(num < _answer!){
      return -1;
    }else{
      return 1;
    }
  }
}