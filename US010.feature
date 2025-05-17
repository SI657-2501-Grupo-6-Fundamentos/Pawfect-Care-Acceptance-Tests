Feature: US10: Cancelación de Citas
  Como dueño de mascota,
  Quiero cancelar citas agendadas en caso de que no pueda asistir

  Escenario: El dueño de mascota necesita cancelar una cita previamente agendada
  Dado que el dueño de mascota "<dueño>" ha reservado una cita con ID "<cita_id>" para la mascota "<mascota>"
  Cuando haga clic en "Cancelar Cita" en su historial de citas
  Entonces la cita con ID "<cita_id>" será eliminada y se enviará una notificación de cancelación al dueño "<dueño>"
  
  Examples:
    | dueño        | cita_id | mascota   | Eliminación confirmada  |  mensaje                   |
    | Juan Pérez   | 1001    | Rocky     | Sí                      |  Cita cancelada con éxito  |
    | María López  | 1023    | Canela    | No                      |  Cita cancelada con éxito  |
    | Carlos Díaz  | 1105    | Luna      | Sí                      |  Cita cancelada con éxito  |