import 'package:flutter/material.dart';
import 'package:project_667/Pages/Arabic.dart';
import 'package:project_667/Pages/Roman.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'แปลงเลขโรมัน',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:  Scaffold(
        appBar: AppBar(title: const Text('แปลงเลขโรมัน')),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/BG.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          child: Center(
            child: Column(
              children: [
                Text('คุณต้องการแปลงอะไร',style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue[400],
                )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    child: Image(image: AssetImage('assets/images/arabicto.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: TextButton(
                    child: Text('แปลงจากเลขอารบิกเลขไปโรมัน'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Arabic()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    child: Image(image: AssetImage('assets/images/romanto.png')),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 10
                   ),
                   child: TextButton(
                    child: Text('แปลงจากเลขโรมันไปอารบิก'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Roman()),
                      );
                    },
                ),
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
