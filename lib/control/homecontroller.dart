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
  var saveamount;
  List<Map> saveListNotifications = [];
  List<Map> saveMapCompitition = [];
  List<Map> savememberInCompt = [];
  List<Map> saveListWinner = [];
  List saveImagesAgents = [];
  List<Map> saveMediaAgents = [];
  var saveIsFinishComp;
  var saveCodeMarkting;
  var savecurrentTourName;
  var savecurrentTourTimeLimit;
  var saveUsersIsLogin;
  var saveMemberId;
  var saveimageProfile;
  var savemarketingCodeeSavepref;
  var savebalanceForUser;
  /********************************************* */
  void SavemarketingCodeeSavepref(string) {
    print("control value savemarketingCodeeSavepref is:");
    savemarketingCodeeSavepref = string;
    update();
  }

  void SavebalanceForUser(string) {
    print("control value savebalanceForUser is:");
    savebalanceForUser = string;
    update();
  }

  void SaveimageProfile(string) {
    print("control value saveimageProfile is:");
    saveimageProfile = string;
    update();
  }

  void SaveMediaAgents(string) {
    print("control value SaveMediaAgents is:");
    saveMediaAgents = string;
    update();
  }

  void SaveImagesAgents(string) {
    print("control value SaveImagesAgents is:");
    saveImagesAgents = string;
    update();
  }

  void SaveIsFinishComp(string) {
    print("control value SaveIsFinishComp is:");
    saveIsFinishComp = string;
    update();
  }

  void SaveListWinner(string) {
    print("control value saveListWinner is:");
    saveListWinner = string;
    update();
  }

  void SavememberInCompt(string) {
    print("control value savememberInCompt is:");
    savememberInCompt = string;
    update();
  }

  void SaveMemberId(string) {
    print("control value saveMemberId is:");
    saveMemberId = string;
    update();
  }

  void Saveamount(string) {
    print("control value saveamount is:");
    saveamount = string;
    update();
  }

  void SavecurrentTourTimeLimit(string) {
    print("control value saveUsersIsLogin is:");
    savecurrentTourTimeLimit = string;
    update();
  }

  void SavecurrentTourName(string) {
    print("control value savecurrentTourName is:");
    savecurrentTourName = string;
    update();
  }

  void SaveUsersIsLogin(string) {
    print("control value SaveUsersIsLogin is:");
    saveUsersIsLogin = string;
    update();
  }

  void SaveCodeMarkting(string) {
    print("control value SaveCodeMarkting is:");
    saveCodeMarkting = string;
    update();
  }

  void SaveListNotifications(string) {
    print("control value SaveListNotifications is:");
    saveListNotifications = string;
    update();
  }

  void SaveMapCompitition(string) {
    print("control value SaveMapCompitition is:");
    saveMapCompitition = string;
    update();
  }

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
