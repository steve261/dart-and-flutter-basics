void main() {
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 141);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age1: age).age1);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  print('-----------------------------');
}

class InvalidAgeException implements Exception {
  final age;
  final message;
  InvalidAgeException({this.age, this.message});

  @override
  String toString() => 'InvalidAgeException, $message, $age';
}

class Person {
  final int age1;

  Person({required this.age1}) {
    if (age1 <= 0) {
      throw InvalidAgeException(age: age1, message: "Age cant be neative");
    } else if (age1 > 140) {
      throw InvalidAgeException(
          age: age1, message: "Age cant be greater than 140");
    }
  }
}
