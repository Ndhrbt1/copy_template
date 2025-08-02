part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createDoc() async {
    final id = UniqueKey().toString();
    final product = Product(
      id: id,
      name: _dt.rxName.value,
      price: int.parse(_dt.rxPrice.value),
      qty: int.parse(_dt.rxQty.value),
      createdAt: DateTime.now().toString(),
      imageUrl: await _sv.uploadImage(id),
    );

    debugPrint('printed');
    await _sv.createDoc(product);
    nav.back();
  }

  Future<XFile?> pickImage() async {
    _sv.pickImage();

    return _dt.rxPickedImage.st;
  }

  submit() async => _dt.rxForm.submit();
}
