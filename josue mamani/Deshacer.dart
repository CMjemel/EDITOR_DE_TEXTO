void main() {
  // Creamos dos pilas: una para historial y otra para rehacer
  List<String> pila = []; // Historial principal
  List<String> pilaRehacer = []; // Para rehacer lo que se deshizo

  // Función para agregar una línea a la pila
  void agregarLinea(String linea) {
    pila.add(linea); // Agrega la línea al historial
    pilaRehacer
        .clear(); // Borra el historial de rehacer (no se puede rehacer después de una nueva acción)
    print('Agregado: "$linea"');
  }

  // Función para deshacer la última línea agregada
  void deshacer() {
    if (pila.isNotEmpty) {
      String linea = pila.removeLast(); // Quita la última línea
      pilaRehacer.add(linea); // Guarda la línea en pilaRehacer
      print('Deshacer: "$linea" fue eliminada del historial.');
    } else {
      print('No hay líneas guardadas para deshacer.');
    }
  }

  // Función para rehacer la última línea eliminada
  void rehacer() {
    if (pilaRehacer.isNotEmpty) {
      String linea =
          pilaRehacer.removeLast(); // Recupera la última línea deshecha
      pila.add(linea); // La vuelve a agregar al historial
      print('Rehacer: "$linea" fue restaurada al historial.');
    } else {
      print('No hay líneas para rehacer.');
    }
  }

  // Pruebas
  agregarLinea("Primera línea");
  agregarLinea("Segunda línea");
  agregarLinea("Tercera línea");

  deshacer(); // Elimina "Tercera línea"
  deshacer(); // Elimina "Segunda línea"
  rehacer(); // Restaura "Segunda línea"
  rehacer(); // Intenta rehacer, pero no hay más

  deshacer(); // Elimina "Segunda línea" otra vez
  agregarLinea("Nueva línea"); // Esto borra el historial de rehacer
  rehacer(); // No se puede rehacer después de agregar una nueva línea
}
