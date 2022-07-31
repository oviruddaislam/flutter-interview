import 'package:faker_dart/faker_dart.dart';
import 'package:rexo_it_interview/utils/app_constants.dart';

class Employee {
  late final int? id;
  late final String? name;
  late final String? designation;
  late final String? imageUrl;
  late final String? facebookUrl;
  late final String? linkedinUrl;
  late final String? githubUrl;

  Employee(
      {this.id,
      this.name,
      this.designation,
      this.imageUrl,
      this.facebookUrl,
      this.linkedinUrl,
      this.githubUrl});

  static List<Employee> generateEmployees() {
    final faker = Faker.instance;

    List<Employee> employees = [];

    for (var i = 0; i < 15; i++) {
      employees.add(Employee(
        id: i,
        name: faker.name.fullName(),
        designation: faker.name.jobTitle(),
        imageUrl: AppConstants.employeesImages[i],
        facebookUrl: faker.internet.url(),
        linkedinUrl: faker.internet.url(),
        githubUrl: faker.internet.url(),
      ));
    }

    return employees;
  }
}
