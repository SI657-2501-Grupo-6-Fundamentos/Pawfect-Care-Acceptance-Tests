Feature: US01: Registro de Usuario
  Como administrador
  Quiero gestionar los usuarios
  Para asegurar que solo personas autorizadas tengan acceso al sistema

Scenario: El dueño de mascota necesita registrarse en el sistema
  Given el <pet owner> está en la página de registro
  When el dueño de mascota completa todos los <campos requeridos>
  Then el sistema debe permitir al usuario crear una cuenta y mostrar un <mensaje de confirmacion>

  Examples:
    | nombre      | teléfono   | correo             | dirección          | contraseña    | salida                                 |
    | Juan Pérez  | 987654321  | juan@mail.com      | Av. Principal 123  | Pass123!     | "Registro exitoso: Bienvenido Juan!"    |
    | María López | 987123456  | maria@mail.com     | Calle Secundaria   | PetSafe99    | "Registro exitoso: Bienvenida María!"   |


Scenario: El veterinario necesita registrarse en el sistema
  Given el <veterinario> está en la página de registro
  When el veterinario completa todos los <campos requeridos>
  Then el sistema debe permitir al usuario crear una cuenta y mostrar un <mensaje de confirmacion>

  Examples:
    | nombre      | teléfono   | correo                | especialidad         | contraseña   | salida                                       |
    | Dr. Ramírez | 987654321  | ramirez@clinic.com    | Cirugía veterinaria  | VetPass01!   | "Registro exitoso: Bienvenido Dr. Ramírez!"  |
    | Dra. Torres | 987123456  | torres@hospital.com   | Dermatología animal  | SecureVet99  | "Registro exitoso: Bienvenida Dra. Torres!"  |


Scenario: El usuario ingresa un correo electrónico ya registrado
  Given el usuario intenta registrarse con un correo electrónico ya asociado a una cuenta
  When el usuario ingresa el <correo duplicado> y envía el formulario
  Then el sistema debe mostrar un <mensaje de error> indicando que el correo ya está registrado

  Examples:
    | email           | salida                                     |
    | juan@mail.com   | "Error: El correo ya está registrado"      |
    | maria@mail.com  | "Error: El correo ya está registrado"      |


Scenario: El usuario deja campos obligatorios sin llenar
  Given el usuario intenta registrarse sin completar todos los campos obligatorios
  When el usuario presiona el botón de registro con <campo_faltante> vacío
  Then el sistema debe mostrar un <mensaje de error> solicitando que se complete <campo_faltante>

  Examples:
    | campo_faltante | salida                                           |
    | nombre         | "Error: El nombre es obligatorio"                |
    | teléfono       | "Error: El teléfono es obligatorio"              |
    | correo         | "Error: El correo electrónico es obligatorio"    |
    | dirección      | "Error: La dirección es obligatoria"             |
    | contraseña     | "Error: La contraseña es obligatoria"            |