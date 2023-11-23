part of '_index.dart';

class SingleSnakeData {
  final String title = 'Snake Game Single';
  final String imageSnake = './assets/images/snakeAladdin.png';
  final String headSnake = './assets/images/snake1.png';
  final String imageApple = './assets/images/apple.png';

  final int totalX = 20;
  final int totalY = 20;

  late Timer timerX;

// reactive models
  final rmInitDuration = 500.inj();
  final rmPoint = 0.inj();

  final rmSnake = [
    [0, 3],
    [0, 2],
    [0, 1],
    [0, 0]
  ].inj();

  final rmArah = 'down'.inj();

  // late final rmFoodX = RM.inject<int>(
  //   () => Random().nextInt(totalX),
  // );
  // late final rmFoodY = RM.inject(
  //   () => Random().nextInt(totalY),
  // );

  late final rmFoodX = RM.inject<int>(() => singleSnakeCtrl.getRandomFood1()[0]);
  late final rmFoodY = RM.inject(() => singleSnakeCtrl.getRandomFood1()[1]);

  final rmIsRunning = false.inj();
  final rmIsPause = false.inj();
}
