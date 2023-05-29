import 'package:flutter/material.dart';
import 'package:navigator_drawer_and_other_widgets/screen%202.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigator widget')),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
             decoration: BoxDecoration(
            color: Color(0xff764abc)
        ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                accountName: Text('M JAWAD'),
                accountEmail: Text('Jawad555@gmail.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('Go To Facebook'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Go To Whatsapp'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            )

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.id);
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => ScreenTwo())
              // );
            },
            child: Center(child: Text('Screen 1')),
          )
        ],
      ),
    );
  }
}
