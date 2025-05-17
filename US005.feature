Feature: Edición de Perfil de Mascota
  Como usuario,
  Quiero editar el perfil de mi mascota
  Para actualizar su información cuando sea necesario

  Escenario: El usuario edita el perfil de su mascota
    Dado que el usuario está en la página de edición del perfil de su mascota
    Cuando realiza cambios en la información del perfil (por ejemplo, actualiza el historial clínico o cambia la raza)
    Entonces el sistema debe permitir guardar los cambios
    Y mostrar un mensaje de confirmación de éxito

  Escenario: El usuario intenta guardar un perfil con información incompleta
    Dado que el usuario está editando el perfil de una mascota
    Cuando intenta guardar el perfil sin haber completado todos los campos requeridos
    Entonces el sistema debe mostrar un mensaje de error solicitando que complete toda la información requerida