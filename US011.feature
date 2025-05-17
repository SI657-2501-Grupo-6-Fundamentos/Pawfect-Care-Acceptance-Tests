Feature: Búsqueda de Citas por fecha
  Como dueño de mascota o médico veterinario,
  Deseo poder buscar citas por fecha para acceder rápidamente a la información de la cita

  Escenario: El usuario busca citas por una fecha válida
    Dado que el usuario (dueño o veterinario) está en la sección de citas
    Cuando ingresa una <fecha> válida en el campo de búsqueda
    Entonces el sistema debe mostrar todas las <citas> correspondientes a esa fecha

 Examples:
    | fecha       | resultado                                         |
    | 2025-05-20  | Cita con Dr. Pérez a las 10:00 AM para Fido       |
    | 2025-05-21  | Cita con Dra. Gómez a las 3:00 PM para Luna       |


  Escenario: El usuario ingresa una fecha sin citas registradas
    Dado que el usuario desea buscar citas por fecha
    Cuando ingresa una <fecha> para la cual no hay citas registradas en el sistema
    Entonces el sistema debe mostrar un <mensaje> indicando que no se encontraron citas para esa fecha

  Examples:
    | fecha       | mensaje                                             |
    | 2025-06-01  | No se encontraron citas para la fecha seleccionada. |
    | 2025-07-15  | No se encontraron citas para la fecha seleccionada. |
    | 2025-12-31  | No se encontraron citas para la fecha seleccionada. |

  Escenario: El usuario deja el campo de fecha vacío o con un formato incorrecto
    Dado que el usuario está en la sección de búsqueda de citas
    Cuando ingresa la fecha "<fecha>"
    Entonces el sistema debe mostrar un <mensaje> de validación indicando que debe ingresar una fecha válida

  Examples:
    | fecha       | mensaje_esperado                                    |
    | ""          | "Por favor, ingrese una fecha válida."              |
    | "2025-13-01"| "Formato de fecha inválido. Intente nuevamente."    |
    | "05/35/2025"| "Formato de fecha inválido. Intente nuevamente."    |
    | "fecha123"  | "Formato de fecha inválido. Intente nuevamente."    |
    | "2025-02-30"| "La fecha ingresada no existe. Corrija por favor."  |