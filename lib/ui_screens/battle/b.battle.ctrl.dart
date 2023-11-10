part of '_index.dart';

class BattleCtrl {
  init() => logxx.i(BattleCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
