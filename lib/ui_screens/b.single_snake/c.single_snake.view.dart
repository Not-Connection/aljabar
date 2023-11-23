part of '_index.dart';

class SingleSnakeView extends StatelessWidget {
  const SingleSnakeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SingleSnakeAppbar(),
      ),
      body: SingleSnakeSwipeDirection(),
    );
  }
}
