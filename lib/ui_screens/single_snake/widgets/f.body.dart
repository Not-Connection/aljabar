part of '../_index.dart';

class SingleSnakeBody extends StatelessWidget {
  const SingleSnakeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SingleSnakeBackground(),
            ),
          ],
        ),
        // SingleSnakeImageLandscape(),
      ],
    );
  }
}
