import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;

//perlu untuk menggunakan input data
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${belajar_dart.calculate()}!');
  var greetings = 'Hello Dart';
  var myAge;
  myAge = 24;
  print(greetings);
  print(myAge);
  // print(greetings+' My Age is : '+myAge.toString());
  print('$greetings My Age is : $myAge');
  
  //tipe dynamic bisa diisi oleh data apapun, namun data yang ditampilkan berdasarkan nilai terakhir contoh :
  var x;
  x = 7;
  x= 'Dart is fun';
  
  print(x);

  /*
  * INPUT DATA
  * */
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;//tanda ! berfungsi untuk menandai input tidak akan mengembalikan nilai null
  stdout.write('Usia Anda : ');
  int age  = int.parse(stdin.readLineSync()!); //kode int.parse() berfungsi untuk konversi atau parsing nilai integer ke string
  print('Halo $name. Usia Anda $age tahun');

  //stdout fungsinya sama dengan print
  // akan tetapi print akan mencetak line baru ketika ditampilkan di console

/*  Number
* */
  var number = 2020;
  var hex = 0xDEADBEEF;
  print(number);
  print(hex);

  /*
  * PARSING DATA
  * */

  //string to int
  var eleven = int.parse('11');

  //string to double
  var elevenPointTwo = double.parse('11.2');

  //int to string
  var elevenAsString = 11.toString();

  //double to string
  var piAsString = 3.14159.toStringAsFixed(2); //string piAsString = 3.14

  /*
  * STRINGS
  * */

  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";

  //Anda dapat menggunakan tanda petik secara bergantian, khususnya jika Anda memiliki teks yang mengandung tanda petik.
  //ex 1 :
  print('"What do you think of Dart?" he asked');
  
  //ex 2 : untuk kata yg memiliki petik perlu dikasih tanda backslash \ agar tidak error
  print('"I think it\'s great!" I answered confidently');

  //ex 3 : Selain tanda petik, backslash juga berguna untuk mengabaikan simbol lain yang menimbulkan ambigu di dalam string, contohnya seperti backslash itu sendiri.
  print("Windows path : C:\\ Program Files\\Dart");

  //String interpolation --> Bisa memasukkan simbol atau variabel ke dalam object string
  //ex 4:
  var nameString = 'Azri';
  print('Hello $nameString, nice to meet you');
  print('1 + 1 = ${1+1}');

  //ex 5 : Jika Anda perlu menampilkan harga dalam dollar (bisa menggunakan blackslash atau seperti contoh di ex 5)
  print(r'Dia baru saja membeli komputer seharga $1,0000.00'); //Huruf ‘r’ sebelum String akan memberitahu Dart untuk menganggap String sebagai raw, yang berarti akan mengabaikan interpolation.

  //ex 5 : karakter unicode
  /*Pada Dart Unicode ini dikenal dengan runes. Unicode mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol yang digunakan dalam semua sistem penulisan dunia.
   Cara umum untuk mengekspresikan unicode adalah \uXXXX, di mana XXXX adalah nilai heksadesimal 4 digit. Misalnya karakter hati (♥) adalah \u2665.
   */
  print('Hi \u2665'); //output Hi ♥

  /*
  * BOOLEAN
  * */

  bool alwaysTrue = true;
  bool alwaysFalse = false;
  bool notTrue = !true;
  bool notFalse = !false;

  if(true){
    print("It's true");
  }else{
    print("It's False");
  }

  /*
  * OPERATOR
  * */


  //Operator Aritmatika
  print(5 + 2);   // int add = 7
  print(5 - 2);   // int subtract = 3
  print(5 * 2);   // int multiply = 10
  print(5 / 2);   // double divide = 2.5
  print(5 ~/ 2);  // int intDivide = 2
  print(5 % 2);   // int modulo = 1

  //Increment Decrement
  var a = 0, b = 5;
  a++;
  b--;
  print(a); // output = 1
  print(b); // output = 4

  var c = 0;
  c += 5;    // c = c + 5 atau c = 0 + 5
  print(c);  // output 5

  /*
  * EXCEPTIONS*/

  //ex 1 : layaknya try catch pada java/kotlin
  try{
    var a =7;
    var b=0;
    print(a~/b);
  } on Exception{
    print('Can not divide by zero.');
  }

  //ex 2 :
  try{
    var a =7;
    var b=0;
    print(a~/b);
  } catch(e){ //Handler exception jika tidak diketahui exception nya apa
    print('Exception happened: $e');
  }

  //ex 3 : Selain itu, kita juga dapat menambahkan satu parameter lagi di dalam catch yang merupakan objek stack trace.
  // Dari stack trace ini kita bisa melihat detail exception dan di baris mana exception tersebut terjadi.
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }

  //ex 4: Selain try, on, dan catch, ada satu blok lagi yang ada dalam mekanisme exception handling, yaitu finally.
  // Blok finally akan tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok try-catch.
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}
