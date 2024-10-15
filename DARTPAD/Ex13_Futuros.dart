void main() {
  
  // El programa comienza y se imprime este mensaje en la consola
  print('Inicio del programa');
  
  // Simulamos una solicitud HTTP con un futuro que se completa después de 1 segundo
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      // Si la solicitud es exitosa, se muestra la respuesta
      (value) {
        print(value);
      })
    .catchError( (err) {
      // Si hay un error en la solicitud, se muestra el error en la consola
      print('Error: $err');
    });
  
  
  print('Fin del programa');
}


// Función que simula una solicitud HTTP y retorna un Future<String>
Future<String> httpGet(String url) {
  
  // Simulamos un retraso de 1 segundo para la "respuesta" de la solicitud
  return Future.delayed(const Duration(seconds: 1), () {
    
    // Simulamos un error en la solicitud, lo que activará el catchError
    throw 'Error en la solicitud http';
    
    // Si no hubiera error, retornaría esta cadena como respuesta

    
  });
}
