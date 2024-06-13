
class Tarea{

  late String titulo;
  late String? descripcion;
  String _estado = "incompleta";

  Tarea(this.titulo, this.descripcion);

  //lista de tareas
  final List<Tarea> lista = [] ; 

  
  //metodo agregar, para agregar objetos tipo Tarea a la lista
  void agregar(Tarea tarea){
    
    lista.add(tarea);

  }
  
  //metodo eliminar, funciona recibiendo el titulo de la tarea que desea eliminar
  void eliminar(String titulo){
    
    lista.removeWhere((item) => item.titulo == titulo);
    
  }
  
  //metodo marcarCompleta, cambia el valor del estado a completa, ya que cada tarea inicia como incompleta, funciona recibiendo el titulo de la tarea
  void marcarCompleta(String titulo){
    
    final ubicacion = lista.indexWhere( (item) => item.titulo == titulo  );
    Tarea tareatemp = lista.elementAt(ubicacion) ;
    
    tareatemp._estado = "completa";
    
    
  }
  
  String get estado => this._estado;
  

}



void main(){
  
  //pruebas de la clase
  
  Tarea tareaP = Tarea("TareaPrincipal","Tarea con lista de tareas");
  
  tareaP.agregar( Tarea("Tarea de ingles","traduccion de palabras en ingles") );
  tareaP.agregar( Tarea("Lavar ropa", null ) );
  tareaP.agregar( Tarea("Preparar mochila", "preparar la mochila con utiles necesarios" ) );
  tareaP.agregar( Tarea("bañar al perro", null ) );
  tareaP.agregar( Tarea("Tarea de matematicas", "resolver ejercicios del 4 al 12" ) );
  tareaP.agregar( Tarea("hacer comida", "preparar el almuerzo" ) );
  

  tareaP.marcarCompleta("Tarea de ingles");
  tareaP.marcarCompleta("bañar al perro");
  tareaP.marcarCompleta("Tarea de matematicas");

  tareaP.eliminar("Lavar ropa");
  
  
  
  print("${tareaP.titulo} : ${tareaP.descripcion}");
  //imprimir lista de tareas
  for (final elemento in tareaP.lista) {
    
    print("\n--------Tarea--------");
    print("titulo: ${elemento.titulo} ");
    print("descripcion: ${elemento.descripcion} ");
    print("estado: ${elemento.estado} ");
    
  
  }
  
  
  
  
}