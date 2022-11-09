void main() {
  /*
Method getRange
Merupakan sebuah method yang digunakan untuk mengambil beberapa data pada index tertentu.
getRange memiliki 2 parameter start  dan end parameter tersebut wajib di isi. 
  */
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Contoh mengambil data dari index 2 sampai index 5,
  // index ke 6 tidak diambil karena index 6 batas dari index terakhir
  print(numbers.getRange(2, 6)); // [3, 4, 5, 6]
}
