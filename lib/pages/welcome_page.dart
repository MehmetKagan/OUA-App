import 'package:flutter/material.dart';
import 'package:oua_app/widgets/app_large_text.dart';
import 'package:oua_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "first_page.png",
    "second_page.png",
    "third_page.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage (
                  image: AssetImage (
                    "img/"+images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top:75, left:30, right: 20),
                child: Row (
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Geziler"),
                        AppText(text: "Keşfetmeye Hazır Mısın?"),
                        SizedBox(height: 10,),
                        Container(
                          width: 250,
                          child: AppText(
                            text:"Dünyayı Keşfet,Sevdiklerinle Seyahat Et ve Hatıralarını Paylaş.", size: 16,
                            color: Colors.black54
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
            );
      }
      )
    );
  }
}
