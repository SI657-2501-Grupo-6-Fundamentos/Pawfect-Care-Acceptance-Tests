Feature: US03: Gestión de Cuentas de Usuarios
  Como usuario registrado,
  Quiero poder iniciar sesión ingresando mi correo electrónico y contraseña
  Para poder utilizar los servicios de la aplicación

  Escenario: El administrador edita el perfil de un usuario
    Dado que el administrador está en la sección de gestión de usuarios
    Cuando selecciona el perfil de un usuario y edita su información (nombre, correo, teléfono, dirección)
    Entonces el sistema debe permitir que el administrador guarde los cambios
    Y mostrar un mensaje de confirmación

  Escenario: El administrador desactiva una cuenta de usuario
    Dado que el administrador desea desactivar la cuenta de un usuario
    Cuando selecciona la opción de desactivar en la lista de usuarios
    Entonces el sistema debe cambiar el estado del usuario a "inactivo"
    Y el usuario no podrá acceder al sistema hasta ser reactivado

  Escenario: El administrador elimina una cuenta de usuario
    Dado que el administrador está gestionando cuentas de usuarios
    Cuando selecciona la opción de eliminar el perfil de un usuario
    Entonces el sistema debe mostrar una advertencia antes de la eliminación
    Y eliminar permanentemente el perfil y todos sus datos asociados