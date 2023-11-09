part of '../_index.dart';

class CobaTigaCharlie extends StatelessWidget {
  const CobaTigaCharlie({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => Ctrl.cobaTiga;
  CobaTigaData get dt => Data.cobaTiga.st;

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
