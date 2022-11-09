void main() {
  /*
Method subList
Merupakan sebuah method yang digunakan untuk mengambil beberapa data pada index tertentu.
subList memiliki 2 parameter start (wajib) dan end (optional). 
Jika kita tidak memasukkan parameter end, maka data yang akan diambil mulai dari
 index start sampai data terakhir dari list.
  */
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Mengambil data dari index ke 2 sampai index terakhit
  print(numbers.sublist(2)); // [3, 4, 5, 6, 7, 8, 9, 10]

  // Mengambil data dari index 2 sampai index 5, index ke 6 tidak diambil
  //karena index 6 batas dari index terakhir
  print(numbers.sublist(2, 6)); // [3, 4, 5, 6]
}
