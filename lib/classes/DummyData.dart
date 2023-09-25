// ignore_for_file: constant_identifier_names, file_names

import 'package:food_ring/classes/ResturantReviews.dart';
import 'package:food_ring/classes/Resturants.dart';

import 'CustomerAccounts.dart';
import 'Products.dart';

import 'Reviews.dart';

const CustomerAccountsData = [
  CustomerAccounts(
      profilepicture:
          'https://d1fdloi71mui9q.cloudfront.net/mz7KcbqIR7tWnzmhtoOw_QFTkJU5qC2Q3j9KQ',
      username: 'tabarak',
      password: '12345',
      role: 'customer',
      address: 'Garden Town'),
];

const ReviewsData = [
  Reviews(
    ProductId: 'P001',
    ReviewId: 1,
    Name: 'John Doe 1',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P001',
    ReviewId: 2,
    Name: 'John Doe 2',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P001',
    ReviewId: 3,
    Name: 'John Doe 3',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P001',
    ReviewId: 4,
    Name: 'John Doe 4',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P001',
    ReviewId: 5,
    Name: 'John Doe 5',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P002',
    ReviewId: 6,
    Name: 'John Doe 6',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P002',
    ReviewId: 7,
    Name: 'John Doe 7',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P002',
    ReviewId: 8,
    Name: 'John Doe 8',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P002',
    ReviewId: 9,
    Name: 'John Doe 9',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P002',
    ReviewId: 10,
    Name: 'John Doe 10',
    Review: 'Food Was Amazing',
    Stars: 4.9,
    TimeStamp: 'two days ago',
  ),
  Reviews(
    ProductId: 'P001',
    ReviewId: 11,
    Name: 'John Doe 11',
    Review: 'Poor Quality',
    Stars: 1,
    TimeStamp: 'just Now',
  ),
  Reviews(
    ProductId: 'P004',
    ReviewId: 12,
    Name: 'William Son',
    Review: 'Ammazing , Just Love it !!\n It was so so amazing',
    Stars: 5,
    TimeStamp: 'just Now',
  ),
];

// Products Data
const ProductsData = [
  Products(
      pId: 'P001',
      rId: 'R002',
      pName: 'Spaghetti with Tomato Sauce',
      categories: [
        'Italian Food',
        'Vegtable',
      ],
      pimageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      pDescription:
          'Cut the tomatoes and the onion into small pieces Boil some water - add salt to it once it boils Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes. In the meantime, heaten up some olive oil and add the cut onion. After 2 minutes, add the tomato pieces, salt, pepper and your other spices. The sauce will be done once the spaghetti are Feel free to add some cheese on top of the finished dish',
      pRegularPrice: 200,
      pSalePrice: 190,
      quantity: 10),
  Products(
      pId: 'P002',
      rId: 'R002',
      pName: 'Toast Hawaii',
      categories: [
        'Italian Food',
        'Vegtable',
      ],
      pimageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      pDescription:
          'Butter one side of the white bread Layer ham, the pineapple and cheese on the white bread Bake the toast for round about 10 minutes in the oven at 200°C',
      pRegularPrice: 700,
      pSalePrice: 590,
      quantity: 20),
  Products(
      pId: 'P003',
      rId: 'R001',
      pName: 'Classic Hamburger',
      categories: [
        'Dinner',
        'Vegtable',
      ],
      pimageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      pDescription:
          'Form 2 patties Fry the patties for c. 4 minutes on each side Quickly fry the buns for c. 1 minute on each side Bruch buns with ketchu Serve burger with tomato, cucumber and onion',
      pRegularPrice: 300,
      pSalePrice: 290,
      quantity: 10),
  Products(
      pId: 'P004',
      rId: 'R001',
      pName: 'Chicken Biryani',
      categories: [
        'Dinner',
        'Rice',
      ],
      pimageUrl:
          'https://images.deliveryhero.io/image/fd-pk/LH/z2nv-hero.jpg?width=1600&height=400&quality=45',
      pDescription:
          'Form 2 patties Fry the patties for c. 4 minutes on each side Quickly fry the buns for c. 1 minute on each side Bruch buns with ketchu Serve burger with tomato, cucumber and onion',
      pRegularPrice: 190,
      pSalePrice: 150,
      quantity: 10),
  Products(
      pId: 'P005',
      rId: 'R001',
      pName: 'Special Mutton Chanp',
      pDescription: '1 Sekh, 2 Pcs',
      pRegularPrice: 540,
      pSalePrice: 520,
      quantity: 100,
      pimageUrl:
          'https://www.khizertikkashop.com/wp-content/uploads/2021/02/1_m_chanp-1.png',
      categories: ['BBQ', 'Tikka']),

      Products(
      pId: 'P001',
      rId: 'R001',
      pName: 'Spaghetti with Tomato Sauce',
      categories: [
        'Italian Food',
        'Vegtable',
      ],
      pimageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      pDescription:
          'Cut the tomatoes and the onion into small pieces Boil some water - add salt to it once it boils Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes. In the meantime, heaten up some olive oil and add the cut onion. After 2 minutes, add the tomato pieces, salt, pepper and your other spices. The sauce will be done once the spaghetti are Feel free to add some cheese on top of the finished dish',
      pRegularPrice: 200,
      pSalePrice: 190,
      quantity: 10),
];

const ResturantsData = [
  Resturants(
      rId: 'R001',
      rimageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipMwdAIBm7s3dKrFGonWTaqoDF2ZPh-20kpJS0Jl=w500-h500-k-no',
      rtitle: 'Khizar Tikka Shop',
      rdescription: 'BBQ Special',
      rlocation: 'https://goo.gl/maps/1ZzTb4nvLabdeAwe9',
      rMinDelivery: 100),
  Resturants(
      rId: 'R002',
      rimageUrl:
          'https://scontent.flhe2-3.fna.fbcdn.net/v/t39.30808-6/311045073_471625508315225_2348784862445286749_n.jpg?stp=dst-jpg_s960x960&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeFH0GcdUzem6rkAxDN0ClblQ5iPJNCFJAVDmI8k0IUkBWeCFa10IyFZQdbfW9z2H3IJc25SrsxQfhn9UvRSvmeK&_nc_ohc=TFSG-m0dmh0AX-qxqFs&_nc_zt=23&_nc_ht=scontent.flhe2-3.fna&oh=00_AT8FXusFLIbPdB15sEauhrzkEWuG2GDPk4KQpTQRoSXo4A&oe=6350CFA2',
      rtitle: 'Butt Burger Point',
      rdescription: 'Fast food restaurant',
      rlocation: 'https://goo.gl/maps/ooLuvoeQ6K8JcizKA',
      rMinDelivery: 90),
];

const ResturantReviewsData = [
  ResturantReviews(
      ReviewId: 1,
      ResturantId: 'R002',
      Name: 'Fahad Arshad',
      Review:
          'Heard a lot about Khizer Tikka shop finally went their and it was worth it best mutton chops and nalli grilled\n Mutton Tikka was meh Don\'t about chicken and other stuff',
      Stars: 4.5,
      TimeStamp: 'a day ago'),
  ResturantReviews(
      ReviewId: 2,
      ResturantId: 'R001',
      Name: 'KasHif Ali KasHif',
      Review:
          'I visited there many times with my friends and business meetings .  Their tastes are very yummy and organic . They have a organized staff . Motton karahi and grilled fish 🐠 are there most famous and delicious dishes',
      Stars: 5,
      TimeStamp: 'a day ago'),
  ResturantReviews(
      ReviewId: 3,
      ResturantId: 'R002',
      Name: 'Ali Khan',
      Review:
          'I almost visited whole pakistan but never Never tasted Tikka soft Juicy and yummiest Tikka like that\nExcellent service\nVery professional staff\nVery cooperative\nVery quick service\nLove to be their again',
      Stars: 3,
      TimeStamp: 'a day ago'),
  ResturantReviews(
      ReviewId: 4,
      ResturantId: 'R001',
      Name: 'Ahmed Azam',
      Review: 'Nice to visit but, Average Taste',
      Stars: 2,
      TimeStamp: 'two day ago')
];
