part of '_index.dart';

class RegisterData {
  final rxTitle = 'Register'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createEP();

      // nav.toReplacement(Routes.login);
    },
  );

  final rxEmail = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isEmail]);
  final rxPassword = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.pwdContain]);
}
