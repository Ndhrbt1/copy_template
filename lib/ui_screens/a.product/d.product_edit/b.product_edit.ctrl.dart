part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> updateDoc() async {
    final id = _dt.rxProductDetail.st!.id;
    final productEdit = Product(
      id: id,
      name: _dt.rxName.st.value,
      price: int.parse(_dt.rxPrice.st.value),
      qty: int.parse(_dt.rxQty.st.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
      updatedAt: DateTime.now().toString(),
      imageUrl: await _sv.uploadImage(id),
    );

    _sv.updateDoc(productEdit);
    nav.back();
  }

  submit() async => _dt.rxForm.submit();

  Future<XFile?> pickImage() async {
    _sv.pickImage();

    return _dt.rxPickedImage.st;
  }
}
