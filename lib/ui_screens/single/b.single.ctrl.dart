part of '_index.dart';

class SingleCtrl {
  init() => logxx.i(SingleCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
