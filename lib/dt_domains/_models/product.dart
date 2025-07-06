part of '_index.dart';

class Product {
  final String id;
  final String name;
  final int price;
  final int qty;
  final String imageUrl;
  final String createdAt;
  final String updatedAt;
  Product({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.qty = 0,
    this.imageUrl = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  Product copyWith({
    String? id,
    String? name,
    int? price,
    int? qty,
    String? imageUrl,
    String? createdAt,
    String? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      qty: qty ?? this.qty,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'qty': qty});
    result.addAll({'image_url': imageUrl});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      qty: map['qty']?.toInt() ?? 0,
      imageUrl: map['image_url'] ?? '',
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, qty: $qty, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.qty == qty &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        qty.hashCode ^
        imageUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
