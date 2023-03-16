// ignore_for_file: unused_local_variable

void main() {
//Data types

  String name = "john Doe";
  int age = 24;
  double height = 5.5;
  bool isStudent = true;
  dynamic anyType = false;

  //collections
  List<String> userNames = [
    'greeny',
    'redish',
    'yellowish',
  ];
  Map<String, dynamic> userData = {
    "name": "john Doe",
    "dob": "24-5-1990",
    "sex": "male",
    "registered": true,
  };
  Set nonDublicateData = {
    2,
    3,
    4,
    6,
  };
  //loops
  for (String user in userNames) {
    print(user);
  }

  for (int i = 0; i < userNames.length; i++) {
    print("Traditional for loop: ${userNames[i]}");
  }

  //functions
  void unNamedParameters(String dataOne, double cgpa) {
    print(dataOne);
    print(cgpa);
  }

  unNamedParameters('John Doe', 5.0);

  void namedParatmeters({String? dataOne, double? cgpa}) {
    print(dataOne);
    print(cgpa);
  }

  namedParatmeters(
    dataOne: "John",
    cgpa: 3.5,
  );

  void requiredParameter({required String dataOne, required double cgp}) {}

  UserType userType = UserType.regular;
}

//creating data type
enum UserType {
  premium,
  regular,
  vip,
}
