part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductAddAppbar()),
      // floatingActionButton: ProductAddFab(),
      body: Center(
        child: SizedBox(
          width: 480,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnReactive(
                () => Column(
                  children: [
                    _dt.rxPickedImage.st == null
                        ? Card(
                            child: SizedBox(height: 100, width: 100, child: Center(child: Text('No Image'))),
                          )
                        : SizedBox(height: 100, width: 100, child: Image.network(_dt.rxPickedImage.st!.path)),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () async {
                        _ct.pickImage();
                      },
                      child: Text("Pick Image"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxName.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'name',
                    errorText: _dt.rxName.error,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxPrice.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'price',
                    errorText: _dt.rxPrice.error,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxQty.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'quantity',
                    errorText: _dt.rxQty.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => CircularProgressIndicator(),
                child: ElevatedButton(
                  onPressed: () {
                    _ct.submit();
                  },
                  child: Text("submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
