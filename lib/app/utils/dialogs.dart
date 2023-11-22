part of '_index.dart';

SingleSnakeCtrl get ct2 => singleSnakeCtrl;
SingleSnakeData get dt2 => singleSnakeData.st;

class Dialogs {
  static Future<T?> gameOver<T>(String title, String message) => RM.navigate.toDialog<T>(
        AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            title == 'Confirmation'
                ? TextButton(
                    child: const Text('No'),
                    onPressed: () {
                      nav.back();
                      Data.battleSnake.st.rxIsPause.st = false;
                    },
                  )
                : const SizedBox.shrink(),
            TextButton(
              child: title == 'Confirmation' ? const Text('Yes') : const Text('OK'),
              onPressed: () {
                title == 'Confirmation' ? nav.backUntil(Routes.battleSnake) : nav.back();
                Ctrl.battleSnake.reset();
                Data.battleSnake.st.timer1.cancel();
                Data.battleSnake.st.timerBot.cancel();
              },
            ),
          ],
        ),
        postponeToNextFrame: true,
      );
  static Future<T?> alert<T>(String message) {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Exception Handler'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () => RM.navigate.back(),
          ),
        ],
      ),
      postponeToNextFrame: true,
    );
  }

  static Future<T?> gameOver2<T>(String title, String message) => RM.navigate.toDialog<T>(
        AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            title == 'Confirmation'
                ? TextButton(
                    child: const Text('No'),
                    onPressed: () {
                      nav.back();
                      dt2.rmIsPause.st = false;
                    },
                  )
                : const SizedBox.shrink(),
            TextButton(
              child: title == 'Confirmation' ? const Text('Yes') : const Text('OK'),
              onPressed: () {
                title == 'Confirmation' ? nav.backUntil(Routes.home) : nav.back();
                ct2.reset();
                dt2.timerX.cancel();
              },
            ),
          ],
        ),
        postponeToNextFrame: true,
      );
  static Future<T?> confirmAction<T>(String message) {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => RM.navigate.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => RM.navigate.forceBack(),
          ),
        ],
      ),
    );
  }

  static Future<T?> confirmExit<T>() {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: const Text(
          'You are about to close the app. Do you want to continue?',
        ),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => RM.navigate.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => RM.navigate.forceBack(),
          ),
        ],
      ),
    );
  }
}
