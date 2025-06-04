import 'dart:collection';
import 'dart:io';

class EditorTexto {
  Queue<String> cola = Queue<String>(); // líneas pendientes
  List<String> pila = []; // historial de líneas guardadas

  void escribirLinea(String linea) {
    cola.add(linea);
    print('Línea añadida a pendientes.');
  }

  void guardarLinea() {
    if (cola.isEmpty) {
      print('No hay líneas pendientes para guardar.');
    } else {
      String linea = cola.removeFirst();
      pila.add(linea);
      print('Línea guardada en historial: "$linea"');
    }
  }

  void verHistorial() {
    print('\nHistorial de líneas guardadas:');
    if (pila.isEmpty) {
      print('  (Vacío)');
    } else {
      for (int i = 0; i < pila.length; i++) {
        print('  ${i + 1}. ${pila[i]}');
      }
    }
  }

  void verPendientes() {
    print('\nLíneas pendientes por guardar:');
    if (cola.isEmpty) {
      print('  (Vacío)');
    } else {
      for (var linea in cola) {
        print('  - $linea');
      }
    }
  }
}

void main() {
  EditorTexto editor = EditorTexto();
  String? opcion;

  print('Bienvenido al Editor de Texto Simple en Dart');

  do {
    print('\nMenú:');
    print('1. Escribir línea');
    print('2. Guardar línea actual');
    print('3. Ver historial');
    print('5. Ver pendientes');
    print('6. Salir');
    stdout.write('Selecciona una opción: ');
    opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write('Escribe una línea: ');
        String? texto = stdin.readLineSync();
        if (texto != null && texto.trim().isNotEmpty) {
          editor.escribirLinea(texto);
        } else {
          print('La línea no puede estar vacía.');
        }
        break;
      case '2':
        editor.guardarLinea();
        break;
      case '3':
        editor.verHistorial();
        break;
      case '5':
        editor.verPendientes();
        break;
      case '6':
        print('Saliendo del editor...');
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  } while (opcion != '6');
}
