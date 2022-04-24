import 'package:dcli/dcli.dart';

import 'ask.dart';
import 'createfolder/create.dart';

void clininicio() {
  final arch = requestAsksolictar();

  if (arch.index == 1) {
    
   createArchivos();
  } else {
    var archivo = resquest();
    print(green('Has Elegido ${archivo.model}'));

    if (archivo.name == 'TDD') {
      createFolders();
 

      print(green('Hemos Creado su Arquitectura'));
    } else {
      print(red('Aún no hemos implementado la funcionalidad'));
    }
  }
}