
import 'Course.dart';

class Teacher {
  late String teacherName;
  late String email;
  late String password;
  List<Course> courses=[];

  Teacher({this.teacherName='', this.email='', this.password=''});


  void newCourse(String course , String description)
  {
    courses.add(Course(courseName: course,description:  description));
    print("added");
  }
  void DeleteCourse(String nameCourse)
  {
    courses.removeWhere((course) => course.courseName == nameCourse);
print("deleted");
  }
   void showCourses() {
    print("courses:");
    for (var courses in courses) {
      print("courses Name: ${courses.courseName}");
      print("description: ${courses.description}");
      print("-------------------------");
    }
  }
}