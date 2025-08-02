part of '_index.dart';

class RegisterData {
  final rxTitle = 'Register'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
