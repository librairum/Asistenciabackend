using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.DTO.Asistencia
{
    public class AsistenciaResumidoResponse
    {
        public int Item { get; set; }
        public string CodigoTrabajador { get; set; }
        public string Nombretrabajador { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public string CodigoPlanilla { get; set; }
        public string NombrePlanilla { get; set; }
        public int Dias { get; set; }
        public int Horas25 { get; set; }
        public int Horas60 { get; set; }
        public int Horas100 { get; set; }


    }
}
