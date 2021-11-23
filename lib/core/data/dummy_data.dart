import 'package:shoptemplate/core/models/product_model.dart';

List<Map<String, dynamic>> onBoarding = [
  {
    'image':
        'assets/images/onBoardingOne.png',
    'title': 'Online Shopping',
    'subtitle':
        'We help you to get what you want in the most easiest way!'
  },
  {
    'image':
        'assets/images/onBoardingTwo.png',
    'title': 'Buy Now!',
    'subtitle':
        'Collect your products to order them in one package!'
  },
];

List<String> images = [
  'https://img.freepik.com/free-vector/e-commerce-online-shopping-banner-template_82574-11343.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-vector/e-commerce-online-shopping-banner-template_82574-11343.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-vector/e-commerce-online-shopping-banner-template_82574-11343.jpg?size=626&ext=jpg'
];

List<ProductModel> womenDresses = [
  ProductModel(
      id: '12',
      title: 'Elegant Dress',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Dresses',
      images: [
        'https://ae01.alicdn.com/kf/HTB1NlJFXEvrK1RjSspcq6zzSXXaY/Business-dress-for-women-office-female-ladies-elegant-Korean-fashion-style-social-office-dress-for-work.jpg_960x960.jpg',
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 200.00,
      offerPrice: 0.0,
      rating: 4.5,
      quantity: 5),
];

List<ProductModel> womenShoes = [
  ProductModel(
      id: '1',
      title: 'Snicker',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Shoes',
      images: [
        'https://i.pinimg.com/originals/bd/8d/16/bd8d168853d3cefca9b9c4372b2d143c.jpg',
        'https://i.pinimg.com/236x/04/71/33/0471338e5024067c9846031140c77e4d.jpg'
      ],
      size: ['38', '39', '40'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: true,
      price: 100.00,
      offerPrice: 75.00,
      rating: 4.5,
      quantity: 5),
];

List<ProductModel> womenHoodies = [
  ProductModel(
      id: '3',
      title: 'Hoodie',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Hoodies',
      images: [
        'https://i.pinimg.com/736x/d2/ab/62/d2ab6231affe89442e5ca41749b8a557.jpg',
        'https://i.pinimg.com/736x/81/a3/93/81a393d0e67f0c2db0862967347608c8.jpg'
      ],
      size: ['XL', 'XX', 'Small'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 100.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
];

List<ProductModel> womenBags = [
  ProductModel(
      id: '4',
      title: 'Backpack',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Bags',
      images: [
        'https://s.yimg.com/aah/yhst-136372476553304/thule-crossover-2-backpack-30l-58.png',
        'https://store.flyingblue.com/media/catalog/product/cache/d18cb01b41c18fc26e1046af99e0e2f4/t/h/thcross30_1_10_1_2_2_1.jpg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 150.00,
      offerPrice: 120.00,
      rating: 3.5,
      quantity: 5),
];

List<ProductModel> menHoodies = [
  ProductModel(
      id: '20',
      title: 'Hoodie',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Hoodies',
      images: [
        'https://www.rankandstyle.com/media/products/j/jcrew-garment-dyed-french-terry-hoodie-mens-ho_Y1vfDeF.jpg',
        'https://matalan-content.imgix.net/uploads/asset_file/asset_file/335927/1624347964.6150389-S2832482_C511_Alt1.jpg?ixlib=rails-2.1.4&cs=tinysrgb&auto=compress%2Cformat&fm=pjpg&w=260&s=601abf320f6194b0c38a01d46685fe4a'
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 120.00,
      offerPrice: 100.0,
      rating: 4.5,
      quantity: 2),
];
List<ProductModel> menBags = [
  ProductModel(
      id: '21',
      title: 'Bag',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Bags',
      images: [
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/crossbodybags-1597174268.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 90.00,
      offerPrice: 0.0,
      rating: 4.5,
      quantity: 2),
];
List<ProductModel> menShoes = [
  ProductModel(
      id: '22',
      title: 'Sports Shoe',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Shoes',
      images: [
        'https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOSPORTS-SHOESFANT11631487AB4743/1617898046991_1..jpeg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 140.00,
      offerPrice: 120.0,
      rating: 4.5,
      quantity: 2),
];

List<ProductModel> kidsDresses = [
  ProductModel(
      id: '23',
      title: 'Dress',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'kids',
      subCategory: 'Dresses',
      images: [
        'https://cdn.shopify.com/s/files/1/0266/6276/4597/products/100001_300857904_039_1.jpg?v=1617796498'
      ],
      size: ['S', 'X'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 180.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
  ProductModel(
      id: '24',
      title: 'Dress',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'kids',
      subCategory: 'Dresses',
      images: [
        'https://img.joomcdn.net/6a33c118a3fedd71126580ce651b8ed62f5c8f37_original.jpeg'
      ],
      size: ['S', 'X'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 200.00,
      offerPrice: 190.0,
      rating: 5,
      quantity: 4),
];
List<ProductModel> kidsBags = [
  ProductModel(
      id: '25',
      title: 'Backpack',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'kids',
      subCategory: 'Bags',
      images: [
        'https://image.made-in-china.com/202f0j00bKfYHyERaGkF/3D-New-Design-Girl-Shoulder-Backpack-Bag-Fashion-Book-Bags-Kids-Travel-School-Bag.jpg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 150.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
];
List<ProductModel> kidsShoes = [
  ProductModel(
      id: '26',
      title: 'Shoe',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'kids',
      subCategory: 'Shoes',
      images: [
        'https://stylesatlife.com/wp-content/uploads/2017/04/Blue-and-White-Girls-Shoe-Design.jpg.webp'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 180.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
];

List<List<ProductModel>> womenCollections = [
  womenDresses,
  womenHoodies,
  womenBags,
  womenShoes
];

List<List<ProductModel>> menCollections = [menHoodies, menBags, menShoes];

List<List<ProductModel>> kidsCollections = [kidsDresses, kidsBags, kidsShoes];

List<String> womenSubCategories = [
  'Dresses',
  'Hoodies',
  'Bags',
  'Shoes',
];

List<String> menSubCategories = [
  'Hoodies',
  'Bags',
  'Shoes',
];

List<String> kidsSubCategories = [
  'Dresses',
  'Bags',
  'Shoes',
];

List<Map<String, dynamic>> categoriesItems = [
  {
    'name': 'Women',
    'image':
        'https://image.freepik.com/free-photo/picture-young-pretty-woman-model-pointing-opened-palm_114579-67123.jpg',
  },
  {
    'name': 'Men',
    'image':
        'https://image.freepik.com/free-photo/portrait-joyful-young-man-white-shirt_171337-17467.jpg',
  },
  {
    'name': 'Kids',
    'image':
        'https://image.freepik.com/free-photo/little-boy-playing-superhero-playground_53876-46868.jpg',
  },
];

const String profileImage =
    'https://image.freepik.com/free-photo/half-profile-beautiful-redhead-girl-with-healthy-freckled-skin-hair-bun-smiling_273609-9363.jpg';

List<ProductModel> cartProducts = [
    ProductModel(
      id: '3',
      title: 'Hoodie',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Hoodies',
      images: [
        'https://i.pinimg.com/736x/d2/ab/62/d2ab6231affe89442e5ca41749b8a557.jpg',
        'https://i.pinimg.com/736x/81/a3/93/81a393d0e67f0c2db0862967347608c8.jpg'
      ],
      size: ['XL', 'XX', 'Small'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 100.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
  ProductModel(
      id: '1',
      title: 'Snicker',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Shoes',
      images: [
        'https://i.pinimg.com/originals/bd/8d/16/bd8d168853d3cefca9b9c4372b2d143c.jpg',
        'https://i.pinimg.com/236x/04/71/33/0471338e5024067c9846031140c77e4d.jpg'
      ],
      size: ['38', '39', '40'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: true,
      price: 100.00,
      offerPrice: 75.00,
      rating: 4.5,
      quantity: 5),
];

List<ProductModel> salesProducts = [

  ProductModel(
      id: '20',
      title: 'Hoodie',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Hoodies',
      images: [
        'https://www.rankandstyle.com/media/products/j/jcrew-garment-dyed-french-terry-hoodie-mens-ho_Y1vfDeF.jpg',
        'https://matalan-content.imgix.net/uploads/asset_file/asset_file/335927/1624347964.6150389-S2832482_C511_Alt1.jpg?ixlib=rails-2.1.4&cs=tinysrgb&auto=compress%2Cformat&fm=pjpg&w=260&s=601abf320f6194b0c38a01d46685fe4a'
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 120.00,
      offerPrice: 100.0,
      rating: 4.5,
      quantity: 2),
       ProductModel(
      id: '14',
      title: 'Solid Blazer',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Blazer',
      images: [
        'https://rukminim1.flixcart.com/image/714/857/blazer/3/g/h/1212243-marks-spencer-m-original-imaegwggpn7snezf.jpeg?q=50',
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: true,
      price: 300.00,
      offerPrice: 240.00,
      rating: 5,
      quantity: 4),
  ProductModel(
      id: '22',
      title: 'Sports Shoe',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Shoes',
      images: [
        'https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOSPORTS-SHOESFANT11631487AB4743/1617898046991_1..jpeg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 140.00,
      offerPrice: 120.0,
      rating: 4.5,
      quantity: 2),
        ProductModel(
      id: '24',
      title: 'Dress',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'kids',
      subCategory: 'Dresses',
      images: [
        'https://img.joomcdn.net/6a33c118a3fedd71126580ce651b8ed62f5c8f37_original.jpeg'
      ],
      size: ['S', 'X'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 200.00,
      offerPrice: 190.0,
      rating: 5,
      quantity: 4),
 
  ProductModel(
      id: '1',
      title: 'Snicker',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Shoes',
      images: [
        'https://i.pinimg.com/originals/bd/8d/16/bd8d168853d3cefca9b9c4372b2d143c.jpg',
        'https://i.pinimg.com/236x/04/71/33/0471338e5024067c9846031140c77e4d.jpg'
      ],
      size: ['38', '39', '40'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: true,
      price: 100.00,
      offerPrice: 75.00,
      rating: 4.5,
      quantity: 5),
  ProductModel(
      id: '4',
      title: 'Backpack',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Bags',
      images: [
        'https://s.yimg.com/aah/yhst-136372476553304/thule-crossover-2-backpack-30l-58.png',
        'https://store.flyingblue.com/media/catalog/product/cache/d18cb01b41c18fc26e1046af99e0e2f4/t/h/thcross30_1_10_1_2_2_1.jpg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 150.00,
      offerPrice: 120.00,
      rating: 3.5,
      quantity: 5),
];

List<ProductModel> products = [
  ProductModel(
      id: '14',
      title: 'Solid Blazer',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Blazer',
      images: [
        'https://rukminim1.flixcart.com/image/714/857/blazer/3/g/h/1212243-marks-spencer-m-original-imaegwggpn7snezf.jpeg?q=50',
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: true,
      price: 300.00,
      offerPrice: 240.00,
      rating: 5,
      quantity: 4),
  ProductModel(
      id: '12',
      title: 'Elegant Dress',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Dresses',
      images: [
        'https://ae01.alicdn.com/kf/HTB1NlJFXEvrK1RjSspcq6zzSXXaY/Business-dress-for-women-office-female-ladies-elegant-Korean-fashion-style-social-office-dress-for-work.jpg_960x960.jpg',
      ],
      size: ['S', 'X', 'XL'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 200.00,
      offerPrice: 0.0,
      rating: 4.5,
      quantity: 5),
      ProductModel(
      id: '22',
      title: 'Sports Shoe',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'men',
      subCategory: 'Shoes',
      images: [
        'https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOSPORTS-SHOESFANT11631487AB4743/1617898046991_1..jpeg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 140.00,
      offerPrice: 120.0,
      rating: 4.5,
      quantity: 2),
  ProductModel(
      id: '1',
      title: 'Snicker',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Shoes',
      images: [
        'https://i.pinimg.com/originals/bd/8d/16/bd8d168853d3cefca9b9c4372b2d143c.jpg',
        'https://i.pinimg.com/236x/04/71/33/0471338e5024067c9846031140c77e4d.jpg'
      ],
      size: ['38', '39', '40'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: true,
      price: 100.00,
      offerPrice: 75.00,
      rating: 4.5,
      quantity: 5),
  ProductModel(
      id: '3',
      title: 'Hoodie',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Hoodies',
      images: [
        'https://i.pinimg.com/736x/d2/ab/62/d2ab6231affe89442e5ca41749b8a557.jpg',
        'https://i.pinimg.com/736x/81/a3/93/81a393d0e67f0c2db0862967347608c8.jpg'
      ],
      size: ['XL', 'XX', 'Small'],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: true,
      inCart: false,
      price: 100.00,
      offerPrice: 0.0,
      rating: 5,
      quantity: 4),
  ProductModel(
      id: '4',
      title: 'Backpack',
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
      category: 'Women',
      subCategory: 'Bags',
      images: [
        'https://s.yimg.com/aah/yhst-136372476553304/thule-crossover-2-backpack-30l-58.png',
        'https://store.flyingblue.com/media/catalog/product/cache/d18cb01b41c18fc26e1046af99e0e2f4/t/h/thcross30_1_10_1_2_2_1.jpg'
      ],
      size: [],
      colors: [0xFFf54242, 0xFFf54290, 0xFFf5bc42, 0xFF000000],
      isFavorite: false,
      inCart: false,
      price: 150.00,
      offerPrice: 120.00,
      rating: 3.5,
      quantity: 5),
];
