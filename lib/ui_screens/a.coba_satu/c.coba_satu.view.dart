part of '_index.dart';

class CobaSatuView extends StatelessWidget {
  const CobaSatuView({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => Ctrl.cobaSatu;
  CobaSatuData get dt => Data.cobaSatu.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaSatuAppbar(),
      ),
      floatingActionButton: const CobaSatuFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CobaSatuCharlie(),
            const CobaSatuDelta(),
            const CobaSatuEcho(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const CobaDuaView(),
                );
                Navigator.push(context, route);
              },
              child: const Text("go to next page"),
            ),
          ],
        ),
      ),
    );
  }
}
