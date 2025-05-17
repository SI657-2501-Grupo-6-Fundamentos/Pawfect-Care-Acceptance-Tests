Feature: US13: Búsqueda de dueño de mascota
  Como médico veterinario,
  Deseo poder buscar citas de clientes agendados por su nombre y DNI para poder ubicarlos rápidamente

  Escenario: Búsqueda por nombre y DNI válidos
    Dado que el médico veterinario está en la sección de búsqueda de citas
    Cuando ingresa el nombre completo y el DNI de un cliente que tiene citas registradas
    Entonces el sistema debe mostrar todas las citas asociadas a ese cliente

  Examples:
    | nombre             | dni        | citas encontrada #1                           | cita encontrada #2                            |
    | Juan Pérez         | 43245678   | Cita con Dr. Pérez a las 10:00 AM para Rocky  | Cita con Dr. Pérez a las 11:00 AM para Rocky  |
    | María González     | 72367891   | Cita con Dra. Gómez a las 3:00 PM para Canela | Cita con Dra. Gómez a las 4:00 PM para Canela |
    | Carlos Rodríguez   | 72334956   | Cita con Dr. Pérez a las 2:00 PM para Luna   | Cita con Dr. Pérez a las 3:00 PM para Luna     |

  Escenario: Búsqueda sin resultados
    Dado que el médico veterinario desea buscar citas por nombre y DNI
    Cuando ingresa un nombre "<nombre>" y un DNI "<dni>" que no corresponde a ningún cliente con citas registradas
    Entonces el sistema debe mostrar un mensaje indicando que no se encontraron citas para ese cliente

  Examples:
    | nombre         | dni        | mensaje                             |
    | Ana Martínez   | 99999999   | No se encontraron citas para el cliente. |
    | Pedro Gómez    | 00000000   | No se encontraron citas para el cliente. |
    | Laura Jiménez  | 12312312   | No se encontraron citas para el cliente. |

  Escenario: Campos incompletos o inválidos
    Dado que el médico veterinario intenta realizar una búsqueda
    Cuando deja el campo nombre como "<nombre>" y el campo DNI como "<dni>" vacíos
    Entonces el sistema debe mostrar un mensaje de validación solicitando que complete correctamente los campos

  Examples:
    | nombre  | dni       | mensaje_esperado                     |
    | ""      | 12345678  |  # nombre vacío                      |
    | Juan    | ""        |  # dni vacío                         |
    | ""      | ""        |  # nombre y dni vacíos               |
    | Juan    | abcde123  |  # dni con formato inválido          |