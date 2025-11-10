import 'package:calculator/widget/card_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calculator/utils/color_pallete.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  final MoneyMaskedTextController controller =MoneyMaskedTextController(
    thousandSeparator: ".",
    precision: 0,
    decimalSeparator: ""
  );

  double hasilLuas = 0;
  double hasilKeliling = 0;

  double totalRuas = 0;
  final phi = 3.14;

  String hasilLuas2 = '';
  String hasilKeliling2 = '';

  void calculate (){
    String cleanValue = controller.text.replaceAll('.', '');
    double inputValue = double.tryParse(cleanValue) ?? 0;

    setState(() {
      totalRuas = inputValue / 2;

      hasilLuas = (totalRuas * totalRuas) * phi;
      hasilKeliling = phi * inputValue;

      hasilLuas2 = hasilLuas.toStringAsFixed(2);
      hasilKeliling2 = hasilKeliling.toStringAsFixed(2);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPallete.green,
        title: Text(
          "Circle",
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
                "assets/images/ic_circle.png",
                width: 120,
              ),

              Text(
                "Circle",
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
                "Calculate the Circle!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),

              TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Input the Diameter",
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
                      color: ColorPallete.green,
                      width: 2
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: ColorPallete.green,
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
                  backgroundColor: ColorPallete.green,
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
                      color: ColorPallete.green,
                    ),

                    CardResult(
                      title: "Circumference",
                      result: "Cm $hasilKeliling2",
                      color: ColorPallete.green,
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
