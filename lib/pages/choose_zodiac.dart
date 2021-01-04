import 'package:flutter/material.dart';
import 'package:zodiac/services/zodiac_horoscope.dart';

class ChooseZodiac extends StatefulWidget {
  @override
  _ChooseZodiacState createState() => _ChooseZodiacState();
}

class _ChooseZodiacState extends State<ChooseZodiac> {
  List<ZodiacHoroscope> zodiac_sign = [
    ZodiacHoroscope(url: 'sign_id=1&content_language=en', zodiac: 'Aries', flag: 'aries.jpg'),
    ZodiacHoroscope(url: 'sign_id=2&content_language=en', zodiac: 'Taurus', flag: 'taurus.jpg'),
    ZodiacHoroscope(url: 'sign_id=3&content_language=en', zodiac: 'Gemini', flag: 'gemini.jpg'),
    ZodiacHoroscope(url: 'sign_id=4&content_language=en', zodiac: 'Cancer', flag: 'cancer.jpg'),
    ZodiacHoroscope(url: 'sign_id=5&content_language=en', zodiac: 'leo', flag: 'leo.jpg'),
    ZodiacHoroscope(url: 'sign_id=6&content_language=en', zodiac: 'Virgo', flag: 'virgo.jpg'),
    ZodiacHoroscope(url: 'sign_id=7&content_language=en', zodiac: 'Libra', flag: 'libra.jpg'),
    ZodiacHoroscope(url: 'sign_id=8&content_language=en', zodiac: 'Scorpio', flag: 'scorpio.jpg'),
    ZodiacHoroscope(url: 'sign_id=9&content_language=en', zodiac: 'Sagittarius', flag: 'sagittarius.jpg'),
    ZodiacHoroscope(url: 'sign_id=10&content_language=en', zodiac: 'Capricon', flag: 'capricorn.jpg'),
    ZodiacHoroscope(url: 'sign_id=11&content_language=en', zodiac: 'Aquarius', flag: 'aquarius.jpg'),
    ZodiacHoroscope(url: 'sign_id=12&content_language=en', zodiac: 'Pisces', flag: 'pisces.jpg'),
  ];
  void updateZodiacHoroscope(index) async {
    ZodiacHoroscope instance = zodiac_sign[index];
    await instance.getZodiacHoroscope();
    Navigator.pop(context, {
      'zodiac': instance.zodiac,
      'today_date': instance.today_date,
      'today_text': instance.today_text,

      'tomorrow_date': instance.tomorrow_date,
      'tomorrow_text': instance.tomorrow_text,

      'yesterday_date': instance.yesterday_date,
      'yesterday_text': instance.yesterday_text,

      'month_date': instance.month_date,
      'month_text': instance.month_text,

      'week_date': instance.week_date,
      'week_text': instance.week_text,

      'flag': instance.flag,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Choose a Zodiac Sign'),
        centerTitle: true,
        elevation: 0,
      ),

      body: SafeArea(

          child: ListView.builder(
              itemCount: zodiac_sign.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        updateZodiacHoroscope(index);
                        // print('hello');
                      },
                      title: Text(zodiac_sign[index].zodiac),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/${zodiac_sign[index].flag}'),
                      ),
                    ),
                  ),
                );
              }
          ),

      ),
    );
  }
}
