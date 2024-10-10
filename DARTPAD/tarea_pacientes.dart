void main() {
  // 8. Caso de Prueba 1
  print("Caso 1: Paciente activo");
  print("------------------------------------------------------");
  final paciente1 = Paciente(
      cortesyTitle: "Sr",
      id: 256,
      nombre: 'Julio Alexis',
      primer_apellido: 'Gomez',
      segundo_apellido: 'Gaona',
      genero: 'Masculino',
      grupoSanguineo: 'A+',
      fechaNacimiento: DateTime(2002, 09, 04),
      curp: 'GOGJ020904HVZMNLA4',
      estatus: 'Activo',
      nss: '1234567890',
      tipoSeguro: 'Publico IMSS',
      estatusVida: EstatusVida.Vivo,
      estatusMedico: 'Activo',
      fechaRegistro: DateTime.now(),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Nuevo);
  paciente1.imprimirDatosPaciente();

  // 9. Caso de Prueba 2
  print("\nCaso 2: Paciente que fue trabajador del hospital");
  print("------------------------------------------------------");
  final paciente2 = Paciente(
      cortesyTitle: "Sra",
      id: 257,
      nombre: 'María',
      primer_apellido: 'López',
      segundo_apellido: 'Martínez',
      genero: 'Femenina',
      grupoSanguineo: 'A+',
      fechaNacimiento: DateTime(1985, 02, 02),
      curp: 'LOMJ850202MDFRPL01',
      estatus: 'Activo',
      nss: '1230987',
      tipoSeguro: 'Publico ISSTE',
      estatusVida: EstatusVida.Vivo,
      estatusMedico: 'Activo',
      fechaRegistro: DateTime(2012, 01, 20),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Registrado);
  
  paciente2.imprimirDatosPaciente();

  // 10. Caso de Prueba 3
  print("\nCaso 3: Paciente fallecido");
  print("------------------------------------------------------");
  final paciente3 = Paciente(
      cortesyTitle: "Sra",
      id: 258,
      nombre: 'Ana',
      primer_apellido: 'Hernández',
      segundo_apellido: 'Ruiz',
      genero: 'Femenina',
      grupoSanguineo: 'B+',
      fechaNacimiento: DateTime(1990, 03, 03),
      curp: 'HERA900303HDFRRL01',
      estatus: 'Activo',
      nss: '098765432',
      tipoSeguro: 'Seguro Popular',
      estatusVida: EstatusVida.Vivo,
      estatusMedico: 'Activo',
      fechaRegistro: DateTime(2022, 06, 10),
      fechaUltimaCita: DateTime.now(),
      tipoUsuario: usuario.Registrado);

  // 6. Sobreescritura de la Función registrarDefuncion()
  paciente3.registrarDefuncion();
  paciente3.imprimirDatosPaciente();
}

// Enumeración para el tipo de usuario
enum usuario { Nuevo, Registrado, Finado }

// Enumeración para el estatus de vida
enum EstatusVida { Vivo, Fallecido, Desconocido }

// 1. Definición de la Clase Abstracta <Persona>
abstract class Persona {
  int id;
  String cortesyTitle;
  String nombre;
  String primer_apellido;
  String segundo_apellido;
  String genero;
  String grupoSanguineo;
  DateTime fechaNacimiento;
  String curp;
  String estatus;
  DateTime fechaRegistro;
  
  // 2. Definición de la Función de la Clase <Paciente>
  Persona({
    required this.id,
    required this.cortesyTitle,
    required this.nombre,
    required this.primer_apellido,
    required this.segundo_apellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    required this.curp,
    required this.estatus,
    required this.fechaRegistro,
  });

  void imprimirDatosPersona() {
    print('$cortesyTitle. $nombre $primer_apellido $segundo_apellido');
    print('ID: $id');
    print('Nombre: $nombre');
    print('Primer Apellido: $primer_apellido');
    print('Segundo Apellido: $segundo_apellido');
    print('Género: $genero');
    print('Grupo Sanguíneo: $grupoSanguineo');
    print('Fecha de Nacimiento: ${fechaNacimiento.year}-${_twoDigits(fechaNacimiento.month)}-${_twoDigits(fechaNacimiento.day)}');
    print('CURP: $curp');
    print('Estatus: $estatus');
  }

  // Método auxiliar para formatear números a dos dígitos
  String _twoDigits(int n) {
    return n >= 10 ? '$n' : '0$n';
  }
}

// 3. Declaración de las Propiedades de la Clase <Paciente>
// 4. Sobreescritura de las Propiedades de la Clase Abstracta <Persona>
class Paciente extends Persona {
  String nss;
  String tipoSeguro;
  EstatusVida estatusVida;
  String estatusMedico;
  DateTime fechaUltimaCita;
  usuario tipoUsuario;

  // 5. Métodos CRUD de la Clase <Paciente, Persona>
  Paciente({
    required int id,
    required String cortesyTitle,
    required String nombre,
    required String primer_apellido,
    required String segundo_apellido,
    required String genero,
    required String grupoSanguineo,
    required DateTime fechaNacimiento,
    required String curp,
    required String estatus,
    required this.nss,
    required this.tipoSeguro,
    required this.estatusVida,
    required this.estatusMedico,
    required DateTime fechaRegistro,
    required this.fechaUltimaCita,
    required this.tipoUsuario,
  }) : super(
            id: id,
            cortesyTitle: cortesyTitle,
            nombre: nombre,
            primer_apellido: primer_apellido,
            segundo_apellido: segundo_apellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            fechaNacimiento: fechaNacimiento,
            curp: curp,
            estatus: estatus,
            fechaRegistro: fechaRegistro);

  @override
  void imprimirDatosPersona() {
    super.imprimirDatosPersona();
    print('Paciente: ${tipoUsuario.toString().split('.').last}');
    print('NSS: $nss');
    print('Tipo de Seguro: $tipoSeguro');
    print('Estatus de Vida: ${estatusVida.toString().split('.').last}');
    print('Estatus Médico: $estatusMedico');
    print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
  }

  // Método que imprime los datos de la persona y los del paciente
  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
  }

  // 6. Sobreescritura de la Función registrarDefuncion()
  void registrarDefuncion() {
    estatusVida = EstatusVida.Fallecido;
    estatusMedico = 'Inactivo';
    tipoUsuario = usuario.Finado;
  }
}
