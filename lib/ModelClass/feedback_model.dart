import 'package:flutter/cupertino.dart';

class feedbackmodel {
  String Sr_no;
  String ID_No;
  String First_Name;
  String Middle_Name;
  String Last_Name;
  String Name;
  String Career_path;
  String Gender;
  String Birth_of_date;
  String SSC;
  String SSC_Board;
  String HSC;
  String HSC_Board;
  String Diploma;
  String Sem_1_SGPA;
  String Sem_2_SGPA;
  String Sem_3_SGPA;
  String Sem_4_SGPA;
  String Sem_5_SGPA;
  String Sem_6_SGPA;
  String CGPA;
  String Permanent_address;
  String Permanent_city;
  String PIN;
  String Field_Of_Interest;
  String Project_Details;
  String Competitive_exam;
  String Achievements;
  String Miscellaneous;
  String LinkedIn_Profile_link;
  String Github_link;
  String HackerRank_CodeChef_LeetCode_score;
  String Remarks;

  feedbackmodel({
    required this.Sr_no,
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
    required this.Remarks,
  });

  factory feedbackmodel.fromJson(dynamic json) {
    return feedbackmodel(
      Sr_no: "${json['Sr.no']}",
      ID_No: "${json['ID No']}",
      First_Name: "${json['First Name']}",
      Middle_Name: "${json['Middle Namee']}",
      Last_Name: "${json['Last Name']}",
      Name: "${json['Name']}",
      Career_path: "${json['Career path(Job/Higher studies/Entrepreneur)']}",
      Gender: "${json['Gender']}",
      Birth_of_date: "${json['DOB(dd-mm-yyyy)']}",
      SSC: "${json["SSC %"]}",
      SSC_Board: "${json["SSC Board"]}",
      HSC: "${json["HSC %"]}",
      HSC_Board: "${json["HSC Board"]}",
      Diploma: "${json["Diploma %"]}",
      Sem_1_SGPA: "${json["Sem-1 SGPA"]}",
      Sem_2_SGPA: "${json["Sem-2 SGPA"]}",
      Sem_3_SGPA: "${json["Sem-3 SGPA"]}",
      Sem_4_SGPA: "${json["Sem-4 SGPA"]}",
      Sem_5_SGPA: "${json["Sem-5 SGPA"]}",
      Sem_6_SGPA: "${json["Sem-6 SGPA"]}",
      CGPA: "${json["CGPA (Upto 5th Sem)"]}",
      Permanent_address: "${json["Permanent address"]}",
      Permanent_city: "${json["Permanent city"]}",
      PIN: "${json["PIN"]}",
      Field_Of_Interest: "${json["Field Of Interest"]}",
      Project_Details: "${json["Project Details(Your best one)"]}",
      Competitive_exam:
          "${json["Competitive exam(s) / certified courses (AWS, CEH, CHFI, ECIH, CISCO,NPTEL etc.)"]}",
      Achievements: "${json["Achievements(Sports/extracurricular etc.)"]}",
      Miscellaneous: "${json["Miscellaneous"]}",
      LinkedIn_Profile_link: "${json["LinkedIn Profile link"]}",
      Github_link: "${json["Github link"]}",
      HackerRank_CodeChef_LeetCode_score:
          "${json["HackerRank/CodeChef/LeetCode score"]}",
      Remarks: "${json["Remarks"]}",
    );
  }

  Map tojson() => {
        "Sr.no": Sr_no,
        "ID No": ID_No,
        "First Name": First_Name,
        "Middle Namee": Middle_Name,
        "Last Name": Last_Name,
        "Name": Name,
        "Career path(Job/Higher studies/Entrepreneur)": Career_path,
        "Gender": Gender,
        "DOB(dd-mm-yyyy)": Birth_of_date,
        "SSC %": SSC,
        "SSC Board": SSC_Board,
        "HSC %": HSC,
        "HSC Board": HSC_Board,
        "Diploma %": Diploma,
        "Sem-1 SGPA": Sem_1_SGPA,
        "Sem-2 SGPA": Sem_2_SGPA,
        "Sem-3 SGPA": Sem_3_SGPA,
        "Sem-4 SGPA": Sem_4_SGPA,
        "Sem-5 SGPA": Sem_5_SGPA,
        "Sem-6 SGPA": Sem_6_SGPA,
        "CGPA (Upto 5th Sem)": CGPA,
        "Permanent address": Permanent_address,
        "Permanent city": Permanent_city,
        "PIN": PIN,
        "Field Of Interest": Field_Of_Interest,
        "Competitive exam(s) / certified courses (AWS, CEH, CHFI, ECIH, CISCO,NPTEL etc.)":
            Competitive_exam,
        "Achievements(Sports/extracurricular etc.)": Achievements,
        "Miscellaneous": Miscellaneous,
        "LinkedIn Profile link": LinkedIn_Profile_link,
        "Github link": Github_link,
        "HackerRank/CodeChef/LeetCode score":
            HackerRank_CodeChef_LeetCode_score,
        "Remarks": Remarks,
      };
}
