import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:zodiac/services/zodiac_horoscope.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupZodiacHoroscope() async {
    ZodiacHoroscope instance = ZodiacHoroscope( url: 'sign_id=1&content_language=en', flag:'aries', zodiac: 'Aries');
    await instance.getZodiacHoroscope();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'zodiac': instance.zodiac,
      'today_date': instance.today_date,
      'today_text': instance.today_text,

      'tomorrow_date': instance.tomorrow_date,
      'tomorrow_text': instance.tomorrow_text,

      'yesterday_date': instance.yesterday_date,
      'yesterday_text': instance.yesterday_text,

      'week_date': instance.week_date,
      'week_text': instance.week_text,

      'month_date': instance.month_date,
      'month_text': instance.month_text,
      'flag': instance.flag,
    });
    print("call choose zodiac");

  }

  @override
  void initState() {
    super.initState();
    setupZodiacHoroscope();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
            child: SpinKitFadingCircle(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}
