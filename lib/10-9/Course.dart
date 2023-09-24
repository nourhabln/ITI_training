
import 'Sheet.dart';
import 'lecture.dart';

class Course{
  late String courseName;
  late String description;
  List<Lecture> lectures=[];
  List<Sheet> sheets=[];
  //List<Teacher> teachers=[];
  Course({String courseName="",String description=""}){
    this.courseName=courseName;
    this.description=description;

  }
  void addNewLecture(String lecture,String description ,String Filename)
  {
lectures.add(Lecture(lectureName:lecture,description:description,Filename: Filename ));
  }

  void DeleteLecture(String lectureName) {
    lectures.removeWhere((lecture) => lecture.lectureName == lectureName);
    print(" removed");
  }
  /*
  void addNewSheet(int sheetNumber,
      String description,
  String FileName)
  {
    sheets.add(Sheet(description: description,FileName: FileName, sheetNumber:sheetNumber ));
  }
  */

  void addNewSheet(String description,String FileName ,int sheetNumber) {
    sheets.add(Sheet(description:description ,FileName:FileName ,sheetNumber:sheetNumber ));
  }
  void DeleteSheet(String sheetName)
  {
    sheets.removeWhere((sheet) => sheet.FileName == sheetName);
    print(" removed");
  }
  void showlecture() {
    print("lectures:");
    for (var lecture in lectures) {
      print("lectures Name: ${lecture.lectureName}");
      print("description: ${lecture.description}");
      print("Filename: ${lecture.Filename}");

      print("-------------------------");
    }
  }

  void showsheet() {
    print("sheet:");
    for (var sheet in sheets) {
      print("sheet Name: ${sheet.FileName}");
      print("description: ${sheet.description}");
      print("sheetNumber: ${sheet.sheetNumber}");

      print("-------------------------");
    }
  }

  }
