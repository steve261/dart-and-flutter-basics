void main() async {
  await for (final number in getNumbers()) {
    print(number);
  }
  try {
    await for (final name in getName()){
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 6; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getName() async* {
  for (var i; i < 10; i++) {
    Future.delayed(Duration(seconds: 2));
    yield 'john';
    throw Exception('something went wrong');
  }
}
