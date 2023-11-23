part of '../_index.dart';

class SingleSnakeAppbar extends StatelessWidget {
  const SingleSnakeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_dt.title),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => RM.navigate.back(),
      ),
      actions: [
        MediaQuery.of(context).size.width > 600
            ? const Row(
                children: [
                  SingleSnakeBtnPause(),
                  SizedBox(width: 5),
                  SingleSnakeBtnStart(),
                  SizedBox(width: 5),
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}