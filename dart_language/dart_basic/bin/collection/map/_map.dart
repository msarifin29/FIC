void main() {
  /*
Object Map
Sebuah struktur data yang menggunakan key dan value
  */

  Map user = <String, dynamic>{'name': 'boy', 'age': 20, 'hoby': 'play guitar'};
  print(user);

  //  Mengambil map menggunakan key
  print(user['name']); // boy

  // Mengecek value menggunakan key, return tipe data boolesn
  print(user.containsKey('name')); // true
}
