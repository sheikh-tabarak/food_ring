import 'package:flutter/material.dart';
import 'package:food_ring/Screens/accounts/Login.dart';
import 'package:food_ring/classes/DummyData.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'package:food_ring/widgets/general/BigText.dart';
import '../../configurations/AppColors.dart';
import '../home/HomePage.dart';

class CustomerAccountPage extends StatelessWidget {
  final int index;
  const CustomerAccountPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
  decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image: DecorationImage(
     // borderRadius:BorderRadius.circular(10),
      image: NetworkImage(CustomerAccountsData[index].profilepicture),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(50),
  ),
),
     //   DecorationImage(image: NetworkImage('https://d1fdloi71mui9q.cloudfront.net/mz7KcbqIR7tWnzmhtoOw_QFTkJU5qC2Q3j9KQ')),        
            SizedBox(height: Dimensions.height15,),
        BigText(text: CustomerAccountsData[index].username),
        SizedBox(height: Dimensions.height15,),
        
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            minimumSize: const Size.fromHeight(50),
          ),
          child: const Text('Logout'),
          onPressed: () {
           // if (IsUserExist == true && IsPasswordCorrect == true) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const 
                  Login()));
            }
          
        )
      ],
    ));
  }
}
