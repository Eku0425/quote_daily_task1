# quote_daily_task1


<img src="https://github.com/Eku0425/quote_daily_task1/assets/149374328/eb14fdea-0730-4019-a73d-819bcccf8d69" height=25% width=25%>
<img src="https://github.com/Eku0425/quote_daily_task1/assets/149374328/5c2a745e-557d-495b-8dab-325dae3d0038" height=25% width=25%>





# Write a detailed implementation of the Factory constructor & and Modal class with an explanation 

# Factory Constructor

All of the constructors that you have learned until now are generative constructors. Dart also provides a special type of constructor called a factory constructor.

A factory constructor gives more flexibility to create an object. Generative constructors only create an instance of the class. But, the factory constructor can return an instance of the class or even subclass. It is also used to return the cached instance of the class.
# Syntax
class ClassName {
  factory ClassName() {
    // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}

import 'dart:io';

import 'factory1.dart';

class Student {
  late String name;
  late String course;
  late int roll_num;
  Student({required this.name, required this.roll_num, required this.course});

  List<Student> stu = [
    Student(name: 'Aayat', roll_num: 39, course: 'flutter'),
    Student(name: 'Aayat', roll_num: 2, course: 'flutter'),
  ];
}

List studentList = [
  {'name': ' nirav', 'roll_num': 17, 'course': 'flutter'},
  {'name': '  nirali', 'roll_num': 4, 'course': 'flutter'},
  {'name': ' nikita ', 'roll_num': 16, 'course': 'flutter'},
  {'name': ' nikhil ', 'roll_num': 16, 'course': 'flutter'},
  {'name': ' nikunj ', 'roll_num': 13, 'course': 'flutter'},
  {'name': ' nisha ', 'roll_num': 14, 'course': 'flutter'},
];
List<StudentsModel> l1 = [];

void main() {
  for (int i = 0; i < studentList.length; i++) {
    StudentsModel s1 = StudentsModel.fromstudent(stu: studentList[i]);
    l1.add(s1);
  }
  for (int i = 0; i < l1.length; i++) {
    print("\n");
    stdout.write('name : ${l1[i].name}' +
        ',roll_num: ${l1[i].roll_num},' +
        ',course: ${l1[i].course},');
  }
}
# Model class :-
The modal class is the class with the highest frequency. We know that the mode is the number or observation that most often appears.
So, the modal class is the class in a grouped data that contains the mode.
That means, the class that has the highest frequency is the modal class of the grouped data.
Model class is a user define data type.
import 'dart:io';
import 'student.dart';

class StudentsModel {
  String? name;
  String? course;
  int? roll_num;

  StudentsModel(
      {required this.name, required this.roll_num, required this.course});

  factory StudentsModel.fromstudent({required Map stu}) {
    return StudentsModel(
        name: stu['name'], roll_num: stu['roll_num'], course: stu['course']);

  }
  
}
