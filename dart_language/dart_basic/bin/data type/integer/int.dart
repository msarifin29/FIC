/* Integer
 sebuah tipe data bilangan bulat
 https://api.dart.dev/stable/2.18.4/dart-core/int-class.html
*/

void main() {
  int n = -95;
  print(n); // 95
  print(n.runtimeType); // int

// conversi tipe data  string ke integer
  String i = '10';
  print(int.parse(i)); // 10
  print(int.tryParse(i)); // 10

// conversi tipe data integer ke  string
  int st = 10;
  print(st.toString()); // 10

// konversi tipe data double ke int
  double nb = 71.9;
  print(nb.toInt()); // 71

// Representasi string titik desimal dari nomor ini.
  int str = 10000;
  print(str.toStringAsFixed(2)); // 10000.00

  // Representasi string dengan angka signifikan yang presisi.
  print(str.toStringAsPrecision(2)); // 1.0e+4

  // Sebuah string-representasi eksponensial dari nomor ini.
  print(str.toStringAsExponential(2)); // 1.00e+4

  // Mengembalikan kode hash untuk nilai numerik.
  print(n.hashCode); // -95

  // Mengembalikan jumlah bit minimum yang diperlukan untuk menyimpan bilangan bulat ini.
  print(n.bitLength); // 7

  // Untuk mengecek kondisi apakah jumlah ini terbatas.
  print(n.isFinite); // true

  // Untuk menecek kondisi Apakah angka ini tak terhingga positif atau tak terhingga negatif.
  print(n.isInfinite); // false

  // Untuk mengecek kondisi apakah angka ini negatif.
  print(n.isNegative); // true

  // Mengembalikan tanda bilangan bulat ini.
  print(n.sign); // -1
}
