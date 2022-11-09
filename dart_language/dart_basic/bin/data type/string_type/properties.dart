void main() {
  String ltr = 'Hello World!';
  String empty = '';

  // String adalah kumpulan dari code unit, untuk melihat code unit
  print(ltr
      .codeUnits); // [71, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33]

  // Mendapatkan hashCode
  print(ltr.hashCode); // 611765979

  // Untuk mengecek kondisi, apakah string kosong
  print(empty.isEmpty); // true

  // Untuk mengecek kondisi, apakah string ada isinya
  print(empty.isNotEmpty); // false

  // Mendapatkan jumlah total karakter
  print(ltr.length); // 12
}
