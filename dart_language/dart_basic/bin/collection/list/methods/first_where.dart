/*
Method singleWhere
Sebuah method yang digunakan untuk memfilter data
*/

List<int> count = [1, 2, 3, 4, 5, 6];
final names = ['ayu', 'rahayu', 'cantika', 'putri', 'ayu'];

void main() {
  // Digunakan mengambil data pertama yang sesuai kondisi
  print(count.firstWhere((int element) => element % 3 == 0)); // 3

  // jika data tidak ditemukan maka akan ERROR.
  // kite perlu handle error tersebut menggunakan orElse,
  // untuk mengembalikan nilai Error,
  print(count.firstWhere(
    (element) => element == 8,
    orElse: () => -1,
  ));

  print(names.firstWhere(
    (element) => element == 'ayu',
    orElse: () => '',
  ));
}
