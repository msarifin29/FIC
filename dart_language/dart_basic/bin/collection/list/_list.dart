void main() {
  /*
Object List
Merupakan tipe data yang berisikan kumpulan data,
untuk membuat list kita bisa menggunakan tanda kurung []
https://api.dart.dev/be/180791/dart-core/List-class.html
  */

  List list = [];
  print(list); // []

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Digunakan untuk enentukan tipe list
  List<String> list1 = ['Ayu', 'Cantika'];
  print(list1); // ['Ayu', 'Cantika']

  // Diguunakan untuk mengakses index di dalam list,
  // di dalam bahasa pemprogaman index pertama di mulai dari angak 0
  print(list1[0]); // Ayu

  // Digunakan untuk melihat jumlah total di dalam list
  print(list1.length); // 2

  // Digunakan untuk menambahkan item ke dalam list
  list1.add('Cinta');
  print(list1); // ['Ayu', 'Cantika', 'Cinta']

  // Digunakan untuk mengganti item di dalam list
  list1.insert(1, 'Putri');
  print(list1);

  // Digunakan untuk menghapus item di list
  print(list1.remove('Ayu')); // true

  // Di gunakan untuk menghapus item berdasarkan index
  print(numbers.removeAt(2)); // Artinya index ke 3 akan di hapus

  // Digunakan untuk menghapus index terakhir
  print(numbers.removeLast()); // Artinya index terakhir akan di hapus

  // Digunakan untuk menghapus index dari  (parameter start) sampai (parameter end)
  // contohnya dari index ke 1 sampai index ke 5
  numbers.removeRange(1, 5);
  print(numbers); // [1, 7, 8, 9]
}
