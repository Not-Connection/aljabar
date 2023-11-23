part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<BattleSnakeData> get battleSnake => _battleSnakeData;
  static Injected<SingleSnakeData> get singleSnake => _singleSnakeData;
}

final _homeData = RM1.inj(HomeData(), () => Ctrl.home.init);
final _battleSnakeData = RM1.inj(BattleSnakeData(), () => Ctrl.battleSnake.init);
final _singleSnakeData = RM1.inj(SingleSnakeData(), () => Ctrl.singleSnake.init);
