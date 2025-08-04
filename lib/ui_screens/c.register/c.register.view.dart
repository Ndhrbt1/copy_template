part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(56), child: RegisterAppbar()),
      // floatingActionButton: const RegisterFab(),
      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxEmail.controller,
                    decoration: InputDecoration(
                      hintText: 'name@email.com',
                      errorText: _dt.rxEmail.error,
                      labelText: 'email',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    obscureText: true,
                    controller: _dt.rxPassword.controller,
                    decoration: InputDecoration(
                      hintText: 'password',
                      errorText: _dt.rxPassword.error,
                      labelText: 'password',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: ElevatedButton(onPressed: () => _ct.submit(), child: const Text("submit")),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    nav.toReplacement(Routes.login);
                  },
                  child: const Text("Do you have account? Sign in"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
