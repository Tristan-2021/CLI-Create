import 'package:dcli/dcli.dart';

import 'entities/entitidad.dart';

Arquietctura resquest() {
  List<Arquietctura> arquitec = [
    Arquietctura('TDD', 'Test Driven Development'),
    Arquietctura('MVC', 'Model Vista Controlador'),
  ];
  var selected1 = menu(
    prompt: 'Que Arquitectura deseas Implementar en su proyecto?',
    options: arquitec,
    format: (arquitec) {
      Arquietctura ca = arquitec as Arquietctura;
      return ca.name;
    },
    //defaultOption: arquitec[1]
  );

  return selected1;
}

Asksolictar requestAsksolictar() {
  List<Asksolictar> arquitec = [
    Asksolictar('Crear Archivos ', 1),
    Asksolictar('Crear Arquitectura',2),
  ];
  print('''  
+----------------------------------------------------+
| Hey Bienvido al CLI Create Architecture            |
| Aquí podrás crear proyectos con mayor facilidad.   |
|                                                    |
| For more info visit:                               |
| https://                                           |
+----------------------------------------------------+
''');
  var selected1 = menu(
      prompt: 'Crear arquivos o implementar arquitectura',
      options: arquitec,
      format: (arquitec) {
        Asksolictar ca = arquitec as Asksolictar;
        return ca.create;
      },
      defaultOption: arquitec[1]);

  return selected1;
}