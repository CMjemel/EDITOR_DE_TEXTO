var pila = ['Primera', 'Segunda'];

void deshacer() =>
    pila.isNotEmpty ? print('Deshacer: "${pila.removeLast()}"') : print('Nada que deshacer.');

void main() {
  deshacer();
  deshacer();
  deshacer();
}
