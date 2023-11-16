part of '_index.dart';

final singleSnakeCtrl = SingleSnakeCtrl();

class SingleSnakeCtrl {
  SingleSnakeData get dt => singleSnakeData.st;

  onTapCoordinat(int xCoord, int yCoord) {
    debugPrint('$xCoord , $yCoord');
    final xSnake = dt.rmSnake.st[0][0];
    final ySnake = dt.rmSnake.st[0][1];
    var arahSnake = dt.rmArah.st;

    if (arahSnake == 'up' || arahSnake == 'down') {
      if (xCoord < xSnake) {
        dt.rmArah.st = 'left';
      } else if (xCoord > xSnake) {
        dt.rmArah.st = 'right';
      }
    } else {
      if (yCoord < ySnake) {
        dt.rmArah.st = 'up';
      } else if (yCoord > ySnake) {
        dt.rmArah.st = 'down';
      }
    }
  }

  reset() {
    dt.rmSnake.refresh();
    dt.rmPoint.refresh();
    dt.rmArah.refresh();
    dt.rmFoodX.refresh();
    dt.rmFoodY.refresh();
    dt.rmIsRunning.refresh();
    dt.rmIsPause.refresh();
    dt.rmInitDuration.refresh();
  }

  // randomFood() {
  //   if (dt.rmSnake.st[0][0] == dt.rmFoodX.st &&
  //       dt.rmSnake.st[0][1] == dt.rmFoodY.st) {
  //     dt.rmFoodX.st = Random().nextInt(dt.totalX);

  //     dt.rmFoodY.st = Random().nextInt(dt.totalY);
  //     dt.rmPoint.st = dt.rmPoint.st + 1;
  //     dt.timerX.cancel();

  //     dt.rmInitDuration.st = (dt.rmInitDuration.st * 0.9).floor();
  //     start();
  //   } else {
  //     dt.rmSnake.st.removeLast();
  //   }
  // }

  List<int> getRandomFood1() {
    var stringSnake = dt.rmSnake.st.map((e) => e.toString());
    String stringFood;
    int foodX;
    int foodY;

    do {
      foodX = Random().nextInt(dt.totalX);
      foodY = Random().nextInt(dt.totalY);
      stringFood = '[$foodX, $foodY]';

      debugPrint(stringFood);
    } while (stringSnake.contains(stringFood));

    dt.rmFoodX.st = foodX;
    dt.rmFoodY.st = foodY;

    return [foodX, foodY];
  }

  isEatSnake1() {
    final snake = dt.rmSnake.st;
    final xSnake = dt.rmSnake.st[0][0];
    final ySnake = dt.rmSnake.st[0][1];
    final foodX = dt.rmFoodX.st;
    final foodY = dt.rmFoodY.st;

    if (xSnake == foodX && ySnake == foodY) {
      dt.rmFoodX.st = getRandomFood1()[0];
      dt.rmFoodY.st = getRandomFood1()[1];

      dt.rmPoint.st = dt.rmPoint.st + 1;
      dt.timerX.cancel();

      dt.rmInitDuration.st = (dt.rmInitDuration.st * 0.9).floor();
      getStart();
    } else {
      snake.removeLast();
    }
  }

  changeDirection(String direction) => dt.rmArah.st = direction;

  pause() => dt.rmIsPause.st = !dt.rmIsPause.st;

  stop() {
    dt.rmIsPause.st = false;
    dt.rmIsRunning.st = false;
  }

  play() {
    if (dt.rmIsPause.st) {
      // resume game
    } else {
      getStart();
    }
    dt.rmIsPause.st = false;
  }

  move() {
    final arahSnake = dt.rmArah.st;
    if (arahSnake == 'up') {
      final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] - 1];

      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'down') {
      final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] + 1];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'left') {
      final x = [dt.rmSnake.st[0][0] - 1, dt.rmSnake.st[0][1]];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (arahSnake == 'right') {
      final x = [dt.rmSnake.st[0][0] + 1, dt.rmSnake.st[0][1]];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }
  }

  getStart() {
    dt.rmIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: dt.rmInitDuration.st),
      (timer) {
        if (dt.rmIsPause.st == false) {
          dt.timerX = timer;
          move();
          // moveSnake(dt.rmSnake1.st, dt.rmArahSnake1.st);
          isThroughSnake();
          updateIsFinish();
          checkIsFinish();
          isEatSnake1();
        }
      },
    );
  }

  isThroughSnake() {
    final xSnake = dt.rmSnake.st[0][0];
    final ySnake = dt.rmSnake.st[0][1];

    if (xSnake < 0) {
      final snake = dt.rmSnake.st;
      snake[0][0] = dt.totalX - 1;
    }
    if (xSnake > dt.totalX - 1) {
      final snake = dt.rmSnake.st;
      snake[0][0] = 0;
    }
    if (ySnake < 0) {
      final snake = dt.rmSnake.st;
      snake[0][1] = dt.totalY - 1;
    }
    if (ySnake > dt.totalY - 1) {
      final snake = dt.rmSnake.st;
      snake[0][1] = 0;
    }
  }

  updateIsFinish() {
    if (isTouchBody()) {
      return dt.rmIsRunning.st = false;
    } else {
      return null;
    }
  }

  checkIsFinish() {
    if (dt.rmIsRunning.st == false) {
      dt.rmIsPause.st = true;
      Dialogs.gameOver2('Game Over', 'Your point is ${dt.rmPoint.st}');
    }
  }

  bool isTouchBody() {
    var z = false;
    final headX = dt.rmSnake.st[0][0];
    final headY = dt.rmSnake.st[0][1];
    final snake1 = dt.rmSnake.st;

    for (var i = 1; i < snake1.length; i++) {
      if (headX == snake1[i][0] && headY == snake1[i][1]) {
        z = true;
      }
    }
    return z;
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

}
