part of '_index.dart';

class CobaDuaCtrl {
  CobaDuaData get dt => Data.cobaDua.st;

  init() => logxx.i(CobaDuaCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
