import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.asset('images/image-1.svg', height: 350,),
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
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor',
            textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'next1/');
          },
          child: Text('Next'))
        ],
      ),
    );
  }
}