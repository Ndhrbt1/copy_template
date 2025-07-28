part of '_index.dart';

class ProductAddData {
  final rxTitle = 'Product Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => _ct.createDoc(),
  );

  final rxName = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.fullName]);
  final rxPrice = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isNumeric]);
  final rxQty = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isNumeric]);
}
