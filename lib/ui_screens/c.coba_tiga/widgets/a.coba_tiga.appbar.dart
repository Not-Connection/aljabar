part of '../_index.dart';

class CobaTigaAppbar extends StatelessWidget {
  const CobaTigaAppbar({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => Ctrl.cobaTiga;
  CobaTigaData get dt => Data.cobaTiga.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
