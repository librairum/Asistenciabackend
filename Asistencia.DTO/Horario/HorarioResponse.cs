using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.DTO.Horario
{
    public class HorarioResponse
    {
            public  string EmpresaCod { get; set; }
            public string idpersonal { get; set; }
            public string dia { get; set; }
            public string motivo { get; set; }
            public string horaingreso { get; set; }
            public string horasalida { get; set; }


    }
}
