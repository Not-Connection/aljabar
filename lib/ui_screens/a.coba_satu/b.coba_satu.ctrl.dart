part of '_index.dart';

class CobaSatuCtrl {
  CobaSatuData get dt => Data.cobaSatu.st;

  init() => logxx.i(CobaSatuCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
