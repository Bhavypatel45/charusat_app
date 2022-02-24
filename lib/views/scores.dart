import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loginpage_123/API/api.dart';
import 'package:loginpage_123/ModelClass/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:loginpage_123/cards_design.dart';

class home3 extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home3> with SingleTickerProviderStateMixin {
  bool data_loaded = false;

  final List<feedbackmodel> feedbacks = [];
  getFeedbackFromSheet() async {
    feedbacks.addAll(await API().allProducts());
    print(feedbacks[0].First_Name);
    setState(() {
      data_loaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    getFeedbackFromSheet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Score")),
      ),
      body: data_loaded
          ? info(feedbacks: feedbacks)
          : SpinKitSquareCircle(
        color: Colors.blue,
        size: 50.0,
        controller: AnimationController(
            vsync: this, duration: const Duration(milliseconds: 1200)),
      ),
    );
  }
}

class info extends StatefulWidget {
  const info({
    Key? key,
    required this.feedbacks,
  }) : super(key: key);

  final List<feedbackmodel> feedbacks;

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return FeedbackTile(
      Sr_no: widget.feedbacks[1].Sr_no,
      ID_No: widget.feedbacks[1].ID_No,
      First_Name: widget.feedbacks[1].First_Name,
      Middle_Name: widget.feedbacks[1].Middle_Name,
      Last_Name: widget.feedbacks[1].Last_Name,
      Name: widget.feedbacks[1].Name,
      Career_path: widget.feedbacks[1].Career_path,
      Gender: widget.feedbacks[1].Gender,
      Birth_of_date: widget.feedbacks[1].Birth_of_date,
      SSC: widget.feedbacks[1].SSC,
      SSC_Board: widget.feedbacks[1].SSC_Board,
      HSC: widget.feedbacks[1].HSC,
      HSC_Board: widget.feedbacks[1].HSC_Board,
      Diploma: widget.feedbacks[1].Diploma,
      Sem_1_SGPA: widget.feedbacks[1].Sem_1_SGPA,
      Sem_2_SGPA: widget.feedbacks[1].Sem_2_SGPA,
      Sem_3_SGPA: widget.feedbacks[1].Sem_3_SGPA,
      Sem_4_SGPA: widget.feedbacks[1].Sem_4_SGPA,
      Sem_5_SGPA: widget.feedbacks[1].Sem_5_SGPA,
      Sem_6_SGPA: widget.feedbacks[1].Sem_6_SGPA,
      CGPA: widget.feedbacks[1].CGPA,
      Permanent_address: widget.feedbacks[1].Permanent_address,
      Permanent_city: widget.feedbacks[1].Permanent_city,
      PIN: widget.feedbacks[1].PIN,
      Field_Of_Interest: widget.feedbacks[1].Field_Of_Interest,
      Project_Details: widget.feedbacks[1].Project_Details,
      Competitive_exam: widget.feedbacks[1].Competitive_exam,
      Achievements: widget.feedbacks[1].Achievements,
      Miscellaneous: widget.feedbacks[1].Miscellaneous,
      LinkedIn_Profile_link: widget.feedbacks[1].LinkedIn_Profile_link,
      Github_link: widget.feedbacks[1].Github_link,
      HackerRank_CodeChef_LeetCode_score:
      widget.feedbacks[1].HackerRank_CodeChef_LeetCode_score,
      Remarks: widget.feedbacks[1].Remarks,
    );
  }
}

class FeedbackTile extends StatelessWidget {
  final String Sr_no,
      ID_No,
      First_Name,
      Middle_Name,
      Last_Name,
      Name,
      Career_path,
      Gender,
      Birth_of_date,
      SSC,
      SSC_Board,
      HSC,
      HSC_Board,
      Diploma,
      Sem_1_SGPA,
      Sem_2_SGPA,
      Sem_3_SGPA,
      Sem_4_SGPA,
      Sem_5_SGPA,
      Sem_6_SGPA,
      CGPA,
      Permanent_address,
      Permanent_city,
      PIN,
      Field_Of_Interest,
      Project_Details,
      Competitive_exam,
      Achievements,
      Miscellaneous,
      LinkedIn_Profile_link,
      Github_link,
      HackerRank_CodeChef_LeetCode_score,
      Remarks;

  FeedbackTile(
      {required this.Sr_no,
        required this.ID_No,
        required this.First_Name,
        required this.Middle_Name,
        required this.Last_Name,
        required this.Name,
        required this.Career_path,
        required this.Gender,
        required this.Birth_of_date,
        required this.SSC,
        required this.SSC_Board,
        required this.HSC,
        required this.HSC_Board,
        required this.Diploma,
        required this.Sem_1_SGPA,
        required this.Sem_2_SGPA,
        required this.Sem_3_SGPA,
        required this.Sem_4_SGPA,
        required this.Sem_5_SGPA,
        required this.Sem_6_SGPA,
        required this.CGPA,
        required this.Permanent_address,
        required this.Permanent_city,
        required this.PIN,
        required this.Field_Of_Interest,
        required this.Project_Details,
        required this.Competitive_exam,
        required this.Achievements,
        required this.Miscellaneous,
        required this.LinkedIn_Profile_link,
        required this.Github_link,
        required this.HackerRank_CodeChef_LeetCode_score,
        required this.Remarks});
  Expanded cards(String value) {
    return Expanded(
      child: Card(
          shadowColor: Colors.black,
          elevation: 2,
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            title: Text(
              (value),
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
          )),
    );
  }

  Expanded Texts(String items) {
    return Expanded(
      child: Text(
        (items),
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Texts("Sr No:"),
        // cards(Sr_no),
        //Texts("ID Number:"),
        //cards(ID_No),
        // Texts("First Name:"),
        // cards(First_Name),
        // Texts("Middle Name:"),
        // cards(Middle_Name),
        // Texts("Last Name:"),
        // cards(Last_Name),
        // Texts("Name"),
        // cards(Name),
        // Texts("Career path"),
        // cards(Career_path),
        // Texts("Gender:"),
        // cards(Gender),
        // Texts("Birth of date"),
        // cards(Birth_of_date),
        // Texts("SSC %"),
        // cards(SSC),
        // Texts("SSC Board"),
        // cards(SSC_Board),
        // Texts("HSC %"),
        // cards(HSC),
        // Texts("HSC Board"),
        // cards(HSC_Board),
        // Texts("Diploma %"),
        // cards(Diploma),
        // Texts("Sem-1 SGPA"),
        // cards(Sem_1_SGPA),
        // Texts("Sem-2 SGPA"),
        // cards(Sem_2_SGPA),
        // Texts("Sem-3 SGPA"),
        // cards(Sem_3_SGPA),
        // Texts("Sem-4 SGPA"),
        // cards(Sem_4_SGPA),
        // Texts("Sem-5 SGPA"),
        // cards(Sem_5_SGPA),
        // Texts("Sem-6 SGPA"),
        // cards(Sem_6_SGPA),
        // Texts("CGPA (Upto 5th Sem)"),
        // cards(CGPA),
        // Texts("Permanent address"),
        // cards(Permanent_address),
        // Texts("Permanent city"),
        // cards(Permanent_city),
        // Texts("PIN"),
        // cards(PIN),
        // Texts("Field Of Interest"),
        // cards(Field_Of_Interest),
        // Texts("Project Details"),
        // cards(Project_Details),
        Texts("Competitive exam"),
        cards(Competitive_exam),
        Texts("Achievements"),
        cards(Achievements),
        // Texts("Miscellaneous"),
        // cards(Miscellaneous),
        // Texts("LinkedIn Profile link"),
        // cards(LinkedIn_Profile_link),
        // Texts("Github link"),
        // cards(Github_link),
        Texts("HackerRank/CodeChef/LeetCode score"),
        cards(HackerRank_CodeChef_LeetCode_score),
        Texts("Remarks"),
        cards(Remarks),
      ],
    );
  }
}

//