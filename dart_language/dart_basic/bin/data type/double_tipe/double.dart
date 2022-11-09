/* Double
 sebuah tipe data desimal ,penulisan tanda koma (,) dalam double menggunakan 
 tanda titik(.)
 https://api.dart.dev/stable/2.18.4/dart-core/double-class.html
*/

void main() {
  double n = 95.00;
  print(n); // 95.00
  print(n.runtimeType); // double

// conversi tipe data  string ke double
  String i = '10';
  print(double.parse(i)); // 10.0

// conversi tipe data double ke  string
  print(n.toString()); // 95.0

// konversi tipe data integer ke double
  print(n.toInt()); // 95

// Representasi string titik desimal dari nomor ini.
  int str = 10000;
  print(str.toStringAsFixed(2)); // 10000.00

  // Representasi string dengan angka signifikan yang presisi.
  print(str.toStringAsPrecision(2)); // 1.0e+4

  // Sebuah string-representasi eksponensial dari nomor ini.
  print(str.toStringAsExponential(2)); // 1.00e+4

  // Mengembalikan kode hash untuk nilai numerik.
  print(n.hashCode); // 95

  // Untuk mengecek kondisi apakah jumlah ini terbatas.
  print(n.isFinite); // true

  // Untuk menecek kondisi Apakah angka ini tak terhingga positif atau tak terhingga negatif.
  print(n.isInfinite); // false

  // Untuk mengecek kondisi apakah angka ini negatif.
  print(n.isNegative); // false

  // Mengembalikan tanda bilangan bulat ini.
  print(n.sign); // 1.0
}
