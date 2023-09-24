import 'dart:io';

import 'package:untitled6/10-9/Course.dart';
import 'package:untitled6/10-9/Sheet.dart';
import 'package:untitled6/10-9/corsera.dart';
import 'package:untitled6/10-9/teacher.dart';

import 'lecture.dart';
void main(){
  bool repeat = true;
  Course course=Course();
  Teacher teacher=Teacher();
  do {
    print('\n what you need \n 1-register teacher \n 2- login teacher'
       '\n 3- add new course \n 4-delete course \n 5-add new lecture'
    '\n 6- delete lecture \n 7- add new sheet \n 8- remove sheet \n 9- show \n');
    int need = int.parse(stdin.readLineSync()!);

    switch(need) {
      case 1:
        print("Teachername");
        String name = stdin.readLineSync()!;
        print("email");
        String email = stdin.readLineSync()!;
        print("password");
        String password = stdin.readLineSync()!;
        Corsera.register(name,email,password);
        print("Teacher registered successfully!");

        break;
      case 2:
        print("Teacher name");
        String name = stdin.readLineSync()!;
        print("password");
        String password = stdin.readLineSync()!;
        Corsera.login(name, password);

        break;
      case 3:
        print("name course");
        String course = stdin.readLineSync()!;
        print("name description");
        String description = stdin.readLineSync()!;
       teacher.newCourse(course,description);
        break;

      case 4:
        print("name course");
        String course = stdin.readLineSync()!;
        teacher.DeleteCourse(course);
        break;
      case 5:
        print("name lecture");
        String lecture = stdin.readLineSync()!;
        print("name description");
        String description = stdin.readLineSync()!;
        print("name Filename");
        String Filename = stdin.readLineSync()!;
        course.addNewLecture(lecture, description, Filename);
        break;
      case 6:
        print("name lecture");
        String lecture = stdin.readLineSync()!;
        course.DeleteLecture(lecture);
        break;
      case 7:
        print("fileName");
        String sheet = stdin.readLineSync()!;
        print("description");
        String description = stdin.readLineSync()!;
        print("num sheet");
        int sheetNumber =int.parse( stdin.readLineSync()!);
        course.addNewSheet(description, sheet, sheetNumber);
      break;
      case 8:
        print("fileName ypu want remove");
        String sheet = stdin.readLineSync()!;
        course.DeleteSheet(sheet);
        break;
      case 9:
        print(" choose \n "
            "1- show teacher \n"
            "2- show courses \n "
            "3- show lectures \n "
            "4- show sheets\n ");
        int choice = int.parse(stdin.readLineSync()!);
        switch(choice)
        {
          case 1:
            Corsera.showTeachers();
            break;
          case 2:
            teacher.showCourses();
            break;
          case 3:
            course.showlecture();
            break;
          case 4:
            course.showsheet();
            break;
          default:
            print('not found');
        }
    }

    print('Do you want to perform another order? (y/n)');
    String op = stdin.readLineSync()!;
    if (op == 'n') {
      repeat = false;
    }
  }while (repeat);

}
