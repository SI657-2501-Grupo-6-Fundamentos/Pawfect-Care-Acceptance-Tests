Feature: Agendamiento de Citas
  Como dueño,
  Quiero agendar citas para que mi mascota reciba atención veterinaria a tiempo

  Escenario: El dueño necesita agendar una cita
    Dado que el dueño "<dueño>" necesita una consulta veterinaria
    Cuando accede a la opción de "Agendar Cita" y selecciona la fecha "<fecha>", hora "<hora>" y tipo de servicio "<servicio>"
    Entonces la cita será agendada correctamente y recibirá una confirmación

  Examples:
    | dueño       | fecha       | hora  | servicio          | mensaje                      |
    | Ana Martínez| 2025-06-01  | 10:00 | Consulta General  | Cita agendada con éxito      |
    | Luis Gómez  | 2025-06-02  | 15:30 | Vacunación        | Cita agendada con éxito      |
    | Carla Ruiz  | 2025-06-03  | 09:00 | Control de peso   | Cita agendada con éxito      |