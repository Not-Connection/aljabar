part of '../_index.dart';

class CobaTigaFab extends StatelessWidget {
  const CobaTigaFab({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => Ctrl.cobaTiga;
  CobaTigaData get dt => Data.cobaTiga.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
