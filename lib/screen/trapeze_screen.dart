import 'package:calculator/widget/card_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator/utils/color_pallete.dart';

class TrapezeScreen extends StatefulWidget {
  const TrapezeScreen({super.key});

  @override
  State<TrapezeScreen> createState() => _TrapezeScreenState();
}

class _TrapezeScreenState extends State<TrapezeScreen> {
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

  final MoneyMaskedTextController controller3 =MoneyMaskedTextController(
    thousandSeparator: ".",
    precision: 0,
    decimalSeparator: ""
  );

  final MoneyMaskedTextController controller4 =MoneyMaskedTextController(
    thousandSeparator: ".",
    precision: 0,
    decimalSeparator: ""
  );

  double hasilLuas = 0;
  double hasilKeliling = 0;

  String hasilLuas2 = '';
  String hasilKeliling2 = '';

  void calculate (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double valueSA = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double valueSS = double.tryParse(cleanValue2) ?? 0;

    String cleanValue3 = controller3.text.replaceAll('.', '');
    double valueSB = double.tryParse(cleanValue3) ?? 0;

    String cleanValue4 = controller3.text.replaceAll('.', '');
    double valueHeight = double.tryParse(cleanValue4) ?? 0;

    setState(() {
      hasilLuas = ((valueSA + valueSB) * valueHeight) / 2;
      hasilKeliling = (valueSS * 2) + valueSA + valueSB;

      hasilLuas2 = hasilLuas.toStringAsFixed(2);
      hasilKeliling2 = hasilKeliling.toStringAsFixed(2);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.lightYellow,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPallete.yellow,
        title: Text(
          "Trapeze",
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
              Image.asset(
                "assets/images/ic_trapeze.png",
                width: 120,
              ),

              Text(
                "Trapeze",
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
                "Calculate the Trapeze!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),

              TextFormField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Top Side",
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
                      color: ColorPallete.yellow,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.yellow,
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
                  labelText: "Input the Left/Right Side",
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
                      color: ColorPallete.yellow,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.yellow,
                      width: 2,
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: controller3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Bottom Side",
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
                      color: ColorPallete.yellow,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.yellow,
                      width: 2,
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: controller4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Height",
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
                      color: ColorPallete.yellow,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.yellow,
                      width: 2,
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPallete.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize:Size(double.infinity, 0),
                  padding: EdgeInsets.all(12),
                ),

                onPressed: (){
                  calculate();
                },

                child: Text(
                  "Calculate!!",
                  style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardResult(
                      title: "Area",
                      result: "Cm $hasilLuas2",
                      color: ColorPallete.yellow,
                    ),

                    CardResult(
                      title: "Circumference",
                      result: "Cm $hasilKeliling2",
                      color: ColorPallete.yellow,
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
