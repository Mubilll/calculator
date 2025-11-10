import 'package:calculator/widget/card_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator/utils/color_pallete.dart';

class RectangleScreen extends StatefulWidget {
  const RectangleScreen({super.key});

  @override
  State<RectangleScreen> createState() => _RectangleScreenState();
}

class _RectangleScreenState extends State<RectangleScreen> {
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

  double hasilLuas = 0;
  double hasilKeliling = 0;

  String hasilLuas2 = '';
  String hasilKeliling2 = '';

  void calculate (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double valueWidth = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double valueLength = double.tryParse(cleanValue2) ?? 0;

    setState(() {
      hasilLuas = valueLength * valueWidth;
      hasilKeliling = (valueLength * 2) + (valueWidth * 2);

      hasilLuas2 = hasilLuas.toStringAsFixed(2);
      hasilKeliling2 = hasilKeliling.toStringAsFixed(2);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.lightPurple,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPallete.purple,
        title: Text(
          "Rectangle",
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
                "assets/images/ic_rectangle.png",
                width: 120,
              ),

              Text(
                "Rectangle",
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
                "Calculate the Rectangle!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),

              TextFormField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Width",
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
                      color: ColorPallete.purple,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.purple,
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
                  labelText: "Input the Length",
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
                      color: ColorPallete.purple,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.purple,
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
                  backgroundColor: ColorPallete.purple,
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
                      color: ColorPallete.purple,
                    ),

                    CardResult(
                      title: "Circumference",
                      result: "Cm $hasilKeliling2",
                      color: ColorPallete.purple,
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
