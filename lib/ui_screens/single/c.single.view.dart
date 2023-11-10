part of '_index.dart';

class SingleView extends StatelessWidget {
  const SingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SingleAppbar(),
      ),
      floatingActionButton: SingleFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleCharlie(),
            SingleDelta(),
            SingleEcho(),
          ],
        ),
      ),
    );
  }
}
