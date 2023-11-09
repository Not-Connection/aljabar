part of '_index.dart';

class CobaTigaView extends StatelessWidget {
  const CobaTigaView({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => Ctrl.cobaTiga;
  CobaTigaData get dt => Data.cobaTiga.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaTigaAppbar(),
      ),
      floatingActionButton: const CobaTigaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CobaTigaCharlie(),
            const CobaTigaDelta(),
            const CobaTigaEcho(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}
