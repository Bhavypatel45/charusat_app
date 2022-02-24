
import 'dart:convert';

import 'package:loginpage_123/ModelClass/feedback_model.dart';
import 'package:http/http.dart' as http;

class API {
  Future<List<feedbackmodel>> allProducts() async {
    var response = await http.get(Uri.parse("https://script.google.com/macros/s/AKfycbz3Gq10Amcbmkbkbo5hPNys6ivMZ0MOAipWzqpatv56XnbqNzk47pHFYA2hdGrXWVas_Q/exec"));

    if(response.statusCode == 200){
      print(response.body);

      var description = json.decode(response.body);
      print(description);
      List<feedbackmodel> bestSeller = [];
      for(var data in description){
        bestSeller.add(feedbackmodel.fromJson(data));
      }

      return bestSeller;
    }else{
      print(response.statusCode);
      throw "ERROR GETTING PRODUCTS LIST AVAILABLE";
    }

  }
}