part of '../_index.dart';

class CobaDuaCharlie extends StatelessWidget {
  const CobaDuaCharlie({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => Ctrl.cobaDua;
  CobaDuaData get dt => Data.cobaDua.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
