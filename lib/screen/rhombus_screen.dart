import 'package:calculator/widget/card_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator/utils/color_pallete.dart';

class RhombusScreen extends StatefulWidget {
  const RhombusScreen({super.key});

  @override
  State<RhombusScreen> createState() => _RhombusScreenState();
}

class _RhombusScreenState extends State<RhombusScreen> {
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

  double hasilLuas = 0;
  double hasilKeliling = 0;
  
  String hasilLuas2 = '';
  String hasilKeliling2 = '';

  void calculate (){
    String cleanValue1 = controller1.text.replaceAll('.', '');
    double valueD1 = double.tryParse(cleanValue1) ?? 0;

    String cleanValue2 = controller2.text.replaceAll('.', '');
    double valueD2 = double.tryParse(cleanValue2) ?? 0;

    String cleanValue3 = controller3.text.replaceAll('.', '');
    double valueSide = double.tryParse(cleanValue3) ?? 0;

    setState(() {
      hasilLuas = (valueD1 * valueD2) / 2;
      hasilKeliling = valueSide * 4;
      
      hasilLuas2 = hasilLuas.toStringAsFixed(2);
      hasilKeliling2 = hasilKeliling.toStringAsFixed(2);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.lightRed,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPallete.red,
        title: Text(
          "Rhombus",
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
                "assets/images/ic_rhombus.png",
                width: 120,
              ),

              Text(
                "Rhombus",
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
                "Calculate the Rhombus!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),

              TextFormField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Diagonal 1",
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
                  labelText: "Input the Diagonal 2",
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
                controller: controller3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Side",
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

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPallete.red,
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
                      color: ColorPallete.red,
                    ),

                    CardResult(
                      title: "Circumference",
                      result: "Cm $hasilKeliling2",
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
