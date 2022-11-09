void main() {
  /*
method map
Merupakan sebuah method transformasi, disebut transformasi karena mampu 
mengubah menjadi data baru
  */

  final numbers = [1, 2, 3, 4, 5, 6];

  final names = ['ayu', 'rahayu', 'cantika', 'putri', 'ayu'];

  // Artinya untuk setiap nilai di dalam list akan dikalikan dengan angka 2,
  // dan return dari map adalah iterable
  print(numbers.map((e) => e * 2)); // (2, 4, 6, 8, 10, 12)

  // Artinya hanya nama ayu bernilai true
  print(names
      .map((element) => element == 'ayu')); // (true, false, false, false, true)

  print(names.map((element) => element == 'ayu').toList());

  // Jika kita ingin merubah menjadi List ,kita gunakan method toList()
  print(numbers.map((e) => e * 2).toList()); //  [2, 4, 6, 8, 10, 12]
}
