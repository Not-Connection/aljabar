part of '../_index.dart';

class HomeBot extends StatelessWidget {
  const HomeBot({
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
          nav.to(Routes.battle);
        },
        child: const Text('Playing with Bot', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
