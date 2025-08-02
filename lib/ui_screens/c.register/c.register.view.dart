part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RegisterAppbar(),
      ),
      floatingActionButton: RegisterFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterCharlie(),
            RegisterDelta(),
            RegisterEcho(),
          ],
        ),
      ),
    );
  }
}
