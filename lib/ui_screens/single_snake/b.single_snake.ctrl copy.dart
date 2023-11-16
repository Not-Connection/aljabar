// part of '_index.dart';

// final singleSnakeCtrl = SingleSnakeCtrl();

// class SingleSnakeCtrl {
//   SingleSnakeData get dt => singleSnakeData.st;

//   tappedCoordinat(int x, int y) {
    
//     debugPrint('$x , $y');
//     if (dt.rmArah.st == 'up' || dt.rmArah.st == 'down') {
//       if (x < dt.rmSnake.st[0][0]) {
//         dt.rmArah.st = 'left';
//       } else if (x > dt.rmSnake.st[0][0]) {
//         dt.rmArah.st = 'right';
//       }
//     } else {
//       if (y < dt.rmSnake.st[0][1]) {
//         dt.rmArah.st = 'up';
//       } else if (y > dt.rmSnake.st[0][1]) {
//         dt.rmArah.st = 'down';
//       }
//     }
//   }

//   reset() {
//     dt.rmSnake.refresh();
//     dt.rmPoint.refresh();
//     dt.rmArah.refresh();
//     dt.rmFoodX.refresh();
//     dt.rmFoodY.refresh();
//     dt.rmIsRunning.refresh();
//     dt.rmIsPause.refresh();
//     dt.rmInitDuration.refresh();
//   }

//   randomFood() {
//     if (dt.rmSnake.st[0][0] == dt.rmFoodX.st &&
//         dt.rmSnake.st[0][1] == dt.rmFoodY.st) {
//       dt.rmFoodX.st = Random().nextInt(dt.totalX);

//       dt.rmFoodY.st = Random().nextInt(dt.totalY);
//       dt.rmPoint.st = dt.rmPoint.st + 1;
//       dt.timerX.cancel();

//       dt.rmInitDuration.st = (dt.rmInitDuration.st * 0.9).floor();
//       start();
//     } else {
//       dt.rmSnake.st.removeLast();
//     }
//   }

//   changeDirection(String direction) => dt.rmArah.st = direction;

//   pause() => dt.rmIsPause.st = !dt.rmIsPause.st;

//   stop() {
//     dt.rmIsPause.st = false;
//     dt.rmIsRunning.st = false;
//   }

//   play() {
//     if (dt.rmIsPause.st) {
//       // resume game
//     } else {
//       start();
//     }
//     dt.rmIsPause.st = false;
//   }

//   move() {
//     if (dt.rmArah.st == 'up') {
//       final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] - 1];

//       dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
//     }

//     if (dt.rmArah.st == 'down') {
//       final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] + 1];
//       dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
//     }

//     if (dt.rmArah.st == 'left') {
//       final x = [dt.rmSnake.st[0][0] - 1, dt.rmSnake.st[0][1]];
//       dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
//     }

//     if (dt.rmArah.st == 'right') {
//       final x = [dt.rmSnake.st[0][0] + 1, dt.rmSnake.st[0][1]];
//       dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
//     }
//   }

//   start() {
//     dt.rmIsRunning.st = true;
//     Timer.periodic(
//       Duration(milliseconds: dt.rmInitDuration.st),
//       (timer) {
//         if (dt.rmIsPause.st == false) {
//           dt.timerX = timer;
//           move();
//           through();
//           updateIsFinish();
//           checkIsFinish();
//           randomFood();
//         }
//       },
//     );
//   }

//   through() {
//     if (dt.rmSnake.st[0][0] < 0) {
//       final snake = dt.rmSnake.st;
//       snake[0][0] = dt.totalX - 2;
//     }
//     if (dt.rmSnake.st[0][0] > dt.totalX - 1) {
//       final snake = dt.rmSnake.st;
//       snake[0][0] = 0;
//     }
//     if (dt.rmSnake.st[0][1] < 0) {
//       final snake = dt.rmSnake.st;
//       snake[0][1] = dt.totalY - 2;
//     }
//     if (dt.rmSnake.st[0][1] > dt.totalY - 1) {
//       final snake = dt.rmSnake.st;
//       snake[0][1] = 0;
//     }
//   }

//   updateIsFinish() {
//     if (touchBody()) {
//       dt.rmIsRunning.st = false;
//     }
//   }

//   checkIsFinish() {
//     if (dt.rmIsRunning.st == false) {
//       dt.rmIsPause.st = true;
//       Dialogs.gameOver2('Game Over', 'Your point is ${dt.rmPoint.st}');
//     }
//   }

//   bool touchBody() {
//     var z = false;
//     final headX = dt.rmSnake.st[0][0];
//     final headY = dt.rmSnake.st[0][1];
//     for (var i = 1; i < dt.rmSnake.st.length; i++) {
//       if (headX == dt.rmSnake.st[i][0] && headY == dt.rmSnake.st[i][1]) {
//         z = true;
//       }
//     }
//     return z;
//   }

//   //* ----- ----- ----- ----- ----- ----- ----- ----- -----

// }
