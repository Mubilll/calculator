import 'package:calculator/widget/card_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator/utils/color_pallete.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final MoneyMaskedTextController controller1 =MoneyMaskedTextController(
    thousandSeparator: ".",
    precision: 0,
    decimalSeparator: ""
  );

  final MoneyMaskedTextController controller2 =MoneyMaskedTextController(
    thousandSeparator: ".",
    precision: 0,
    decimalSeparator: ""
  );

  double hasil = 0;

  void calculateTambah (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double inputValue1 = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double inputValue2 = double.tryParse(cleanValue2) ?? 0;

    setState(() {
      hasil = inputValue1 + inputValue2;
    });
  }

  void calculateKurang (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double inputValue1 = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double inputValue2 = double.tryParse(cleanValue2) ?? 0;

    setState(() {
      hasil = inputValue1 - inputValue2;
    });
  }

  void calculateKali (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double inputValue1 = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double inputValue2 = double.tryParse(cleanValue2) ?? 0;

    setState(() {
      hasil = inputValue1 * inputValue2;
    });
  }

  void calculateBagi (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double inputValue1 = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double inputValue2 = double.tryParse(cleanValue2) ?? 0;

    setState(() {
      hasil = inputValue1 / inputValue2;
    });
  }

  @override
  void initState() {
    super.initState();
    controller1.updateValue(0);
    controller1.text = "";
    controller2.updateValue(0);
    controller2.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.lightRed,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPallete.red,
        title: Text(
          "Calculator",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24
          ),
        ),
        
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },

          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30
          ),

          child: Column(
            children: [
              Hero(
                tag: "assets/images/ic_calculator.png",

                child: Image.asset(
                  "assets/images/ic_calculator.png",
                  width: 120,
                ),
              ),

              Text(
                "Calculator",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Text(
                "Calculate your Question!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),

              TextFormField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the First Number",
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),

                  fillColor: Colors.white,
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.red,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.red,
                      width: 2,
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Second Number",
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),

                  fillColor: Colors.white,
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.red,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.red,
                      width: 2,
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPallete.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                    ),

                    onPressed: (){
                      calculateTambah();
                    },

                    child: Text(
                      "+",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPallete.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                    ),

                    onPressed: (){
                      calculateKurang();
                    },

                    child: Text(
                      "-",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPallete.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                    ),

                    onPressed: (){
                      calculateKali();
                    },

                    child: Text(
                      "X",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPallete.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                    ),

                    onPressed: (){
                      calculateBagi();
                    },

                    child: Text(
                      "/",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 30,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardResult(
                      title: "Result",
                      result: '$hasil',
                      color: ColorPallete.red,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
