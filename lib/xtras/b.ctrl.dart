part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static BattleSnakeCtrl get battleSnake => BattleSnakeCtrl();
  static SingleSnakeCtrl get singleSnake => SingleSnakeCtrl();
}
