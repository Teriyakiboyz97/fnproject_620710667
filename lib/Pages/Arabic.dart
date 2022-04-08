import 'package:flutter/material.dart';
import 'package:romanice/romanice.dart';

class Arabic extends StatelessWidget {
   Arabic({Key? key}) : super(key: key);

   final ToRoman standardToRoman = ToRoman.standard();
   int A = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'แปลงเลขโรมัน',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('แปลงเลขโรมัน')),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/BG.jpg"),
                  fit: BoxFit.cover,
                )
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 200,
                ),
                child: Column(
                  children: [
                    Text('กรุณาใส่ตัวเลขอารบิก',style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue[400],
                    )),
                    Container(
                      height: 350,
                      width: 350,
                      child: const Image(image:AssetImage('assets/images/NB.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 600,
                      child: TextField(
                        onChanged: (val){
                          A = int.tryParse(val)!;
                        },
                        style: TextStyle(color: Colors.red),
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow,width: 3.0),
                          ),
                          hintText: 'ใส่เลขอารบิกตรงนี้',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: TextButton(
                        child: Text('กดเพื่อแปลง'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                        ),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('ผลลัพธ์'),
                              content:  Text(standardToRoman(A)),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

}
