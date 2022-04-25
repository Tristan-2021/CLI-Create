import 'package:dcli/dcli.dart';

void createFolders() {
  if (!isDirectory("$pwd/lib/clean/")) {
    createDir("$pwd/lib/clean/", recursive: true);

    if (isDirectory("$pwd/lib/clean/")) {
      //create Presentation/

      createDir("$pwd/lib/clean/presentation", recursive: true);
      //create Data/
      createDir("$pwd/lib/clean/data", recursive: true);
      createDir("$pwd/lib/clean/data/model", recursive: true);

      createDir("$pwd/lib/clean/data/cache", recursive: true);
      createDir("$pwd/lib/clean/data/sources", recursive: true);
      createDir("$pwd/lib/clean/data/repositories", recursive: true);

      //create Domain/

      createDir("$pwd/lib/clean/domain", recursive: true);
      createDir("$pwd/lib/clean/domain/entity", recursive: true);
      createDir("$pwd/lib/clean/domain/repositories", recursive: true);
      createDir("$pwd/lib/clean/domain/usecase", recursive: true);

      createDir("$pwd/lib/clean/core", recursive: true);
    }
  }
}

void createArchivos() {
  if (isDirectory("$pwd/lib/clean/")) {
    //create Presentation/
    String nombre = ask('Ponga el nombre que desea usar').toLowerCase();
    //  Strning namreminuscua = nombre.toLowerCase();

    //create Data/

    touch("$pwd/lib/clean/data/sources/sources_$nombre.dart", create: true);
    touch("$pwd/lib/clean/data/model/model_$nombre.dart", create: true);

    touch("$pwd/lib/clean/data/repositories/data_repo_$nombre.dart",
        create: true);

    //create Domain/

    touch("$pwd/lib/clean/domain/entity/$nombre.dart", create: true);

    touch("$pwd/lib/clean/domain/repositories/dom_repo_$nombre.dart",
        create: true);
    touch("$pwd/lib/clean/domain/usecase/use_case$nombre.dart", create: true);

    print('  --------*-Se ha creado los archivos     ');
  } else {
    print('  --------*-Debe tener la arquitectura implemendatada *--------  ');
  }
}
