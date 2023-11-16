part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SingleCtrl get single => SingleCtrl();
  static BattleCtrl get battle => BattleCtrl();
}
