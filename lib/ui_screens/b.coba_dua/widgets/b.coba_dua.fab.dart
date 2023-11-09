part of '../_index.dart';

class CobaDuaFab extends StatelessWidget {
  const CobaDuaFab({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => Ctrl.cobaDua;
  CobaDuaData get dt => Data.cobaDua.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
