part of '_index.dart';

abstract class Data {
  static Injected<CobaSatuData> get cobaSatu => _cobaSatuData;
  static Injected<CobaDuaData> get cobaDua => _cobaDuaData;
  static Injected<CobaTigaData> get cobaTiga => _cobaTigaData;
}

final _cobaSatuData = RM1.inj(CobaSatuData(), Ctrl.cobaSatu.init);
final _cobaDuaData = RM1.inj(CobaDuaData(), Ctrl.cobaDua.init);
final _cobaTigaData = RM1.inj(CobaTigaData(), Ctrl.cobaTiga.init);
