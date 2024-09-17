void main() {
  //PRACTICA 04: TIPOS DE DATOS EN dart
  //cadenas STRINGS
  final String pokemon = 'Ditto';
  
  //ENTEROS INT
  final int hp = 100;
  
  //BOOLEANO
  final bool isAlive= true;
  
  //LISTAS (list)
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png','ditto/back.png'];
  
  print("""
   el pokemon que elegiste es: $pokemon
      el pokemon que elegiste es: $pokemon
  -----------------------------------
  Las Estadisticas de $pokemon son: 
  Vida (HP):$hp
  Estatus de Vida: $isAlive
  Habilidades:$abilities
  Imagenes:$sprites
  
  """);
}