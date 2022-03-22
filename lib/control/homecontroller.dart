import 'package:get/get.dart';

class homecontroller extends GetxController {
  //information user
  String saveCountryName = "";
  int saveCountryid = 0;
  String saveNumberPhone = "";
  String savecityName = "";
  int savecityId = 0;
  String saveFirstName = "";
  String saveMidName = "";
  String saveLastName = "";
  String saveEmail = "";
  int saveCountryCode = 0;
  String userName = "";
  String passWord = "";
  int userId = 0;
  String newPassword = "";
  String saveEmailForNewPassWord = "";
//end
  String nameComp = "";
  double monyrComp = 0.0;
  String discrpComp = "";
  int indexAgent = 0;
  String nameFake = "";
  var i = 0;
  int indexCopititon = 0;
  int indexWinner = 0;
  int i_agent = 0;
  var devicIdsave;
  var savePathImage;
  String saveLinkFace = "";
  String saveLinkInsta = "";
  String saveLinktele = "";
  int saveidComp = 0;
  void SaveidComp(string) {
    print("control value SaveidComp is:");
    saveidComp = string;
    update();
  }

  void SaveLinktele(string) {
    print("control value telegram is:");
    saveLinktele = string;
    update();
  }

  void SaveLinkInsta(string) {
    print("control value insta is:");
    saveLinkInsta = string;
    update();
  }

  void SaveLinkFace(string) {
    print("control value face is:");
    saveLinkFace = string;
    update();
  }

  void SavePathImage(string) {
    print("control value path image is:");
    savePathImage = string;
    update();
  }

  void SaveDeviceId(string) {
    print("control value devicIdsave is:");
    devicIdsave = string;
    update();
  }

  void Saveindexagent(string) {
    print("control value i_agent is:");
    i_agent = string;
    update();
  }

  void SaveindexWinner(string) {
    print("control value SaveindexWinner is:");
    indexWinner = string;
    update();
  }

  void SaveindexCopititon(string) {
    print("control value SaveindexCopititon is:");
    indexCopititon = string;
    update();
  }

  void SaveIdPageCopititio(string) {
    print("control value SaveIdPageCopititio is:");
    i = string;
    update();
  }

  void SaveindexComp(string) {
    print("control value SaveindexComp is:");
    nameFake = string;
    update();
  }

  void SavenameFake(string) {
    print("control value nameFake is:");
    nameFake = string;
    update();
  }

  void IndexAgent(string) {
    print("control value indexAgent is:");
    indexAgent = string;
    update();
  }

  void SavediscrpComp(string) {
    print("control value SaveNewPassword is:");
    discrpComp = string;
    update();
  }

  void SavenameComp(string) {
    print("control value SaveNewPassword is:");
    nameComp = string;
    update();
  }

  void SavemonyrComp(string) {
    print("control value SaveNewPassword is:");
    monyrComp = string;
    update();
  }

  void SaveNewPassword(string) {
    print("control value SaveNewPassword is:");
    newPassword = string;
    update();
  }

  void SaveEmailForNewPassWord(string) {
    print("control value SaveNewPassword is:");
    saveEmailForNewPassWord = string;
    update();
  }

  void SaveUserId(string) {
    print("control value userName is:");
    userId = string;
    update();
  }

  void SaveUserName(string) {
    print("control value userName is:");
    userName = string;
    update();
  }

  void SavePassWord(string) {
    print("control value passWord is:");
    passWord = string;
    update();
  }

  void SaveCountryName(string) {
    print("control value SaveCountryName is:");
    saveCountryName = string;
    update();
  }

  void SaveCountryid(string) {
    print("control value SaveCountryid is :");
    saveCountryid = string;
    update();
  }

  void SaveCountryCode(string) {
    print("control value SaveCountryCode is :");
    saveCountryCode = string;
    update();
  }

  void SaveNumberPhone(string) {
    print("control value SaveNumberPhone is:");
    saveNumberPhone = string;
    update();
  }

  void SavecityName(string) {
    savecityName = string;
    update();
  }

  void SavecityId(string) {
    savecityId = string;
    update();
  }

  void SaveFirstName(string) {
    print("control value saveFirstName is:");
    saveFirstName = string;
    update();
  }

  void SaveMidName(string) {
    print("control value saveMidName is:");
    saveMidName = string;
    update();
  }

  void SaveLastName(string) {
    print("control value saveLastName is:");
    saveLastName = string;
    update();
  }

  void SaveEmail(string) {
    saveEmail = string;
    print("control value saveLastName is:");
    print(saveEmail);
    update();
  }
}
