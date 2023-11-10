part of '_index.dart';

class HomeCtrl {
  init() => logxx.i(HomeCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
