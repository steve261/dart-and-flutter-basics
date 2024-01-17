void main(List<String> args) async {
  final length = await calculateLength(await getFullName());
  print(length);
  final length1 = await getFullName().then((value) => calculateLength(value));
  print(length1);
}

Future<String> getFullName() async {
  Future.delayed(
    const Duration(seconds: 2),
  );
  return 'John Dale';
}

Future<String> calculateLength() async {
  Future.delayed(const Duration(seconds: 2), () => value.length);
  return Future.value("length");
}
