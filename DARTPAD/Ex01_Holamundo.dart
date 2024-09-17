void main() {
  //var myName ="Alexis";
  var myName = "Alexis";
  String myLastName = "Gomez";
  final int myDNI = 210013;
  late final int myAge;

  myName = "Alex Gaona";
  //myDNI=21000; esto ocasiono un error por lo que la variable esta definida como final

  print(
      'Hola mundo $myName $myLastName, tu matricula es: $myDNI y tu edad aun no la conozco, por que no se cuando naciste');

  print(
      '\nHola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aun no la conozco, por que no se cuando naciste. ');
}