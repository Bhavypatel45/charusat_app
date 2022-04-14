import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage_123/views/profile.dart';
import 'package:loginpage_123/views/result.dart';
import 'package:loginpage_123/views/links.dart';
import 'package:loginpage_123/views/scores.dart';
import 'package:pie_chart/pie_chart.dart';
import 'API/api.dart';
import 'ModelClass/feedback_model.dart';
import 'package:loginpage_123/views/links.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


import 'login_firebase.dart';


class MakeDashboardItems extends StatefulWidget {

  String std_id;
  MakeDashboardItems({required this.std_id});

  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}
class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  bool data_loaded = false;

  int choiceIndex = 0;
  final List<feedbackmodel> feedbacks = [];
  int index = 0;
  final double link = 0;
  String number = '0';

  double returnItem(){
    return 0.0;
  }
  @override
  void initState() {
    super.initState();
    getFeedbackFromSheet();
    getFeedbackFromSheet();
    //getvalue();
  }
  // int link = Github_link;
  Map<String, double> dataMap1 = {
    //"food items": link,
    "profile": 25,
    "result": 25,
    "link": 25,
    "score": 25,
  };

  Map<String, double> dataMap2 = {
    //"food items": link,
    "profile": 25,
    "result": 25,
    "link": 25,
    "score": 25,
  };
  Map<String, double> dataMap3 = {
    //"food items": link,
    "profile": 25,
    "result": 25,
    "link": 25,
    "score": 25,
  };
  Map<String, double> dataMap4 = {
    //"food items": link,
    "profile": 25,
    "result": 25,
    "link": 25,
    "score": 25,
  };
  List<Color> colorList = [
   // const Color(0xffD95AF3),
    const Color(0xffB2F99E),
    const Color(0xffBE9EF9),
    const Color(0xffF98A9B),
    const Color(0xffFCCC65),
  ];






  getFeedbackFromSheet() async {
    // print(widget.std_id);
    feedbacks.addAll(await API().allProducts());
    print(feedbacks[0].First_Name);

    for (int i = 0; i < feedbacks.length; i++) {
      if (widget.std_id.toString().toUpperCase() ==
          feedbacks[i].ID_No.toUpperCase()) {
        index = i;
        feedbacks[i].Github_link.toString() == "" ? link == 50 : link ==100;
        break;
      }
    }
  }

  // getvalue(){
  //    number = widget.std_id.toString().split('@')[1];
  //    print(";;;;;;;;;;;;;;;;;;;;;;;;;;");
  //    print(widget.std_id.toString().split('@')[1]);
  // }


  Card makeDashboardItem(String title, String img, int index) {

    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.cyan,
              Colors.grey,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        )
            : BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.blue,
              Colors.grey,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  home(std_id: widget.std_id,),
                ),);
              //1.item
            };
            if (index == 1) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  home1(std_id: widget.std_id,),
                ),);
              //2.item
            }
            if (index == 2) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  home2(std_id: widget.std_id,),
                ),);
              //3.item
            }
            if (index == 3) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  home3(std_id: widget.std_id,),
                ),);
              //4.item
            }


          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Center(child: Text("Charusat University")),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
          )
        ],
      ),
      backgroundColor: Colors.white12,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[

                    // Center(
                    //   child: Text(
                    //     "Charusat University",
                    //     style:
                    //     TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("Profile", "assets/images/images2.png", 0),
                makeDashboardItem("Result", "assets/images/result1.png", 1),
                makeDashboardItem("Links", "assets/images/link1.png", 2),
                makeDashboardItem("scores", "assets/images/score1.png", 3),
                // makeDashboardItem("Todo", "assets/todo.png", 4),
                // makeDashboardItem("Settings", "assets/setting.png", 5),
              ],
            ),
          ),


          // pie_chart
          Text("Your Progress Graph",
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          const SizedBox(height: 50),
          Center(
            child: PieChart(
              dataMap: dataMap1,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 2,
              centerText: "Budget",
            ),
          )
        ],
      ),
    );
  }
}

