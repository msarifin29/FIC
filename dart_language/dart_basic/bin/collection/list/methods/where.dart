void main() {
  /*
method where
Merupakan sebuah method yang digunakan untuk mengambil semua data yang sesuai ,
 Jika data sesuai tidak ditemukan, maka hasilnya literable kosong ()
  */

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final names = ['ayu', 'rahayu', 'cantika', 'putri', 'ayu'];

  // Hanya data yang sesuai  yang akan diambil,
  // dan return dari where adalah iterable
  print(numbers.where((element) => element > 3)); // (4, 5, 6, 7, 8, 9, 10)
  print(names.where((element) => element == 'ayu')); // (ayu, ayu)

  // Jika kita ingin merubah menjadi List ,kita gunakan method toList()
  print(names.where((element) => element == 'ayu').toList()); // [ayu, ayu]
  print(numbers
      .where((element) => element > 3)
      .toList()); // [4, 5, 6, 7, 8, 9, 10]

  print(names
      .where((element) => element != '')
      .toList()); // [ayu, rahayu, cantika, putri, ayu]

// NB : Iterable Kosong TIDAK SAMA dengan Iterable NULL
}
