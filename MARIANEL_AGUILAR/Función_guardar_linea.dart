//Marianel: función guardar línea

  // Función que guarda una línea de la cola en la pila
void guardarLinea() {
  // Verifica si la cola no está vacía
  if (cola.isNotEmpty) {
    // Extrae la primera línea de la cola
    String linea = cola.removeFirst();
    // Agrega la línea extraída a la pila
    pila.add(linea);
    // Muestra un mensaje indicando qué línea fue guardada
    print(' Línea guardada: "$linea"');
  } else {
    // Si la cola está vacía, informa que no hay líneas para guardar
    print(' No hay líneas pendientes para guardar.');
  }
  
}
