class SupermarketProducts {
  late List<Map<String, int>> grains;
  late List<Map<String, int>> fruits;
  late List<Map<String, int>> vegetables;
  late List<Map<String, int>> baby;
  late List<Map<String, int>> pet;
  late List<Map<String, int>> cleaning;
  late List<Map<String, int>> meat;
  late List<Map<String, int>> others;

  SupermarketProducts(
      {
        this.grains = const [],
        this.fruits = const [],
        this.vegetables = const [],
        this.baby = const [],
        this.pet = const [],
        this.cleaning = const [],
        this.meat = const [],
        this.others = const []
      });

  SupermarketProducts.fromJson(Map<String, dynamic> json){
    grains = json['grains'];
    fruits = json['fruits'];
    vegetables = json['vegetables'];
    baby = json['baby'];
    pet = json['pet'];
    cleaning = json['cleaning'];
    meat = json['meat'];
    others = json['others'];
  }

  Map<String, dynamic> toJson() {
    return {
      'grains': grains,
      'fruits': fruits,
      'vegetables': vegetables,
      'baby': baby,
      'pet': pet,
      'cleaning': cleaning,
      'meat': meat,
      'others': others,
    };
  }
}
