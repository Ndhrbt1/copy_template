part of '_index.dart';

class ProductEditData {
  final rxTitle = 'Product Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
  final rxProductDetail = _pv.rxProductDetail;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => _ct.updateDoc(),
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.fullName],
      text: '${_dt.rxProductDetail.st?.name}',
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.isNumeric],

      text: '${_dt.rxProductDetail.st?.price}',
    ),
  );

  final rxQty = RM.inject(
    () => RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.isNumeric],

      text: '${_dt.rxProductDetail.st?.qty}',
    ),
  );

  final rxPickedImage = _pv.rxPickedImage;
}
