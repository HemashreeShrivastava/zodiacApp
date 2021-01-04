import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
 void initState() {
   super.initState();
 }

    @override
    Widget build(BuildContext context) {

      data = data.isNotEmpty ? data : ModalRoute
          .of(context)
          .settings
          .arguments;

      return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 170.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/banner.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Center(
                    child: Text("${data['zodiac']}`s Zodiac Horoscope ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,

                      ),
                    ),
                  ),

                ),
                SizedBox(height: 20.0),
                FlatButton(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(
                          context, '/chooseZodiac');
                      if (result != null) {
                        setState(() {
                          data = {
                            'zodiac': result['zodiac'],
                            'today_date': result['today_date'],
                            'today_text': result['today_text'],

                            'tomorrow_date': result['tomorrow_date'],
                            'tomorrow_text': result['tomorrow_text'],

                            'yesterday_date': result['yesterday_date'],
                            'yesterday_text': result['yesterday_text'],

                            'month_date': result['month_date'],
                            'month_text': result['month_text'],

                            'week_date': result['week_date'],
                            'week_text': result['week_text'],
                            'flag': result['flag']
                          };
                        });
                      }
                    }, child: Text("Choose Your Zodiac Sign",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue[300],
                    fontFamily: "Lobster-Regular",
                  ),
                )),
                SizedBox(height: 20.0),
                Container(decoration:BoxDecoration(color: Colors.blue[200]),
                    width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(10.0),
                    child: Text("Today" ,
                      style: TextStyle(fontSize: 20.0,
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(data['today_text'],
                    style: TextStyle(fontSize: 15.0,

                    ),
                  ),
                ),


                SizedBox(height: 30.0),

                Container(decoration:BoxDecoration(color: Colors.blue[200]),
                    width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(10.0),
                    child: Text("Tomorrow" ,
                        style: TextStyle(fontSize: 20.0,
                            color:Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(data['tomorrow_text'],
                    style: TextStyle(fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(decoration:BoxDecoration(color: Colors.blue[200]),
                    width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(10.0),
                    child: Text("Yesterday" ,
                      style: TextStyle(fontSize: 20.0,
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(data['yesterday_text'],
                    style: TextStyle(fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(decoration:BoxDecoration(color: Colors.blue[200]),
                    width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(10.0),
                    child: Text("Week" ,
                      style: TextStyle(fontSize: 20.0,
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(data['week_text'],
                    style: TextStyle(fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(decoration:BoxDecoration(color: Colors.blue[200]),
                    width:MediaQuery.of(context).size.width,padding: EdgeInsets.all(10.0),
                    child: Text("Month" ,
                      style: TextStyle(fontSize: 20.0,
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(data['month_text'],
                    style: TextStyle(fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      );
    }
}
