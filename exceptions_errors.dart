void main() {
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 141);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age1: age).age1);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('-----------------------------');
}

class Person {
  final int age1;

  Person({required this.age1}) {
    if (age1 <= 0) {
      throw Exception('age cannot be negative');
    } else if (age1 > 140) {
      throw Exception('age must be less than 140');
    }
  }
}
