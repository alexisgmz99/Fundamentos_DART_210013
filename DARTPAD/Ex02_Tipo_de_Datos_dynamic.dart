void main() {
  //Tipos de datos en Dart
  final String pokemon = "Pikachu";
  final int hp = 100;
  final bool isAlive = true;
  final List <String> abilities = ['ataque rapido', 'Cola de Hierro', 'Ataque ràpido'];
  final sprites = <String>['Pikachu_front.png', 'Pikachu_back.png'];
  
  //dynamic == null
  dynamic errorMessage; //Siempre va a ser dynamic
  print("""El valor inicial de errorMessage es: $errorMessage
  Que por defecto permite establecer valores nulos.""");
  
  //Le asignamos un valor String
  errorMessage = "El usuario y la contraseña no coinciden";
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  Ahora le hemos asignado un valor de String.""");
  
  errorMessage = 404;
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  En algunos sistemas los errores son controlados por un codigo muerto.""");
  
  errorMessage = false;
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente el mensaje de error puede ser FALSO""");
  
  errorMessage = [400, 404, 500, 502, 505];
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  En caso de que el sistema detecte varios errores podria agregarlos a una Lista""");
  
  errorMessage = {125, 'Usuario no encontrado', true, -1015.16, 'A'};
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  O incluso como un conjunto (SET) de datos.""");
  
  errorMessage = () => true;
  
  print("""El nuevo valor de errorMessage es: $errorMessage
  Que es este caso el resultado de una funcion.""");
}