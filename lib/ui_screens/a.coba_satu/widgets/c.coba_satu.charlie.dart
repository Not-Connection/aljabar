part of '../_index.dart';

class CobaSatuCharlie extends StatelessWidget {
  const CobaSatuCharlie({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => Ctrl.cobaSatu;
  CobaSatuData get dt => Data.cobaSatu.st;
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
