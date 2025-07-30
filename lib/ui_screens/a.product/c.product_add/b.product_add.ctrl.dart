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
      imageUrl: await getImageUrl(id),
    );
    await _sv.createDoc(product);
    nav.back();
  }

  Future<XFile?> pickImage() async {
    _dt.rxPickedImage.st = await ImagePicker().pickImage(source: ImageSource.gallery);

    debugPrint(_dt.rxPickedImage.st?.mimeType);
    debugPrint(_dt.rxPickedImage.st?.name);
    debugPrint(_dt.rxPickedImage.st?.path);

    return _dt.rxPickedImage.st;
  }

  Future<TaskSnapshot?> uploadImage(String id) async {
    final data = await _dt.rxPickedImage.st?.readAsBytes();
    final contentType = _dt.rxPickedImage.st?.mimeType;
    _dt.rxTaskSnapshot.st = await FirebaseStorage.instance
        .ref(id)
        .putData(data!, SettableMetadata(contentType: contentType));
    return _dt.rxTaskSnapshot.st;
  }

  Future<String> getImageUrl(String id) async {
    await uploadImage(id);
    _dt.rxImageUrl.st = await _dt.rxTaskSnapshot.st!.ref.getDownloadURL();
    debugPrint(_dt.rxImageUrl.st);
    return _dt.rxImageUrl.st;
  }

  submit() async => _dt.rxForm.submit();
}
