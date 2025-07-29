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

  Future<void> deleteDoc(String id) async {
    _sv.deleteDoc(id);
  }
}
