part of '../_index.dart';

class CobaDuaAppbar extends StatelessWidget {
  const CobaDuaAppbar({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => Ctrl.cobaDua;
  CobaDuaData get dt => Data.cobaDua.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
