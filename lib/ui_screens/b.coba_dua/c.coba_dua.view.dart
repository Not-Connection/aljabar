part of '_index.dart';

class CobaDuaView extends StatelessWidget {
  const CobaDuaView({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => Ctrl.cobaDua;
  CobaDuaData get dt => Data.cobaDua.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaDuaAppbar(),
      ),
      floatingActionButton: const CobaDuaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CobaDuaCharlie(),
            const CobaDuaDelta(),
            const CobaDuaEcho(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const CobaTigaView(),
                );
                Navigator.push(context, route);
              },
              child: const Text("go to next page"),
            ),
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
