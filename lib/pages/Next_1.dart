import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.asset('images/image-for-login.svg', height: 350,),
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Text('Fahri saputra',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text('uwfugofshisegf;s chsepfuspef[eucmejeifhpsdojpsiudhcw]',
            textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'next2/');
          },
          child: Text('Next'))
        ],
      ),
    );
  }
}