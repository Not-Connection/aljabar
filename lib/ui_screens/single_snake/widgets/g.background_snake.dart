part of '../_index.dart';

class SingleSnakeBackground extends StatelessWidget {
  const SingleSnakeBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MediaQuery.of(context).size.width < 600
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleSnakeBtnPause(),
                        SizedBox(width: 5),
                        SingleSnakeBtnStart(),
                        SizedBox(width: 5),
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      color: Colors.brown.shade800,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          width: double.infinity,
                          color: Colors.black,
                          margin: const EdgeInsets.all(20),
                          child: const SingleSnakeItemGridView(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                constraints: const BoxConstraints(maxWidth: 700),
                color: Colors.brown.shade800,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    margin: const EdgeInsets.all(30),
                    child: const SingleSnakeItemGridView(),
                  ),
                ),
              ),
        const SingleSnakePoint()
      ],
    );
  }
}
