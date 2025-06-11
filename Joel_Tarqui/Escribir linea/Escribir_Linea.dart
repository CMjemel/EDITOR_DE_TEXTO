class EditorTexto {
  Queue<String> cola = Queue<String>(); // líneas pendientes
  List<String> pila = []; // historial de líneas guardadas

  void escribirLinea(String texto) {
    cola.addLast(texto); // Agrega la línea escrita a la cola
    print('Línea escrita: "$texto"'); // Muestra mensaje de confirmación
    // hola      
  }
}