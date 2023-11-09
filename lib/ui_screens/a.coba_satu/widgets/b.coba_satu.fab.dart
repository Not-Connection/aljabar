part of '../_index.dart';

class CobaSatuFab extends StatelessWidget {
  const CobaSatuFab({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => Ctrl.cobaSatu;
  CobaSatuData get dt => Data.cobaSatu.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
