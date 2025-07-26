part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.st = id;
  }

  readList() async {
    _pv.rxProductList.stateAsync = _rp.getColl();
  }

  readDoc() {
    _pv.rxProductDetail.stateAsync = _rp.getDoc();
  }

  Future<void> createDoc(Product product) async {
    _rp.createDoc(product);
    _pv.rxProductList.st = [..._pv.rxProductList.st]..insert(0, product);
    debugPrint(product.toString());
  }

  Future<void> updateDoc(Product productEdit) async {
    _rp.updateDoc(productEdit);
    _pv.rxProductList.setState((s) {
      final index = _pv.rxProductList.st.indexWhere((element) => element.id == productEdit.id);
      return s[index] = productEdit;
    });
    debugPrint('product has been edited');
  }

  Future<void> deleteDoc(String id) async {
    _rp.deleteDoc(id);
    _pv.rxProductList.st = [..._pv.rxProductList.st]..removeWhere((element) => element.id == id);
    debugPrint('product has been deleted');
  }
}
