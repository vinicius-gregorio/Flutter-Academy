void main(List<String> args) {
  var patients = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  void getNumberOfPatientsWithDesignedAge(int age) {
    List<String> patientsAges = [];
    for (String patient in patients) {
      patientsAges.add(patient.replaceAll(new RegExp(r'\D+'), ''));
    }
    int numberOfPatientsWithDesignedAge =
        patientsAges.where((element) => int.parse(element) > age).length - 1;
    print('O Numero de pacientes maiores de 20 anos e de : ' +
        numberOfPatientsWithDesignedAge.toString());
  }

  getNumberOfPatientsWithDesignedAge(20);

  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  List<String> lastNames = [];
  Map<String, List<String>> patientsFilteredByLastName = {};

  void agroupPatientsByFamilyName() {
    for (String patient in patients) {
      var fullName = patient.split('|');
      var familyName = fullName[0].split(' ');
      String lastName = familyName[1];

      if (!lastNames.contains(lastName)) {
        lastNames.add(lastName);

        patientsFilteredByLastName[lastName] = [patient];
      } else {
        patientsFilteredByLastName[lastName].add(patient);
      }
      print(patientsFilteredByLastName);
    }
  }

  agroupPatientsByFamilyName();
}
