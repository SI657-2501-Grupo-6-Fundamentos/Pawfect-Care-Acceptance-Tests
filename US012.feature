Feature: Edición de Citas Veterinarias
  Como médico veterinario,
  Deseo editar las citas para hacer cambios en la fecha o estado cuando sea necesario

  Escenario: El médico veterinario edita la fecha de una cita
    Dado que el médico veterinario está en la página de gestión de citas
    Cuando selecciona una <cita> y cambia su <fecha> u <hora>
    Entonces el sistema debe actualizar la <cita> y enviar una notificación al usuario afectado indicando el cambio

  Examples:
    | cita_id | fecha       | hora  | nueva_fecha | nueva_hora  | notificación                                     |
    | 123     | 2025-05-20  | 10:00 | 2025-05-23  | 17:00       | Cita reprogramada para el 20 de mayo a las 10:00 |
    | 456     | 2025-05-21  | 14:30 | 2025-05-27  | 16:30       | Cita reprogramada para el 21 de mayo a las 14:30 |