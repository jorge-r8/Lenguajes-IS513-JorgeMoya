
import 'dart:math' as math;

class Circulo{
  
  late double radio;
  late String color;
  
  
  Circulo(this.radio , this.color);
  
  double calcularArea(){
    
    return ((math.pi)*(this.radio*this.radio));
    
  }
  
  double calcularPerimetro(){
    
    return ( (2*this.radio)*math.pi );
    
  }
  
  
  
  
}


void main(){

  //prueba
    Circulo circulo1 = Circulo(3, "verde");

    print("area: ${circulo1.calcularArea()} ");
    print("perimetro: ${circulo1.calcularPerimetro()}");


  }
