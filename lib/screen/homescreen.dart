import 'package:flutter/material.dart';
import '../widgets/customdrawer.dart';

import 'package:flutter_app/preference/preference.dart';
import 'package:flutter_app/widgets/indexrouter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.dehaze,
            color: Colors.white,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          actions: const [
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF0044FF),
        ),
        drawer: const CustomDrawerWidget(),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                      height: 250,
                      width: 380,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0044FF),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Column(children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                              radius: 45.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'James Martin',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Senior Graphic Designer',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 265,
                            child: Row(
                              children: const [
                                Text(
                                  '1000 ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '  |  ',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '1200 ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Followins',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                      )),
                  Container(
                    child: Column(
                      children: [
                        CustomTextFieldWidget(
                          initialValue: Preferences.nombre,
                          keyboardType: TextInputType.name,
                          labelText: 'Email',
                          prefixIcon: const FaIcon(
                            FontAwesomeIcons.envelopeCircleCheck,
                          ),
                          onChanged: (value) {
                            Preferences.nombre = value;
                            setState(() {});
                          },
                        ),
                        CustomTextFieldWidget(
                          initialValue: Preferences.mobile,
                          keyboardType: TextInputType.name,
                          labelText: 'Mobile',
                          prefixIcon: const FaIcon(
                            FontAwesomeIcons.mobile,
                          ),
                          onChanged: (value) {
                            Preferences.mobile = value;
                            setState(() {});
                          },
                        ),
                        CustomTextFieldWidget(
                          initialValue: Preferences.twitter,
                          keyboardType: TextInputType.name,
                          labelText: 'Twitter',
                          prefixIcon: const FaIcon(
                            FontAwesomeIcons.twitter,
                          ),
                          onChanged: (value) {
                            Preferences.twitter = value;
                            setState(() {});
                          },
                        ),
                        CustomTextFieldWidget(
                          initialValue: Preferences.facebook,
                          keyboardType: TextInputType.name,
                          labelText: 'Facebook',
                          prefixIcon: const FaIcon(
                            FontAwesomeIcons.facebook,
                          ),
                          onChanged: (value) {
                            Preferences.facebook = value;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  )
                ],

                /*Text(
          'BIENVENIDO',
          style: TextStyle(fontSize: 28),
        ),*/
              ),
            )
          ],
        ));
  }
}
