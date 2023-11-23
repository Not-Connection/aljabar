part of '_index.dart';

// final battleSnakeCtrl = BattleSnakeCtrl();

class BattleSnakeCtrl {
  // BattleSnakeData get _dt => battleSnakeData.st;

  init() {}

  onTapCoordinat(int xCoord, int yCoord) {
    debugPrint('$xCoord , $yCoord');
    final xSnake1 = _dt.rxSnake1.st[0][0];
    final ySnake1 = _dt.rxSnake1.st[0][1];
    var arahSnake1 = _dt.rxArahSnake1.st;

    if (arahSnake1 == 'up' || arahSnake1 == 'down') {
      if (xCoord < xSnake1) {
        _dt.rxArahSnake1.st = 'left';
      } else if (xCoord > xSnake1) {
        _dt.rxArahSnake1.st = 'right';
      }
    } else {
      if (yCoord < ySnake1) {
        _dt.rxArahSnake1.st = 'up';
      } else if (yCoord > ySnake1) {
        _dt.rxArahSnake1.st = 'down';
      }
    }
  }

  reset() {
    _dt.rxSnake1.refresh();
    _dt.rxPoint.refresh();
    _dt.rxArahSnake1.refresh();
    _dt.rxArahSnakeBot.refresh();
    _dt.rxFoodX.refresh();
    _dt.rxFoodY.refresh();
    _dt.rxIsRunning.refresh();
    _dt.rxIsPause.refresh();
    _dt.rxSnakeBot.refresh();
    _dt.rxInitDuration.refresh();
  }

  List<int> getRandomFood1() {
    var stringSnake = _dt.rxSnake1.st.map((e) => e.toString());
    String stringFood;
    int foodX;
    int foodY;

    do {
      foodX = Random().nextInt(_dt.totalX);
      foodY = Random().nextInt(_dt.totalY);
      stringFood = '[$foodX, $foodY]';

      debugPrint(stringFood);
    } while (stringSnake.contains(stringFood));

    _dt.rxFoodX.st = foodX;
    _dt.rxFoodY.st = foodY;

    return [foodX, foodY];
  }

  isEatSnake1() {
    final snake1 = _dt.rxSnake1.st;
    final xSnake1 = _dt.rxSnake1.st[0][0];
    final ySnake1 = _dt.rxSnake1.st[0][1];
    final foodX = _dt.rxFoodX.st;
    final foodY = _dt.rxFoodY.st;

    if (xSnake1 == foodX && ySnake1 == foodY) {
      _dt.rxFoodX.st = getRandomFood1()[0];
      _dt.rxFoodY.st = getRandomFood1()[1];

      _dt.rxPoint.st = _dt.rxPoint.st + 1;
      _dt.timer1.cancel();

      _dt.rxInitDuration.st = (_dt.rxInitDuration.st * 0.9).floor();
      getStart1();
    } else {
      snake1.removeLast();
    }
  }

  changeDirection(String direction) => _dt.rxArahSnake1.st = direction;

  isPause() => _dt.rxIsPause.st = !_dt.rxIsPause.st;

  stop() {
    _dt.rxIsPause.st = false;
    _dt.rxIsRunning.st = false;
  }

  play() {
    if (_dt.rxIsPause.st) {
      // resume game
    } else {
      getStart1();
    }
    _dt.rxIsPause.st = false;
  }

  moveSnake1() {
    final arahSnake1 = _dt.rxArahSnake1.st;
    if (arahSnake1 == 'up') {
      final x = [_dt.rxSnake1.st[0][0], _dt.rxSnake1.st[0][1] - 1];

      _dt.rxSnake1.st = [..._dt.rxSnake1.st]..insert(0, x);
    }

    if (arahSnake1 == 'down') {
      final x = [_dt.rxSnake1.st[0][0], _dt.rxSnake1.st[0][1] + 1];
      _dt.rxSnake1.st = [..._dt.rxSnake1.st]..insert(0, x);
    }

    if (arahSnake1 == 'left') {
      final x = [_dt.rxSnake1.st[0][0] - 1, _dt.rxSnake1.st[0][1]];
      _dt.rxSnake1.st = [..._dt.rxSnake1.st]..insert(0, x);
    }

    if (arahSnake1 == 'right') {
      final x = [_dt.rxSnake1.st[0][0] + 1, _dt.rxSnake1.st[0][1]];
      _dt.rxSnake1.st = [..._dt.rxSnake1.st]..insert(0, x);
    }
  }

  moveSnakeBot() {
    logicMoveSnakeBot();

    if (_dt.rxArahSnakeBot.st == 'up') {
      final x = [_dt.rxSnakeBot.st[0][0], _dt.rxSnakeBot.st[0][1] - 1];

      _dt.rxSnakeBot.st = [..._dt.rxSnakeBot.st]..insert(0, x);
    }

    if (_dt.rxArahSnakeBot.st == 'down') {
      final x = [_dt.rxSnakeBot.st[0][0], _dt.rxSnakeBot.st[0][1] + 1];
      _dt.rxSnakeBot.st = [..._dt.rxSnakeBot.st]..insert(0, x);
    }

    if (_dt.rxArahSnakeBot.st == 'left') {
      final x = [_dt.rxSnakeBot.st[0][0] - 1, _dt.rxSnakeBot.st[0][1]];
      _dt.rxSnakeBot.st = [..._dt.rxSnakeBot.st]..insert(0, x);
    }

    if (_dt.rxArahSnakeBot.st == 'right') {
      final x = [_dt.rxSnakeBot.st[0][0] + 1, _dt.rxSnakeBot.st[0][1]];
      _dt.rxSnakeBot.st = [..._dt.rxSnakeBot.st]..insert(0, x);
    }
  }

  String moveSnake(List<List<int>> snake, String arah) {
    if (snake == _dt.rxSnakeBot.st) {
      logicMoveSnakeBot();
    }

    if (arah == 'up') {
      final x = [snake[0][0], snake[0][1] - 1];

      snake = [...snake]..insert(0, x);
    }

    if (arah == 'down') {
      final x = [snake[0][0], snake[0][1] + 1];
      snake = [...snake]..insert(0, x);
    }

    if (arah == 'left') {
      final x = [snake[0][0] - 1, snake[0][1]];
      snake = [...snake]..insert(0, x);
    }

    if (arah == 'right') {
      final x = [snake[0][0] + 1, snake[0][1]];
      snake = [...snake]..insert(0, x);
    }

    debugPrint(arah.toString());
    return arah;
  }

  String logicMoveSnakeBot() {
    final snakeX = _dt.rxSnakeBot.st[0][0];
    final snakeY = _dt.rxSnakeBot.st[0][1];
    final foodX = _dt.rxFoodX.st;
    final foodY = _dt.rxFoodY.st;
    if (snakeX == foodX) {
      if (snakeY > foodY) {
        _dt.rxArahSnakeBot.st = 'up';
      }
      if (snakeY < foodY) {
        _dt.rxArahSnakeBot.st = 'down';
      }
    } else {
      if (snakeX > foodX) {
        _dt.rxArahSnakeBot.st = 'left';
      }
      if (snakeX < foodX) {
        _dt.rxArahSnakeBot.st = 'right';
      }
    }
    return _dt.rxArahSnakeBot.st;
  }

  getStart1() {
    _dt.rxIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: _dt.rxInitDuration.st),
      (timer) {
        if (_dt.rxIsPause.st == false) {
          _dt.timer1 = timer;
          moveSnake1();
          // moveSnake(_dt.rmSnake1.st, _dt.rmArahSnake1.st);
          isThroughSnake1();
          updateIsFinish();
          checkIsFinish();
          isEatSnake1();
        }
      },
    );
  }

  getStartBot() {
    _dt.rxIsRunning.st = true;
    Timer.periodic(
      const Duration(milliseconds: 500),
      (timerBot) {
        if (_dt.rxIsPause.st == false) {
          _dt.timerBot = timerBot;
          moveSnakeBot();
          // moveSnake(_dt.rmSnake2.st, _dt.rmArahSnake2.st);
          isThroughSnakeBot();
          gameOverSnakeBot();
          getRandomFoodBot();
        }
      },
    );
  }

  isThroughSnake1() {
    final xSnake1 = _dt.rxSnake1.st[0][0];
    final ySnake1 = _dt.rxSnake1.st[0][1];

    if (xSnake1 < 0) {
      final snake = _dt.rxSnake1.st;
      snake[0][0] = _dt.totalX - 1;
    }
    if (xSnake1 > _dt.totalX - 1) {
      final snake = _dt.rxSnake1.st;
      snake[0][0] = 0;
    }
    if (ySnake1 < 0) {
      final snake = _dt.rxSnake1.st;
      snake[0][1] = _dt.totalY - 1;
    }
    if (ySnake1 > _dt.totalY - 1) {
      final snake = _dt.rxSnake1.st;
      snake[0][1] = 0;
    }
  }

  updateIsFinish() => isTouchBody1() || isCollision() || isTouchBodyBot() ? _dt.rxIsRunning.st = false : null;

  checkIsFinish() {
    if (_dt.rxIsRunning.st == false) {
      _dt.rxIsPause.st = true;
      Dialogs.gameOver('Game Over', 'Your point is ${_dt.rxPoint.st}');
    }
  }

  bool isTouchBody1() {
    var z = false;
    final headX = _dt.rxSnake1.st[0][0];
    final headY = _dt.rxSnake1.st[0][1];
    final snake1 = _dt.rxSnake1.st;

    for (var i = 1; i < snake1.length; i++) {
      if (headX == snake1[i][0] && headY == snake1[i][1]) {
        z = true;
      }
    }
    return z;
  }

  bool isCollision() {
    final condition1 = _dt.rxSnake1.st[0][0] == _dt.rxSnakeBot.st[0][0];
    final condition2 = _dt.rxSnake1.st[0][1] == _dt.rxSnakeBot.st[0][1];
    return condition1 && condition2;
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  getRandomFoodBot() {
    final xSnakeBot = _dt.rxSnakeBot.st[0][0];
    final ySnakeBot = _dt.rxSnakeBot.st[0][1];
    var foodX = _dt.rxFoodX.st;
    var foodY = _dt.rxFoodY.st;

    if (xSnakeBot == foodX && ySnakeBot == foodY) {
      _dt.rxFoodX.st = Random().nextInt(_dt.totalX);
      _dt.rxFoodY.st = Random().nextInt(_dt.totalY);
    } else {
      _dt.rxSnakeBot.st.removeLast();
    }
  }

  gameOverSnakeBot() =>
      isTouchBody1() || isCollision() || isTouchBodyBot() || !_dt.rxIsRunning.st ? _dt.timerBot.cancel() : null;

  isThroughSnakeBot() {
    final xSnakeBot = _dt.rxSnakeBot.st[0][0];
    final ySnakeBot = _dt.rxSnakeBot.st[0][1];

    if (xSnakeBot < 0) {
      final snake = _dt.rxSnakeBot.st;
      snake[0][0] = _dt.totalX - 1;
    }
    if (xSnakeBot > _dt.totalX - 1) {
      final snake = _dt.rxSnakeBot.st;
      snake[0][0] = 0;
    }
    if (ySnakeBot < 0) {
      final snake = _dt.rxSnakeBot.st;
      snake[0][1] = _dt.totalY - 1;
    }
    if (ySnakeBot > _dt.totalY - 1) {
      final snake = _dt.rxSnakeBot.st;
      snake[0][1] = 0;
    }
  }

  bool isTouchBodyBot() {
    var z = false;
    final xSnake1 = _dt.rxSnake1.st[0][0];
    final ySnake1 = _dt.rxSnake1.st[0][1];
    final xSnakeBot = _dt.rxSnakeBot.st[0][0];
    final ySnakeBot = _dt.rxSnakeBot.st[0][1];
    final snakeBot = _dt.rxSnakeBot.st;
    final snake1 = _dt.rxSnake1.st;

    for (var i = 1; i < snakeBot.length; i++) {
      if (xSnake1 == snakeBot[i][0] && ySnake1 == snakeBot[i][1]) {
        z = true;
      }
    }
    for (var i = 1; i < _dt.rxSnake1.st.length; i++) {
      if (xSnakeBot == snake1[i][0] && ySnakeBot == snake1[i][1]) {
        z = true;
      }
    }
    return z;
  }
}
