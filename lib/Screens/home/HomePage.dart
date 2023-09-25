// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:food_ring/Screens/resturants/ResturantPage.dart';
import 'package:food_ring/Screens/accounts/CustomerAccountPage.dart';
import 'package:food_ring/Screens/shop/CartPage.dart';
import 'package:food_ring/classes/DummyData.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import '../../configurations/AppColors.dart';
import '../../widgets/general/BigText.dart';
import '../../widgets/general/SmallText.dart';
import '../resturants/Resturants.dart';
import 'HomePageBody.dart';

class HomePage extends StatefulWidget {
    final int userindex;
  const HomePage({super.key, this.userindex=0});

//  @override
//   State<UserPage> createState() => _UserPageState();

  @override
  State<HomePage> createState() => _HomePageState(userindex);
}

class _HomePageState extends State<HomePage> {
int userindex1;

  void initState() {
    userindex1 = widget.userindex;
    super.initState();
  }

_HomePageState(this.userindex1);
  int index=0;
  int _PageIndex = 0;
  int _NavIndex = 0;
  
  @override
  Widget build(BuildContext context) {

//int testnumber=userindex1;
  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: InkWell(
          child: const Text("Food Ring"),
          onTap: () => setState(() {
            _PageIndex = 0;
            _NavIndex = 0;
          }),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _PageIndex = 4;
                _NavIndex = 0;
              });
            },
          )
        ],
        backgroundColor: AppColors.mainColor,
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                BigText(
                  text: 'Hello ! ${CustomerAccountsData[widget.userindex].username}',
                  color: AppColors.mainColor,
                ),
                Row(children: [
                  SmallText(
                    text: 'City',
                  ),
                  const Icon(Icons.arrow_drop_down_rounded),
                ])
             
              ],
            ),
            Column(
              children: [
                Center(
                    child: Container(
                  width: Dimensions.iconContainer,
                  height: Dimensions.iconContainer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(Icons.search, color: Colors.white, size: Dimensions.icon15,),
                )),
              ],
            ),
          ]),
        ),

       Expanded(
        child: SingleChildScrollView(

         // child:Resturants(),
          child:  pages[_PageIndex],
       )
       
       )
       
      ]),

      bottomNavigationBar: BottomNavigationBar(

        

        currentIndex: _NavIndex,
     
        // backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        items: [
          
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
     BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Resturants'),
    BottomNavigationBarItem(icon: ImageIcon(NetworkImage(CustomerAccountsData[userindex1].profilepicture),
    //  NetworkImage('https://d1fdloi71mui9q.cloudfront.net/mz7KcbqIR7tWnzmhtoOw_QFTkJU5qC2Q3j9KQ')
      size: 20,), label: 'My Account'),
  
        ],
        
      //  items,
        onTap: ((value) => {
              setState(() {
                _PageIndex = value;
                _NavIndex=value;
              })
            }),
      ),
    );
  }

  List<Widget> pages = [
    const HomePageBody(),
    const ResturantPage(),
    CustomerAccountPage(index: 0),
    const HomePageBody(),
    const CartPage(),
  ];

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Resturants'),
    BottomNavigationBarItem(icon: ImageIcon(const NetworkImage('https://d1fdloi71mui9q.cloudfront.net/mz7KcbqIR7tWnzmhtoOw_QFTkJU5qC2Q3j9KQ'),size: 20,), label: 'My Account',),
  ];
}
