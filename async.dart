void main(List<String> arg) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  getCountry();
  getZipCode();
}

Future<String> getUserName() async => 'John Doe';
Future<String> getAddress() => Future.value('1906 main street');
Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 2), () => "234-256755-125");
//get city
Future<String> getCity() async {
  Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

// get country
Future<String> getCountry() => Future.value('India');

//zip code
Future<String> getZipCode() async {
  await Future.delayed(
    const Duration(seconds: 2),
    () => '12345',
  );
  return "12345";
}
