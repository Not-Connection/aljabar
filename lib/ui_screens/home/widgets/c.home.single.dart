part of '../_index.dart';

class HomeSingle extends StatelessWidget {
  const HomeSingle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 150,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.green.shade900, width: 3)),
        onPressed: () {
          nav.to(Routes.singleSnake);
        },
        child: const Text('Single Player', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
