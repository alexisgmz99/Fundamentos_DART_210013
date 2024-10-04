void main(){
//CONSTRUIMOS NOMBRADOS
// CASO DE PRUEBA 1

final juanPerez = Person({
    id:250,
    name:"Juan Manuel",
    firstLastname: "Perez",
    secondLastname: "Rodriguez"
    gender:"Hombre",
    bloodGroup: "0+",
    curp:"PERJ09200",
    birthdate:DateTime(1992,08,05),
    isActive: true,
    createdAt: Datetime(2024,09,2024,11,05,16),
});

    print(juanPerez);
}

class Person{
    int ID;
    String? cortesyTitle;
    String name;
    String firstLastname;
    String? secondLastname;
    String gender;
    String bloodGroup;
    String? curp;
    DateTime birthdate;
    bool tsActive;
    DateTime createdAt;
    DateTime? updatedAt;

    Person({
    required this.ID, 
    this.cortesyTitle,
    required this name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.curp, 
    required this.birthdate,
    this. isActive = true,
    DateTime? createdAt,
    this.updatedAt
        }) :  createdAt = createdAt ?? DateTime.now();
    }
    
    @override
    String toString();
{
    String formatedDate = 
    "${birthdate.month.toString().padLeft(2'0')}/"+
    "${birthdate.month.toString().padLeft(2,'0')}/${birthdate.year}";
    
    String formatedCreateDate = ""
    return """
    ---------------------------------------
    DATOS DE LA PERSONA
    ---------------------------------------
    ID: $ID,
    Nombre: $name,$firstLastname, $secondLastname,
    Genero: $gender
    Grupo Sanguineo: $bloodGroup,
    Fecha de Nacimiento: $birthdate,
    CURP: $curp,
    Activo:$isActive
    Fecha Registro:    
    """;

















