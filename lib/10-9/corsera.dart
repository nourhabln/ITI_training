import 'package:untitled6/10-9/Sheet.dart';
import 'package:untitled6/10-9/teacher.dart';

import 'lecture.dart';

class Corsera{

//  List<Lecture> lectures=[];
  //List<Sheet> sheets=[];
  static List<Teacher> teachers=[];
 /*
Corsera(String courseName,String description){
  this.courseName=courseName;
  this.description=description;
  
  
}
*/

  static void register(String name, String email, String password) {
    teachers.add(Teacher(teacherName:name,email:  email,password:  password));
  }


  static bool login(String teacherName, String password )
{
bool loged =false;
for(var e in teachers)
{
  loged=e.password==password? true:false;
}
return loged;


}
  static void showTeachers() {
    print("Teachers:");
    for (var teacher in teachers) {
      print("Teacher Name: ${teacher.teacherName}");
      print("Email: ${teacher.email}");
      print("Password: ${teacher.password}");
      print("-------------------------");
    }
  }



}

