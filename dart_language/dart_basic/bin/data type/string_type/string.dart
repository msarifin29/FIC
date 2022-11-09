/*
Tipe data String
String bisa di katakan tipe data text atau tulisan.
String adalah kumpulan data dari Unicode (https://home.unicode.org/)
Dart sendiri menggunakan UTF-16 code units.
Untuk membuat String kita bisa menggunakan tanda kutip satu atau kutip dua,
lalu di dalamnya berisi nilai text.
https://api.dart.dev/stable/2.18.4/dart-core/String-class.html
*/

void main() {
  String letter = ' hello';
  print(letter);

  /* 
  String mendukung expression, dimana di dalam expression kita bisa mengambil
  data dari variable lain. 
  Untuk membuat expression, kita bisa menggunakan format ${isiExpression}.
*/
  String nickName = 'boy';
  int age = 20;
  var profile = 'My name is $nickName and i am  ages $age';
  print(profile); // My name is boy and i am  ages 20

// Untuk string yang panjang atau multiline string
// kita bisa menggunakan tanda petik satu sebanyak tiga karakter

  String long = '''
ini tipe data string
yang sangat panjang,
silahkan di coba sendiri!!
''';
  print(long);
}
