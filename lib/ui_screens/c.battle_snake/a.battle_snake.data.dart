part of '_index.dart';

// final battleSnakeData = RM.inject<BattleSnakeData>(
//   () => BattleSnakeData(),
//   debugPrintWhenNotifiedPreMessage: 'BattleSnakeData',
//   // sideEffects: SideEffects(
//   //   initState: () => battleSnakeCtrl.init(),
//   // ),
// );

class BattleSnakeData {
  final String title = 'Snake Game Battle';
  final String imageSnake = './assets/images/snakeAladdin.png';
  final String imageUlar = './assets/images/ular.png';
  final String imageApple = './assets/images/apple.png';
  final String headSnake1 = './assets/images/snake1.png';
  final String headSnakeBot = './assets/images/snake2.png';
  final String head1 = './assets/images/head1.png';
  final String head2 = './assets/images/head2.png';

  final int totalX = 20;
  final int totalY = 20;
  final int width = 20;

  List<List<ReactiveModel<int?>>> listX = [];

  late Timer timer1;
  late Timer timerBot;

// reactive models
  final rxInitDuration = 500.inj();
  final rxPoint = 0.inj();

  final rxSnake1 = [
    [0, 2],
    [0, 1],
    [0, 0]
  ].inj();

  final rxSnakeBot = [
    [19, 2],
    [19, 1],
    [19, 0]
  ].inj();

  final rxArahSnake1 = 'down'.inj();
  final rxArahSnakeBot = 'down'.inj();

  final rxIsRunning = false.inj();
  final rxIsPause = false.inj();

  late final rxFoodX = RM.inject<int>(() => _ct.getRandomFood1()[0]);
  late final rxFoodY = RM.inject(() => _ct.getRandomFood1()[1]);
}
