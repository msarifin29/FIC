/*
Type data dynamic
dynamic  sebuah variabel yang bisa menamoung semua jenis tipe data
*/

void main() {
  dynamic letter = 'Hello world';
  dynamic count = 10;
  dynamic value = 20.5;

  print(letter.runtimeType);
  print(count.runtimeType);
  print(value.runtimeType);
}
