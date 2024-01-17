void main(List<String> arg) async {
  try {
    print(await getFullName(FirstName: "John", lastName: "Doe"));

    print(await getFullName(FirstName: "Jonny", lastName: "matt"));
  } on FirstOrLastNameException {
    print('first or last name is missing');
  }
}

Future<String> getFullName({
  required String FirstName,
  required String lastName,
}) {
  if (FirstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameException();
  } else {
    return Future.value('$FirstName  $lastName');
  }
}

class FirstOrLastNameException implements Exception {
  const FirstOrLastNameException();
}
