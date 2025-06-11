import 'dart:collection'; // Importa la biblioteca para usar estructuras como Queue (cola)

class EditorTexto { // Define una clase llamada EditorTexto
  Queue<String> cola = Queue<String>(); // Crea una cola de cadenas de texto
  List<String> pila = []; // Crea una lista de cadenas que funcionará como una pila

  void verHistorial() { // Método para mostrar el historial guardado en la pila
    print('\n Historial de líneas guardadas:'); // Imprime un encabezado

    if (pila.isEmpty) { // Verifica si la pila está vacía
      print('  (Vacío)'); // Si está vacía, muestra "(Vacío)"
    } else { // Si no está vacía
      for (var linea in pila) { // Recorre cada línea en la pila
        print('  - $linea'); // Imprime cada línea con un guion delante
      }
    }
  }
}

void main() { // Función principal del programa
  EditorTexto editor = EditorTexto(); // Crea una instancia de la clase EditorTexto

  editor.pila.addAll(['Primera línea', 'Segunda línea', 'Tercera línea']); // Agrega varias líneas a la pila

  editor.verHistorial(); // Llama al método para mostrar el historial de líneas
}
//goku es el mejor