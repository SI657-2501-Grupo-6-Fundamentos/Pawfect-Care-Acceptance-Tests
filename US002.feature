Feature: US02: Autenticación de Usuarios
  Como usuario registrado,
  Quiero poder iniciar sesión ingresando mi correo electrónico y contraseña
  Para poder utilizar los servicios de la aplicación

  Escenario: Inicio de sesión exitoso
    Dado que el usuario está registrado en el sistema
    Y se encuentra en la pantalla de inicio de sesión
    Cuando ingresa un <correo> y una <clave> válidos
    Y hace clic en el botón "Iniciar sesión"
    Entonces el sistema debe autenticar al usuario
    Y redirigirlo al panel principal de la aplicación

    Examples:
      | correo                | contraseña   |
      | usuario1@example.com  | Pass1234!    |
      | maria.perez@mail.com  | MiClave2024  |
      | juan.lopez@test.com   | Contra@456   |


  Escenario: Credenciales inválidas
    Dado que el usuario está en la pantalla de inicio de sesión
    Cuando ingresa un correo electrónico o una contraseña incorrectos
    Y hace clic en el botón "Iniciar sesión"
    Entonces el sistema debe mostrar un <mensaje de error> indicando que las credenciales son inválidas
    Y permanecer en la misma pantalla
  
  Examples:
    | correo               | contraseña   | mensaje de error                            |
    | usuario@example.com  | Pass1234!    | Credenciales inválidas. Intente nuevamente. |


  Escenario: Campos vacíos
    Dado que el usuario está en la pantalla de inicio de sesión
    Cuando deja el campo de <correo electronico> o <clave> vacía
    Y hace clic en el botón "Iniciar sesión"
    Entonces el sistema debe mostrar un <mensaje de validacion> indicando que los campos son obligatorios

  Examples:
    | correo               | contraseña   | mensaje de validacion                           |
    | ""                   | Pass1234!    | El campo de correo electrónico es obligatorio.  |
    | usuario@example.com  | ""           | La contraseña es obligatoria.                   |