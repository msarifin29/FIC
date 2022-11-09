/*
Method singleWhere
Method yang digunakan untuk memastikan HANYA ADA SATU DATA yang sesuai dengan kondisi,
jika data tidak ditemukan, --> akan mengambil hasilnya dari data orElse.
jika ADA DATA LEBIH DARI SATU yang sesuai kondisi --> akan ERROR

NB ; Hati-hati saat menggunakan singleWhere pada list yang datanya
     banyak yang kembar
*/

List<int> count = [1, 2, 3, 4, 5, 6];
final names = ['ayu', 'rahayu', 'cantika', 'putri', 'ayu'];

void main() {
  // hanya ada satu data yang sesuai
  print(count.singleWhere((int element) => element == 3)); // 3

  // element tidak ditemukan, data hasil dari orElse
  print(count.singleWhere(
    (element) => element == 8,
    orElse: () => -1,
  )); // -1

  print(names.singleWhere(
    (element) => element == 'putri',
    orElse: () => 'No name',
  )); // putri

  // data lebih dari satu atau data kembar
  print(names.singleWhere(
    (element) => element == 'ayu',
    orElse: () => '',
  )); // ERROR
}
