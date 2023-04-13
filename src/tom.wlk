import ratones.*

object tom {
  var energia = 80
  var posicion = 0
  
  method velocidad() {
    return 5 + energia/10
  }
  method posicion() {
    return posicion
  }
  method esMasVeloz(raton) {
    return self.velocidad() > raton.velocidad()
  }
  method correrA(raton) {
    energia -= 0.5 * self.velocidad() * (self.posicion() - raton.posicion()).abs()
    posicion = raton.posicion()
  }
}