part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  setSelectedId(String id) {
    _sv.setSelectedId(id);
    debugPrint(_dt.rxSelectedId.st);
  }

  readList() async {
    _sv.readList();
  }

  readDoc(String id) {
    _sv.readDoc();
  }

  Future<void> createDoc() async {
    final product = Product(
      id: UniqueKey().toString(),
      name: generateWordPairs().take(2).join(' '),
      price: Random().nextInt(99999),
      qty: Random().nextInt(99),
      createdAt: DateTime.now().toString(),
    );
    _sv.createDoc(product);
  }

  Future<void> updateDoc(Product product) async {
    final productEdit = Product(
      id: product.id,
      name: 'product edited ',
      price: 100,
      qty: 10,
      createdAt: product.createdAt,
      updatedAt: DateTime.now().toString(),
    );
    _sv.updateDoc(productEdit);
  }

  Future<void> deleteDoc(String id) async {
    _sv.deleteDoc(id);
  }
}
