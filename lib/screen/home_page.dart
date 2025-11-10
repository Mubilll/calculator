import 'package:calculator/screen/calculator_screen.dart';
import 'package:calculator/screen/circle_screen.dart';
import 'package:calculator/screen/parallelogram_screen.dart';
import 'package:calculator/screen/rhombus_screen.dart';
import 'package:calculator/screen/square_screen.dart';
import 'package:calculator/screen/rectangle_screen.dart';
import 'package:calculator/screen/trapeze_screen.dart';
import 'package:calculator/screen/triangle_screen.dart';
import 'package:calculator/widget/card_shape.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFC6CFFF),
        title: Text(
          "Calculation App",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover
          )
        ),

        child: GridView.count(
          crossAxisCount: 2,
          children: [
            CardShape(
              image: "assets/images/ic_calculator.png",
              title: "Calculator",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => CalculatorScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_square.png",
              title: "Square",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => SquareScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_rectangle.png",
              title: "Rectangle",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => RectangleScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_triangle.png",
              title: "Triangle",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => TriangleScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_rhombus.png",
              title: "Rhombus",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => RhombusScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_parallelogram.png",
              title: "Parallelogram",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => ParallelogramScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_circle.png",
              title: "Circle",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => CircleScreen()
                  )
                );
              },
            ),

            CardShape(
              image: "assets/images/ic_trapeze.png",
              title: "Trapeze",
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => TrapezeScreen()
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}