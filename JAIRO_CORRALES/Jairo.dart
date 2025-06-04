import 'dart:collection';
import 'dart:io';

class EditorTexto {
  Queue<String> cola = Queue<String>(); // líneas pendientes
  List<String> pila = []; // historial de líneas guardadas

  void escribirLinea(String texto) {
    cola.addLast(texto);
    print(' Línea escrita: "$texto" (Pendientes: ${cola.length})');
  }

  void guardarLinea() {
    if (cola.isNotEmpty) {
      String linea = cola.removeFirst();
      pila.add(linea);
      print('Línea guardada: "$linea" (Pendientes: ${cola.length})');
    } else {
      print('No hay líneas pendientes para guardar.');
    }
  }

  void deshacer() {
    if (pila.isNotEmpty) {
      String linea = pila.removeLast();
      print(' Deshacer: "$linea" fue eliminada del historial.');
    } else {
      print(' No hay líneas guardadas para deshacer.');
    }
  }

  void verHistorial() {
    print('\n Historial de líneas guardadas (${pila.length}):');
    if (pila.isEmpty) {
      print('  (Vacío)');
    } else {
      for (int i = 0; i < pila.length; i++) {
        print('  ${i + 1}. ${pila[i]}');
      }
    }
  }

  // Función (Jairo) parte
  void verPendientes() {
    print('\n Líneas pendientes por guardar (${cola.length}):');
    if (cola.isEmpty) {
      print('  (Vacío)');
    } else {
      int index = 1;
      cola.forEach((linea) {
        print('  ${index++}. $linea');
      });
    }
  }
}

void main() {
  EditorTexto editor = EditorTexto();
  String? opcion;

  print('✨ Bienvenido al Editor de Texto Simple en Dart ✨');

  do {
    print('\n=== Menú Principal ===');
    print('1.Escribir línea');
    print('2.Guardar línea');
    print('3.Deshacer última línea');
    print('4.Ver historial');
    print('5.Ver pendientes (Función de Jairo)');
    print('6.Salir');
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
        editor.deshacer();
        break;
      case '4':
        editor.verHistorial();
        break;
      case '5':
        print('\n=== Líneas Pendientes ===');
        editor.verPendientes();
        break;
      case '6':
        print('Saliendo del editor... ¡Hasta luego!');
        break;
      default:
        print('Opción inválida. Por favor elige del 1 al 6.');
    }
  } while (opcion != '6');
}
