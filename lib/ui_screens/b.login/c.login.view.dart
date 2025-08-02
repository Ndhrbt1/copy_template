part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LoginAppbar(),
      ),
      floatingActionButton: LoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginCharlie(),
            LoginDelta(),
            LoginEcho(),
          ],
        ),
      ),
    );
  }
}
