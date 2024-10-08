void main() {
  // Primer caso: Paciente activo
  print("Caso 1: Paciente activo");
  final paciente1 = Paciente(
      id: 256,
      cortesyTitle: "Sr,.",
      nombre: 'Julio Alexis',
      primer_apellido: 'Gomez',
      segundo_apellido: 'Gaona',
      genero: 'Male',
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

  print("Nombre del primer paciente: ${paciente1.cortesyTitle} ${paciente1.nombre} ${paciente1.primer_apellido} ${paciente1.segundo_apellido}");
  paciente1.imprimirDatosPaciente();

  // Segundo caso: Paciente que fue trabajador del hospital
  print("\nCaso 2: Paciente que fue trabajador del hospital");
  final paciente2 = Paciente(
      id: 257,
      cortesyTitle: "Sra.",
      nombre: 'María',
      primer_apellido: 'López',
      segundo_apellido: 'Martínez',
      genero: 'Female',
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

  print("Nombre del segundo paciente: ${paciente2.cortesyTitle} ${paciente2.nombre} ${paciente2.primer_apellido} ${paciente2.segundo_apellido}");
  paciente2.imprimirDatosPaciente();

  // Tercer caso: Paciente fallecido
  print("\nCaso 3: Paciente fallecido");
  final paciente3 = Paciente(
      id: 258,
      cortesyTitle: "Sra.",
      nombre: 'Ana',
      primer_apellido: 'Hernández',
      segundo_apellido: 'Ruiz',
      genero: 'Female',
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

  // Registrar defunción del paciente
  paciente3.registrarDefuncion();

  print("Nombre del tercer paciente: ${paciente3.cortesyTitle} ${paciente3.nombre} ${paciente3.primer_apellido} ${paciente3.segundo_apellido}");
  paciente3.imprimirDatosPaciente();
}

// Enumeración para el tipo de usuario
enum usuario { Nuevo, Registrado, Finado }

// Enumeración para el estatus de vida
enum EstatusVida { Vivo, Fallecido, Desconocido }

// Enumeración para el estatus médico
enum EstatusMedico { Activo, Inactivo }

// Clase abstracta Persona
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
    print('Datos de la Persona: $cortesyTitle $nombre $primer_apellido $segundo_apellido');
    print('Fecha de Registro: $fechaRegistro');
    print('-----------------------------------------------------------------------------');
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

  String _twoDigits(int n) {
    return n >= 10 ? '$n' : '0$n';
  }
}

// Clase Paciente que hereda de Persona
class Paciente extends Persona {
  String nss;
  String tipoSeguro;
  EstatusVida estatusVida;
  String estatusMedico;
  DateTime fechaUltimaCita;
  usuario tipoUsuario;

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
    print('Datos adicionales del paciente:');
    print('NSS: $nss');
    print('Tipo de Seguro: $tipoSeguro');
    print('Estatus de Vida: ${estatusVida.toString().split('.').last}');
    print('Estatus Médico: $estatusMedico');
    print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
    
  }

  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
    
  }

  void registrarDefuncion() {
    estatusVida = EstatusVida.Fallecido;
    estatusMedico = 'Inactivo';
    tipoUsuario = usuario.Finado;
  }
}
