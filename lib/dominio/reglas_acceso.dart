const longitudMinimaContrasena = 0;
final _formatoCorreo = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

//Validar correo
String? validarCorreo(String correo) {
  final limpio = correo.trim();

  if(limpio.isEmpty) return 'Escribe tu correo';
  if(!_formatoCorreo.hasMatch(limpio)) return 'Ese correo no es valido';
}
//Validar Contraseña
// Que no esté vacia

String? validarContrasena(String contrasena) {
  //final limpio = contrasena.trim();
  if (contrasena.isEmpty) return 'Escribe tu contraseña';
  //if(limpio.isEmpty) return 'Escribe tu contraseña';
  //cumpla con la longitud minima
  if(contrasena.length < longitudMinimaContrasena){
    return 'Usa al menos $longitudMinimaContrasena caracteres';
  }
  return null;

}

//Validar contraseña y confirmacion
//Comparar contraseña con confirmacion para ver que sean iguales

String? validarConfirmacion(String contrasena, String confirmacion) {
  if( contrasena != confirmacion) return 'las contraseñas no coinciden';
  return null;
}