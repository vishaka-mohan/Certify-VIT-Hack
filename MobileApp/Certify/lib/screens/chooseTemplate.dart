import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseTemplateScreen extends StatefulWidget {
  @override
  _ChooseTemplateScreenState createState() => _ChooseTemplateScreenState();
}

class _ChooseTemplateScreenState extends State<ChooseTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                    left: size.width * 6 / 100, top: size.height * 5 / 100),
                child: Text(
                  'Choose a Template',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 5 / 100,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 5 / 100),
                child: Image.asset('assets/images/cert1.png'),
              ),
              SizedBox(
                height: size.height * 5 / 100,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 5 / 100),
                child: Image.asset('assets/images/cert2.png'),
              ),
              SizedBox(
                height: size.height * 5 / 100,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 25 / 100,
                ),
                height: size.height * 8 / 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Theme.of(context).accentColor,
                ),
                padding: EdgeInsets.all(
                  size.height * 1 / 100,
                ),
                child: FlatButton(
                  onPressed: () {},
                  splashColor: Theme.of(context).accentColor,
                  child: Center(
                    child: Text(
                      "Generate Certificates",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 1.8 / 100,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
