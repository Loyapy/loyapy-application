import 'package:loyapy/core/core.dart';

import '../../home.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<ProductModel>> fetchBestDeals() async {
    await Future.delayed(const Duration(seconds: 2)); // simulate API delay
    return [
      ProductModel(
        images: [
          JPGAssets.product11,
          JPGAssets.product12,
          JPGAssets.product13,
          JPGAssets.product14,
          JPGAssets.product15,
        ],
        title: 'Smart kitchen Trash Bin',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "DPEX"},
          {"key": "Manufacturer", "value": "DPEX"},
          {"key": "Color", "value": "White Or Off-White"},
          {"key": "Model", "value": "C-317"},
          {
            "key": "Material",
            "value": "Plastic",
          },
          {
            "key": "Dimension",
            "value": "24*16*26cm, The size of the folded is 24*8*26cm",
          },
        ],
        shortDescription: '''
        <div>
  <h3>Advantage:</h3>
  <ul>
    <li><strong>Multifunctional Use</strong> – Can be used as both a trash bin and storage holder for papers, utensils, and kitchen tools.</li>
    <li><strong>Space-Saving Design</strong> – Compact and wall-mounted, it saves valuable space in the kitchen or room.</li>
    <li><strong>Odor-Free Storage</strong> – Designed to store waste without spreading bad smells.</li>
    <li><strong>Easy Trash Removal</strong> – Allows hassle-free disposal and replacement of trash bags or tissue rolls.</li>
    <li><strong>Durable & Lightweight</strong> – Made of sturdy plastic, it is long-lasting and easy to mount anywhere.</li>
  </ul>
</div>

''',
        description: '''
         <div>
  <h3>Description:</h3>
  <p>
    Introducing the multifunctional <strong>Kitchen Trash Bin</strong> – a smart solution for keeping your kitchen or
    living space organized. This wall-mounted plastic bin is designed to store both waste and
    essential items without taking up much space. Ideal for kitchens, mess rooms, or study tables,
    it can hold important papers, utensils, or even tissue rolls and poly bags. The design ensures
    odor-free trash storage while keeping your area clean and tidy. It’s perfect for holding items
    near your dining table, study corner, or kitchen countertop. You can easily remove or replace
    trash without hassle. Its sleek, compact design blends well with any setting. Make your daily
    tasks simpler with this all-in-one storage and trash solution.
  </p>
  <h3>Why Recommend It:</h3>
  <p>
    I recommend this Kitchen Trash Bin because it offers a smart and practical solution for
    organizing both waste and essential items in a single unit. Its multifunctional design, compact
    size, and odor-free storage make it ideal for small kitchens, mess rooms, or study areas.
    It's not just a trash bin—it’s a space-saving organizer that adds convenience to your daily life.
  </p>
</div>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product21,
          JPGAssets.product22,
          JPGAssets.product23,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title: 'Rechargeable Electric Cleaning Brush',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "RAYBIN"},
          {"key": "Manufacturer", "value": "RAYBIN"},
          {"key": "Color", "value": "Off-White"},
          {"key": "Model", "value": "RBSKA018-17"},
          {"key": "Material", "value": "ABS Plastic"},
          {"key": "Dimension", "value": " 17.5*7.4*26cm, weight: 372.5g"}
        ],
        shortDescription: '''
        <div>
 

  <h3>Advantages:</h3>
  <ul>
    <li>The kitchen sink and <em>Hari Patil</em> can be cleaned very easily.</li>
    <li>You can clean dirt from sofas and tiles effortlessly.</li>
    <li>Fat is easily removed from meat.</li>
    <li>The brush cleans dirt accumulated on Thai glass surfaces effectively.</li>
  </ul>


</div>

''',
        description: '''
        <div>
  <h3>Description:</h3>
  <p>
    I have come up with an <strong>electronic cleaning brush</strong> to clean the dirty garbage in your house or kitchen.
    It has versatile qualities — you can clean your kitchen sink, <em>Hari Patil</em>, very easily.
    With the help of this brush, you can also clean the dirt on the sofa or tiles using a <strong>Teflon brush</strong>.
  </p>

  <h3>Recommendations:</h3>
  <p>
    This cleaning brush is made of <strong>ABS plastic</strong> and uses a <strong>brushless motor</strong>, making it strong and durable.
    It features a <strong>2000mAh lithium battery</strong> that provides long battery backup on a single charge.
    It supports <strong>USB charging</strong> on all models and is completely <strong>waterproof</strong>, allowing it to be cleaned in any way.
  </p>
</div>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product16,
          JPGAssets.product17,
          JPGAssets.product18,
          JPGAssets.product19,
          JPGAssets.product110,
        ],
        title: 'Folding Waste Bins Kitchen',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "DPEX"},
          {"key": "Manufacturer", "value": "DPEX"},
          {"key": "Color", "value": "White Or Off-White"},
          {"key": "Model", "value": "C-317"},
          {
            "key": "Material",
            "value": "Plastic",
          },
          {
            "key": "Dimension",
            "value": "24*16*26cm, The size of the folded is 24*8*26cm",
          },
        ],
        shortDescription: '''
        <div>
  <h3>Advantage:</h3>
  <ul>
    <li><strong>Multifunctional Use</strong> – Can be used as both a trash bin and storage holder for papers, utensils, and kitchen tools.</li>
    <li><strong>Space-Saving Design</strong> – Compact and wall-mounted, it saves valuable space in the kitchen or room.</li>
    <li><strong>Odor-Free Storage</strong> – Designed to store waste without spreading bad smells.</li>
    <li><strong>Easy Trash Removal</strong> – Allows hassle-free disposal and replacement of trash bags or tissue rolls.</li>
    <li><strong>Durable & Lightweight</strong> – Made of sturdy plastic, it is long-lasting and easy to mount anywhere.</li>
  </ul>
</div>

''',
        description: '''
         <div>
  <h3>Description:</h3>
  <p>
    Introducing the multifunctional <strong>Kitchen Trash Bin</strong> – a smart solution for keeping your kitchen or
    living space organized. This wall-mounted plastic bin is designed to store both waste and
    essential items without taking up much space. Ideal for kitchens, mess rooms, or study tables,
    it can hold important papers, utensils, or even tissue rolls and poly bags. The design ensures
    odor-free trash storage while keeping your area clean and tidy. It’s perfect for holding items
    near your dining table, study corner, or kitchen countertop. You can easily remove or replace
    trash without hassle. Its sleek, compact design blends well with any setting. Make your daily
    tasks simpler with this all-in-one storage and trash solution.
  </p>
  <h3>Why Recommend It:</h3>
  <p>
    I recommend this Kitchen Trash Bin because it offers a smart and practical solution for
    organizing both waste and essential items in a single unit. Its multifunctional design, compact
    size, and odor-free storage make it ideal for small kitchens, mess rooms, or study areas.
    It's not just a trash bin—it’s a space-saving organizer that adds convenience to your daily life.
  </p>
</div>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product22,
          JPGAssets.product26,
          JPGAssets.product23,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title: 'Electric Household Cleaning Brush',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "RAYBIN"},
          {"key": "Manufacturer", "value": "RAYBIN"},
          {"key": "Color", "value": "Off-White"},
          {"key": "Model", "value": "RBSKA018-17"},
          {"key": "Material", "value": "ABS Plastic"},
          {"key": "Dimension", "value": " 17.5*7.4*26cm, weight: 372.5g"}
        ],
        shortDescription: '''
        <div>
 

  <h3>Advantages:</h3>
  <ul>
    <li>The kitchen sink and <em>Hari Patil</em> can be cleaned very easily.</li>
    <li>You can clean dirt from sofas and tiles effortlessly.</li>
    <li>Fat is easily removed from meat.</li>
    <li>The brush cleans dirt accumulated on Thai glass surfaces effectively.</li>
  </ul>


</div>

''',
        description: '''
        <div>
  <h3>Description:</h3>
  <p>
    I have come up with an <strong>electronic cleaning brush</strong> to clean the dirty garbage in your house or kitchen.
    It has versatile qualities — you can clean your kitchen sink, <em>Hari Patil</em>, very easily.
    With the help of this brush, you can also clean the dirt on the sofa or tiles using a <strong>Teflon brush</strong>.
  </p>

  <h3>Recommendations:</h3>
  <p>
    This cleaning brush is made of <strong>ABS plastic</strong> and uses a <strong>brushless motor</strong>, making it strong and durable.
    It features a <strong>2000mAh lithium battery</strong> that provides long battery backup on a single charge.
    It supports <strong>USB charging</strong> on all models and is completely <strong>waterproof</strong>, allowing it to be cleaned in any way.
  </p>
</div>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product111,
          JPGAssets.product112,
          JPGAssets.product11,
          JPGAssets.product12,
          JPGAssets.product13,
        ],
        title: 'Foldable Trash Can Collapsible Garbage Can for Home',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "DPEX"},
          {"key": "Manufacturer", "value": "DPEX"},
          {"key": "Color", "value": "White Or Off-White"},
          {"key": "Model", "value": "C-317"},
          {
            "key": "Material",
            "value": "Plastic",
          },
          {
            "key": "Dimension",
            "value": "24*16*26cm, The size of the folded is 24*8*26cm",
          },
        ],
        shortDescription: '''
        <div>
  <h3>Advantage:</h3>
  <ul>
    <li><strong>Multifunctional Use</strong> – Can be used as both a trash bin and storage holder for papers, utensils, and kitchen tools.</li>
    <li><strong>Space-Saving Design</strong> – Compact and wall-mounted, it saves valuable space in the kitchen or room.</li>
    <li><strong>Odor-Free Storage</strong> – Designed to store waste without spreading bad smells.</li>
    <li><strong>Easy Trash Removal</strong> – Allows hassle-free disposal and replacement of trash bags or tissue rolls.</li>
    <li><strong>Durable & Lightweight</strong> – Made of sturdy plastic, it is long-lasting and easy to mount anywhere.</li>
  </ul>
</div>

''',
        description: '''
         <div>
  <h3>Description:</h3>
  <p>
    Introducing the multifunctional <strong>Kitchen Trash Bin</strong> – a smart solution for keeping your kitchen or
    living space organized. This wall-mounted plastic bin is designed to store both waste and
    essential items without taking up much space. Ideal for kitchens, mess rooms, or study tables,
    it can hold important papers, utensils, or even tissue rolls and poly bags. The design ensures
    odor-free trash storage while keeping your area clean and tidy. It’s perfect for holding items
    near your dining table, study corner, or kitchen countertop. You can easily remove or replace
    trash without hassle. Its sleek, compact design blends well with any setting. Make your daily
    tasks simpler with this all-in-one storage and trash solution.
  </p>
  <h3>Why Recommend It:</h3>
  <p>
    I recommend this Kitchen Trash Bin because it offers a smart and practical solution for
    organizing both waste and essential items in a single unit. Its multifunctional design, compact
    size, and odor-free storage make it ideal for small kitchens, mess rooms, or study areas.
    It's not just a trash bin—it’s a space-saving organizer that adds convenience to your daily life.
  </p>
</div>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product23,
          JPGAssets.product21,
          JPGAssets.product26,
          JPGAssets.product22,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title: 'Electric Cleaning Brush for Kitchen',
        price: 1250.0,
        originalPrice: 1667.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "RAYBIN"},
          {"key": "Manufacturer", "value": "RAYBIN"},
          {"key": "Color", "value": "Off-White"},
          {"key": "Model", "value": "RBSKA018-17"},
          {"key": "Material", "value": "ABS Plastic"},
          {"key": "Dimension", "value": " 17.5*7.4*26cm, weight: 372.5g"}
        ],
        shortDescription: '''
        <div>
 

  <h3>Advantages:</h3>
  <ul>
    <li>The kitchen sink and <em>Hari Patil</em> can be cleaned very easily.</li>
    <li>You can clean dirt from sofas and tiles effortlessly.</li>
    <li>Fat is easily removed from meat.</li>
    <li>The brush cleans dirt accumulated on Thai glass surfaces effectively.</li>
  </ul>


</div>

''',
        description: '''
        <div>
  <h3>Description:</h3>
  <p>
    I have come up with an <strong>electronic cleaning brush</strong> to clean the dirty garbage in your house or kitchen.
    It has versatile qualities — you can clean your kitchen sink, <em>Hari Patil</em>, very easily.
    With the help of this brush, you can also clean the dirt on the sofa or tiles using a <strong>Teflon brush</strong>.
  </p>

  <h3>Recommendations:</h3>
  <p>
    This cleaning brush is made of <strong>ABS plastic</strong> and uses a <strong>brushless motor</strong>, making it strong and durable.
    It features a <strong>2000mAh lithium battery</strong> that provides long battery backup on a single charge.
    It supports <strong>USB charging</strong> on all models and is completely <strong>waterproof</strong>, allowing it to be cleaned in any way.
  </p>
</div>
''',
      ),
    ];
  }

  @override
  Future<List<String>> fetchBanners() async {
    await Future.delayed(
        const Duration(milliseconds: 10)); // simulate API delay
    return [
      PNGAssets.banner1,
      PNGAssets.banner2,
      PNGAssets.banner3,
      PNGAssets.banner4,
    ];
  }

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 1)); // simulate delay
    return [
      CategoryModel(
        id: '1',
        title: 'Home & Kitchen',
        iconPath: PNGAssets.homeKitchen,
      ),
      CategoryModel(
        id: '2',
        title: 'Electronics',
        iconPath: PNGAssets.electronics,
      ),
      CategoryModel(
        id: '3',
        title: 'Fashion',
        iconPath: PNGAssets.fashion,
      ),
      CategoryModel(
        id: '4',
        title: 'Baby',
        iconPath: PNGAssets.baby,
      ),
      CategoryModel(
        id: '5',
        title: 'Toys',
        iconPath: PNGAssets.toys,
      ),
      CategoryModel(
        id: '6',
        title: 'Sports',
        iconPath: PNGAssets.sports,
      ),
      CategoryModel(
        id: '7',
        title: 'Stationary',
        iconPath: PNGAssets.stationary,
      ),
    ];
  }
}
