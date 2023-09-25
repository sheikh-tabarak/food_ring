// ignore_for_file: non_constant_identifier_names, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ring/Screens/home/HomePage.dart';
import 'package:food_ring/classes/DummyData.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';

import '../../widgets/general/BigText.dart';

//import 'package:flutter/material.dart';

// class OutlineIndicator extends Decoration {
//   const OutlineIndicator({

//     this.color = const Color.fromARGB(255, 0, 0, 0),
//     this.strokeWidth = 2,
//     this.radius = const Radius.circular(24),
//   });

//   final Color color;
//   final double strokeWidth;
//   final Radius radius;

//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _OutlinePainter(
//       color: color,
//       strokeWidth: strokeWidth,
//       radius: radius,
//       onChange: onChanged,
//     );
//   }
// }

// class _OutlinePainter extends BoxPainter {
//   _OutlinePainter({
//     required this.color,
//     required this.strokeWidth,
//     required this.radius,
//     VoidCallback? onChange,
//   })  : _paint = Paint()
//           ..style = PaintingStyle.stroke
//           ..color = color
//           ..strokeWidth = strokeWidth,
//         super(onChange);

//   final Color color;
//   final double strokeWidth;
//   final Radius radius;
//   final Paint _paint;

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     assert(configuration.size != null);
//     var rect = offset & configuration.size!;
//     var rrect = RRect.fromRectAndRadius(rect, radius);
//     canvas.drawRRect(rrect, _paint);
//   }
// }

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller = TextEditingController();

  bool IsUserExist = false;
  bool IsPasswordCorrect = false;

  late String usernamemessage = '';
  late IconData usericon;
  int userLock = 0;

  late String passwordmessage = '';
  late IconData passicon;

  @override
  void initState() {
    super.initState();

    // if (IsUserExist = false) {
    //   usericon = Icons.check_circle;
    // } else {
    //   usericon = Icons.error_outline;
    // }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //  mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image/logo.png',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                height: Dimensions.height15,
              ),
              BigText(
                text: "Suggestion Ring",
                size: 24,
              ),
              Container(
                // margin: EdgeInsets.only(top:100),
                height: 600,
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Scaffold(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      appBar: PreferredSize(
                        preferredSize: Size.fromHeight(100.0),
                        child: AppBar(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 0,

                          //    toolbarHeight:100,
                          //  title: Text('Test',),
                          bottom: TabBar(
                              padding: EdgeInsets.only(
                                left: Dimensions.screenWidth / 5.5,
                                right: Dimensions.screenWidth / 5.5,
                              ),
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 2.0, color: AppColors.mainColor)

                                  // color: Colors.white,

                                  ),
                              labelColor: AppColors.mainColor,
                              unselectedLabelColor: Colors.black,
                              indicatorColor: AppColors.mainColor,
                              indicatorWeight: 1,
                              isScrollable: false,
                              tabs: [
                                Container(
                                  child: Tab(
                                      child: Container(
                                    child: Icon(
                                      Icons.account_circle,
                                      size: 30,
                                    ),
                                  )),
                                ),
                                Container(
                                  height: 80,
                                  child: Tab(
                                    icon: Icon(
                                      Icons.restaurant,
                                      size: 30,
                                    ),
                                    //text: 'Resturant'
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  child: Tab(
                                    icon: Icon(
                                      Icons.hotel,
                                      size: 30,
                                    ),
                                    //text: 'Hotels'
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      body: TabBarView(
                        children: <Widget>[
                          Center(
                            child: SingleChildScrollView(
                              //    physics: NeverScrollableScrollPhysics(),
                              child: Container(
                                  //   padding:
                                  //    EdgeInsets.only(top: Dimensions.height10),
                                  child: Column(
                                children: [
                                  BigText(
                                    text: 'Customer Login',
                                    color: AppColors.mainColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height15,
                                  ),
                                  Container(
                                    //  color: Colors.white,
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      //      controller: _controller,
                                      onChanged: (String value) => {
                                        print(CustomerAccountsData[0].username +
                                            ' == ' +
                                            value),
                                        for (int i = 0;
                                            i < CustomerAccountsData.length;
                                            i++)
                                          {
                                            if (value ==
                                                CustomerAccountsData[i]
                                                    .username)
                                              {
                                                print('Done'),
                                                setState(() => {
                                                      IsUserExist = true,
                                                      userLock = i,
                                                      print(
                                                          CustomerAccountsData[
                                                                      0]
                                                                  .username +
                                                              ' == ' +
                                                              value)
                                                    })
                                              }
                                            else
                                              {
                                                setState(() => {
                                                      IsUserExist = false,
                                                    })
                                              }
                                          }
                                      },
                                      initialValue: '',
                                      decoration: InputDecoration(
                                        labelText: 'Username ',
                                        errorText: usernamemessage,
                                        border: OutlineInputBorder(),
                                        focusColor: Colors.yellow,
                                        hoverColor: Colors.green,
                                        suffixIconColor: Colors.pink,
                 
                                        suffixIcon:
                   

                                            Icon(
                                
                                          IsUserExist
                                              ? Icons.check_circle
                                              : Icons.error,
                         ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //  color: Colors.white,
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      onChanged: (String value) => {
                                    
                                        if (value ==
                                            CustomerAccountsData[userLock]
                                                .password)
                                          {
                                            print('Done'),
                                            setState(() => {
                                                  IsPasswordCorrect = true,
                                                  print(CustomerAccountsData[
                                                              userLock]
                                                          .username +
                                                      ' == ' +
                                                      value)
                                                })
                                          }
                                        else
                                          {
                                            setState(() => {
                                                  IsPasswordCorrect = false,
                                                })
                                          }
                                      },

                                      initialValue: '',
                                      decoration: InputDecoration(
                                        labelText: 'Password ',
                                        errorText: passwordmessage,
                                        border: OutlineInputBorder(),
                                        suffixIcon: Icon(
                                          IsPasswordCorrect
                                              ? Icons.check_circle
                                              : Icons.lock,
                                          //   color: AppColors.mainColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 80,
                                      padding: const EdgeInsets.all(20),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.mainColor,
                                          minimumSize:
                                              const Size.fromHeight(50),
                                        ),
                                        child: const Text('Log In'),
                                        onPressed: () {
                                          if (IsUserExist == true &&
                                              IsPasswordCorrect == true) {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                          userindex: userLock,
                                                        )));
                                          }
                                        },
                                      )),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          Center(
                            child: Text("It's for Resturants here"),
                          ),
                          Center(
                            child: Text("It's for Hotels"),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
