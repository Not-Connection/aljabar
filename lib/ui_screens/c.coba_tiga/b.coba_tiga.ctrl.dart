part of '_index.dart';

class CobaTigaCtrl {
  CobaTigaData get dt => Data.cobaTiga.st;

  init() => logxx.i(CobaTigaCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
