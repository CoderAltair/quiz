import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 40),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(16),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(12),
             ),
              
              child: const  Text(''),
              
            ),
           const  SizedBox(height: 60),
           Container(
              alignment: Alignment.center,
              width: 350,
              height: 45,
              padding: const EdgeInsets.all(12),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(14),
             ),
             child:  const  Text('Sign In',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),  
            const  SizedBox(height: 20),
         Container(
              alignment: Alignment.center,
              width: 350,
              height: 45,
              padding: const EdgeInsets.all(12),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(14),
             ),
              
             child:  const  Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              
            ),
          ],
        ),
      ),
    );
  }
}