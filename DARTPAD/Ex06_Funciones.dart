void main() {
  final double totalCarList;

  //1. Llamado de una funcion sin parametros
  greetEveryone();
  
  //2. LLAMADO DE UNA FUNCION QUE RETORNA VALORES
  //A)  SIN ALMACENAR EL VALOR DE UNA VARIABLE
  print("hoy es el dia numero: ${getDayNumber()} del mes.");
  //B) ALAMACENADO EL VALOR DE LA FUNCION EN UNA NUEVA VARIABLE
  final int diaMes;
  diaMes = getDayNumber();
  print("Entre tres dias sera: ${diaMes+3}");

//3. LLAMADO DE UNA FUNCION CON SOLO PARAMETRO OBLIGATORIO

//A) LLAMADO CORRECTO
print(greetSomeone("Alexis"));
//B) DECALARDO COMO DYNAMIC
print(greetSomeone(4));
print(greetSomeone(-312));
print(greetSomeone(3.1415));
print(greetSomeone(true));
print("-----------------------------------------------------------------");

//C) MISMO EXPERIMENTO PERO AHORA CON LA FUNCION  PARAMETROS TIPADOS
/*print(greetSomeoneTyped("Bruno"));
print(greetSomeoneTyped(4));
print(greetSomeoneTyped(-312));
print(greetSomeoneTyped(3.1415));
print(greetSomeoneTyped(true));
*/
/*3.2
 print(greetSomeone()); Esta no se puede ejecutar porque si no se define 
 los parametros de una funcion por defaul estan definidos como obligatorios
 */
  //4. Llamado de una funcion con parametros opcionales
  //4.1 ENCVIANDO AMBOS PARAMETROS
  print(greetHourOfDay("aLEXIS",9));
  //4.2 SOLO ENVIADO EL OBLIGATORIO
  print(greetHourOfDay("Alexius", null));
  // 5. FUNCIONES LAMBDA - LAS FUNCIONES LAMBDA ES MEJOR CONOCIDAS COMO FUNCIONES ANONIMAS O FUNCIONES SIMPLIFICADAS SE EJECUTAN DE MANERA SIMPLE Y NO FRECUENTE EN LA EJECUCION DE UN PROGRMA O SISTEMA
  var calculaCosto = (double productQuantity, double productPrice,
  double percentageDiscount ) => (productQuantity * productPrice)*((100-percentageDiscount)/100);
  double cantidadProducto = 5;
  double precioProducto = 125.50;
  double descuento = 2.5;
  print("""
  Costo del producto: ${cantidadProducto};
  Cantidad: ${cantidadProducto};
  Descuento: ${descuento};
  ------------------------------------------------
  Costo del carrito de Compras: ${calculaCosto(cantidadProducto,
  precioProducto, descuento)}
  """);
}

//FUNCIONES Y PARAMETROS 
  
  //DECLARACION
  
  //1. FUNCION SIN PARAMETROS
void greetEveryone()

{
  print("Hola a todas y todos :D");
}
//2. Funcion sin parametro, que retorna datos 
getDayNumber()
{
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

//3. FUNCION QUE RECIBE UN PARAMETRO, EN DART SI NO SE ESPECIFICA COMO OPCIONAL SIEMPRE SERA OBLIGATORIO
String greetSomeone(personName)
{
  return("Hola, ${personName}");
}

String greetSomeoneTyped(String personName)
{
  return("Hola, ${personName}");
}

// 4. FUNCIÓN CON PARÁMETROS OPCIONALES
String greetHourOfDay(String personName, int? hora) {
  hora ??= DateTime.now().hour; // Asignar la hora actual si hora es nulo
  print("Hora:${hora}");
  String saludo;

  if (hora >= 6 && hora < 12) {
    saludo = "Buenos Días";
  } else if (hora >= 12 && hora < 18) {
    saludo = "Buenas Tardes";
  } else {
    saludo = "Buenas Noches";
  }

  return "$saludo, $personName";
  
}



