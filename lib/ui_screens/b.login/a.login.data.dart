part of '_index.dart';

class LoginData {
  final rxTitle = 'Login'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.signInEP();
    },
  );

  final rxEmail = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isEmail]);
  final rxPassword = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.pwdContain]);
}
