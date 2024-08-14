import 'package:flutter/material.dart';

main(){
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  snackBar(msg, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: const Text('Text Styling App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
                  'Flutter Text Styling',
                  style:
                  TextStyle( fontWeight: FontWeight.bold, fontSize: 25),
                )),
            SizedBox(height: 10,),
            const Text('Experiment with text styles', style: TextStyle(fontStyle: FontStyle.italic),),

            TextButton(onPressed: (){snackBar('You clicked the button!', context);}, child: Text('Click Me'),
            ),
            RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(text: 'Welcome to '),
                    TextSpan(text: 'Flutter!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
                  ],
                )),


          ],
        ));
  }
}


