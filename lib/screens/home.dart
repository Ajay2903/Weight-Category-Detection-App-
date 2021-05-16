import 'package:bmical/widgets/right.dart';
import 'package:bmical/widgets/left.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  double _bmi = 0;
  String _result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
    Text(
      'BMI Calculator',style: TextStyle(
        color: Colors.yellowAccent),),backgroundColor: Colors.black,
      elevation:0,centerTitle: true,

    ),backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
        children: [SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
            width: 130,child: TextField(controller: _height,
            style: TextStyle(fontSize: 38,
                              fontWeight: FontWeight.w300,
                                  color: Colors.yellowAccent),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: InputBorder.none,hintText: "Height(m)",
                                        hintStyle: TextStyle(
                                          fontSize: 22,fontWeight: FontWeight.w300,color:Colors.white,
                                        )
          ),
            ),
            ),
            Container(
                width: 130,child: TextField(controller: _weight,
            style: TextStyle(fontSize: 38,
            fontWeight: FontWeight.w300,
                color: Colors.yellowAccent),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,hintText: "Weight(Kgs)",
    hintStyle: TextStyle(
    fontSize: 22,fontWeight: FontWeight.w300,color:Colors.white,
    ),),),)
          ],
            ),SizedBox(height: 28,),
          GestureDetector(onTap: (){
            double _h = double.parse(_height.text);
            double _w = double.parse(_weight.text);
            setState(() {
              _bmi = _w/(_h*_h);
              if(_bmi>25){
                _result = "You are overweight";

              }
              else if(_bmi>18.5 && _bmi<=25)
                {
                  _result = "You have normal weight";
                }
              else
                {
                  _result = "You are underweight";
                }
            });
          },
              child:Text('Calculate',style:TextStyle(fontSize:22,color: Colors.yellowAccent,fontWeight: FontWeight.bold),
              ),
          ),
        SizedBox(height: 48,),
        Container(child: Text(_bmi.toStringAsFixed(2),style: TextStyle(fontSize: 90,color:Colors.yellowAccent),
        ),
        ),SizedBox(height: 28,),
         Visibility(visible: _result.isNotEmpty,child: Container(
              child:Text(_result,style:TextStyle(fontSize: 32,fontWeight: FontWeight.w300,color: Colors.yellowAccent)
              )
          ),),
          SizedBox(height: 8,),
          LeftImage(35),
          SizedBox(height: 18,),
          LeftImage(60),
          SizedBox(height: 18,),
          LeftImage(35),
          SizedBox(height: 18,),
          RightImage(35),
          SizedBox(height: 46,),
          RightImage(35),


        ]
        ,)
        ,),
    );
  }
}
