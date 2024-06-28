class FoodModel {
  String? image;
  String? name;
  String? deal;
  String? category;
  String? openTime;
  String? type;
  String? closeTime;
  String? time;
  String? productName;
  String? description;
  String? restaurantName;
  String? restaurantAddress;
  String? stateDishes;
  int? productNo;
  double? km;
  dynamic rating;
  int? ratingPerson;
  int? price;
  int? quantity;
  int? cart;
  bool? extra;
  bool? addProduct;
  bool? favourite;
  List<FoodModel> foodListDetails = [];

  FoodModel(
      {this.image,
      this.name,
      this.deal,
      this.openTime,
      this.cart,
      this.addProduct,
      this.restaurantAddress,
      this.ratingPerson,
      this.rating,
      this.quantity,
      this.productNo,
      this.productName,
      this.price,
      this.km,
      this.favourite,
      this.extra,
      this.description,
      this.closeTime,
      this.category,
      this.restaurantName,
      this.type,
      this.time,
      this.stateDishes});

  factory FoodModel.fromFood(Map m1) {
    return FoodModel(
        image: m1['image'],
        name: m1['name'],
        deal: m1['deal'],
        addProduct: m1['addProduct'],
        cart: m1['cart'],
        category: m1['category'],
        closeTime: m1['closeTime'],
        description: m1['description'],
        extra: m1['extra'],
        favourite: m1['favourite'],
        km: m1['km'],
        openTime: m1['openTime'],
        price: m1['price'],
        productName: m1['productName'],
        productNo: m1['productNo'],
        quantity: m1['quantity'],
        rating: m1['rating'],
        ratingPerson: m1['ratingPerson'],
        restaurantAddress: m1['restaurantAddress'],
        restaurantName: m1['restaurantName'],
        stateDishes: m1['stateDishes'],
        time: m1['Time'],
        type: m1['type']);
  }

  FoodModel.toList({required List list1}) {
    for (int i = 0; i < list1.length; i++) {
      foodListDetails.add(FoodModel.fromFood(list1[i]));
    }
  }
}
