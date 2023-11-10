part of '_index.dart';

class BattleView extends StatelessWidget {
  const BattleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BattleAppbar(),
      ),
      floatingActionButton: BattleFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BattleCharlie(),
            BattleDelta(),
            BattleEcho(),
          ],
        ),
      ),
    );
  }
}
