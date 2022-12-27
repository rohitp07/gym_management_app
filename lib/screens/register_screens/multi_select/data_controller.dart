import 'package:get/get.dart';
import 'package:gym222/screens/register_screens/multi_select/sports_data_model.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';




class AppDataController extends GetxController {
  List<SportsModel> sportsData = [];
  List<MultiSelectItem> dropDownData = [];

  getSubjectData() {
    sportsData.clear();
    dropDownData.clear();

    Map<String, dynamic> apiResponse = {
      "code": 200,
      "message": "Sports lists.",
      "data": [
        {"sports_id": "1", "sports_name": "Football"},
        {"sports_id": "2", "sports_name": "Basketball"},
        {"sports_id": "3", "sports_name": "Chess"},
        {"sports_id": "4", "sports_name": "Badminton"},
        {"sports_id": "5", "sports_name": "Hockey"},
        {"sports_id": "6", "sports_name": "Archery"},

      ]
    };

    if (apiResponse['code'] == 200) {
      List<SportsModel> tempsportsData = [];
      apiResponse['data'].forEach(
            (data) {
          tempsportsData.add(
            SportsModel(
              sportsId: data['sports_id'],
              sportsName: data['sports_name'],
            ),
          );
        },
      );
      print(tempsportsData);
      sportsData.addAll(tempsportsData);

      dropDownData = sportsData.map((sportsData) {
        return MultiSelectItem(sportsData, sportsData.sportsName);
      }).toList();

      update();
    } else if (apiResponse['code'] == 400) {
      print("Show Error model why error occurred..");
    } else {
      print("show some error model like something went worng..");
    }
  }
}
