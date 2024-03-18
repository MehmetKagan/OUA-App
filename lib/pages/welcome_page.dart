import 'package:flutter/material.dart';
import 'package:oua_app/widgets/app_large_text.dart';
import 'package:oua_app/widgets/app_text.dart';
import 'package:oua_app/widgets/responsive_button.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Yerel Gezgin"),
                        AppText(text: "Keşfetmeye Hazır Mısın?"),
                        SizedBox(height: 10,),
                        Container(
                          width: 250,
                          child: AppText(
                            text:"Dünyayı Keşfet,Sevdiklerinle Seyahat Et ve Hatıralarını Paylaş.", size: 16,
                            color: Colors.black54
                          ),
                        ),
                        SizedBox(height: 20,),
                        ResponsiveButton(
                          width:110,
                          buttonText: "Başla",)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?Colors.blueAccent:Colors.blueAccent.withOpacity(0.5)
                            ),
                        );
                      },
                      )
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
