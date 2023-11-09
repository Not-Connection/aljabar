part of '../_index.dart';

class CobaSatuAppbar extends StatelessWidget {
  const CobaSatuAppbar({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => Ctrl.cobaSatu;
  CobaSatuData get dt => Data.cobaSatu.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
