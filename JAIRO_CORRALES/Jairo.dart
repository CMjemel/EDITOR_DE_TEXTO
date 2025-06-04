import 'dart:collection';

class EditorTexto {
  Queue<String> cola = Queue<String>(); // líneas pendientes
  List<String> pila = []; // historial de líneas guardadas

  //jairo
  void verPendientes() {
    print('\n Líneas pendientes por guardar:');
    if (cola.isEmpty) {
      print('  (Vacío)');
    } else {
      for (var linea in cola) {
        print('  - $linea');
      }
    }
  }
}

//Equipos
void main() {
  EditorTexto editor = EditorTexto();
}
