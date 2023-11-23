part of '_index.dart';

final singleSnakeCtrl = SingleSnakeCtrl();

class SingleSnakeCtrl {
  init() {}

  onTapCoordinat(int xCoord, int yCoord) {
    debugPrint('$xCoord , $yCoord');
    final xSnake = _dt.rmSnake.st[0][0];
    final ySnake = _dt.rmSnake.st[0][1];
    var arahSnake = _dt.rmArah.st;

    if (arahSnake == 'up' || arahSnake == 'down') {
      if (xCoord < xSnake) {
        _dt.rmArah.st = 'left';
      } else if (xCoord > xSnake) {
        _dt.rmArah.st = 'right';
      }
    } else {
      if (yCoord < ySnake) {
        _dt.rmArah.st = 'up';
      } else if (yCoord > ySnake) {
        _dt.rmArah.st = 'down';
      }
    }
  }

  reset() {
    _dt.rmSnake.refresh();
    _dt.rmPoint.refresh();
    _dt.rmArah.refresh();
    _dt.rmFoodX.refresh();
    _dt.rmFoodY.refresh();
    _dt.rmIsRunning.refresh();
    _dt.rmIsPause.refresh();
    _dt.rmInitDuration.refresh();
  }

  // randomFood() {
  //   if (_dt.rmSnake.st[0][0] == _dt.rmFoodX.st &&
  //       _dt.rmSnake.st[0][1] == _dt.rmFoodY.st) {
  //     _dt.rmFoodX.st = Random().nextInt(_dt.totalX);

  //     _dt.rmFoodY.st = Random().nextInt(_dt.totalY);
  //     _dt.rmPoint.st = _dt.rmPoint.st + 1;
  //     _dt.timerX.cancel();

  //     _dt.rmInitDuration.st = (_dt.rmInitDuration.st * 0.9).floor();
  //     start();
  //   } else {
  //     _dt.rmSnake.st.removeLast();
  //   }
  // }

  List<int> getRandomFood1() {
    var stringSnake = _dt.rmSnake.st.map((e) => e.toString());
    String stringFood;
    int foodX;
    int foodY;

    do {
      foodX = Random().nextInt(_dt.totalX);
      foodY = Random().nextInt(_dt.totalY);
      stringFood = '[$foodX, $foodY]';

      debugPrint(stringFood);
    } while (stringSnake.contains(stringFood));

    _dt.rmFoodX.st = foodX;
    _dt.rmFoodY.st = foodY;

    return [foodX, foodY];
  }

  isEatSnake1() {
    final snake = _dt.rmSnake.st;
    final xSnake = _dt.rmSnake.st[0][0];
    final ySnake = _dt.rmSnake.st[0][1];
    final foodX = _dt.rmFoodX.st;
    final foodY = _dt.rmFoodY.st;

    if (xSnake == foodX && ySnake == foodY) {
      _dt.rmFoodX.st = getRandomFood1()[0];
      _dt.rmFoodY.st = getRandomFood1()[1];

      _dt.rmPoint.st = _dt.rmPoint.st + 1;
      _dt.timerX.cancel();

      _dt.rmInitDuration.st = (_dt.rmInitDuration.st * 0.9).floor();
      getStart();
    } else {
      snake.removeLast();
    }
  }

  changeDirection(String direction) => _dt.rmArah.st = direction;

  pause() => _dt.rmIsPause.st = !_dt.rmIsPause.st;

  stop() {
    _dt.rmIsPause.st = false;
    _dt.rmIsRunning.st = false;
  }

  // play() {
  //   if (_dt.rmIsPause.st) {
  //     // resume game
  //   } else {
  //     getStart();
  //   }
  //   _dt.rmIsPause.st = false;
  // }

  move() {
    final arahSnake = _dt.rmArah.st;
    if (arahSnake == 'up') {
      final x = [_dt.rmSnake.st[0][0], _dt.rmSnake.st[0][1] - 1];

      _dt.rmSnake.st = [..._dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'down') {
      final x = [_dt.rmSnake.st[0][0], _dt.rmSnake.st[0][1] + 1];
      _dt.rmSnake.st = [..._dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'left') {
      final x = [_dt.rmSnake.st[0][0] - 1, _dt.rmSnake.st[0][1]];
      _dt.rmSnake.st = [..._dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'right') {
      final x = [_dt.rmSnake.st[0][0] + 1, _dt.rmSnake.st[0][1]];
      _dt.rmSnake.st = [..._dt.rmSnake.st]..insert(0, x);
    }
  }

  getStart() {
    _dt.rmIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: _dt.rmInitDuration.st),
      (timer) {
        if (_dt.rmIsPause.st == false) {
          _dt.timerX = timer;
          move();
          // moveSnake(_dt.rmSnake1.st, _dt.rmArahSnake1.st);
          isThroughSnake();
          updateIsFinish();
          checkIsFinish();
          isEatSnake1();
        }
      },
    );
  }

  isThroughSnake() {
    final xSnake = _dt.rmSnake.st[0][0];
    final ySnake = _dt.rmSnake.st[0][1];

    if (xSnake < 0) {
      final snake = _dt.rmSnake.st;
      snake[0][0] = _dt.totalX - 1;
    }
    if (xSnake > _dt.totalX - 1) {
      final snake = _dt.rmSnake.st;
      snake[0][0] = 0;
    }
    if (ySnake < 0) {
      final snake = _dt.rmSnake.st;
      snake[0][1] = _dt.totalY - 1;
    }
    if (ySnake > _dt.totalY - 1) {
      final snake = _dt.rmSnake.st;
      snake[0][1] = 0;
    }
  }

  updateIsFinish() {
    if (isTouchBody()) {
      return _dt.rmIsRunning.st = false;
    } else {
      return null;
    }
  }

  checkIsFinish() {
    if (_dt.rmIsRunning.st == false) {
      _dt.rmIsPause.st = true;
      Dialogs.gameOver2('Game Over', 'Your point is ${_dt.rmPoint.st}');
    }
  }

  bool isTouchBody() {
    var z = false;
    final headX = _dt.rmSnake.st[0][0];
    final headY = _dt.rmSnake.st[0][1];
    final snake1 = _dt.rmSnake.st;

    for (var i = 1; i < snake1.length; i++) {
      if (headX == snake1[i][0] && headY == snake1[i][1]) {
        z = true;
      }
    }
    return z;
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----
}
