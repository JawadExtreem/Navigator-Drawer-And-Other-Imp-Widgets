import 'package:flutter/material.dart';


class ScreenTwo extends StatefulWidget {
  static const String id = 'screen 2';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whtsapp'),
        backgroundColor: Colors.teal,
      ),
       
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('M Jawad'),
                    onTap: (){
                      Navigator.pushNamed(context,ScreenTwo.id);
                    },
                  );
                }),
          )
        ],

      ),
    );
  }
}
