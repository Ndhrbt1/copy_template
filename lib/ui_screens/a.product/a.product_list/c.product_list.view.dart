part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductListAppbar()),
      floatingActionButton: ProductListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final read = await FirebaseFirestore.instance.collection('product').get();
                debugPrint(read.toString());
                debugPrint(read.docs[0].id);
                debugPrint(read.docs[0]['name']);
              },
              child: Text("Read"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection('product').doc('docid123').set({
                  'name': 'nostra',
                  'price': 123123,
                  'qty': 123,
                });
                debugPrint('data has been created');
              },
              child: Text("Create"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection('product').doc('docid123').set({
                  'name': 'nostra edited',
                  'colour': 'green',
                }, SetOptions(merge: true));
                debugPrint('data has been updated');
              },
              child: Text("Update"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection('product').doc('docid123').update({
                  'name': 'nostra edited again',
                  'colour': 'green',
                });
                debugPrint('data has been updated 2');
              },
              child: Text("Update 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection('product').doc('docid123').delete();
                debugPrint('data has been deleted');
              },
              child: Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
