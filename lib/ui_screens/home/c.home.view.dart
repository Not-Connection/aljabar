part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      floatingActionButton: const HomeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                nav.to(Routes.singleSnake);
              },
              child: const Text('Single Player'),
            ),
            OutlinedButton(
              onPressed: () {
                nav.to(Routes.battle);
              },
              child: const Text('Playing with Bot'),
            ),
          ],
        ),
      ),
    );
  }
}
