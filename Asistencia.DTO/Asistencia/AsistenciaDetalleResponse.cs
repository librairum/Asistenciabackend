using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.DTO.Asistencia
{
    public class AsistenciaDetalleResponse
    {
        /*
         Item  ,Codigotrabajador,   
           , FechaMarcacion, ,,  
          ,  , , , ,   
         */
        public int Item { get;set; }
        public DateTime FechaMarcacion { get;set; }
        public string Codigotrabajador { get; set; }
        public string NombreTrabajador { get; set; }

            public string DiaNombre { get; set; }
            public string HoraEntrada { get; set; }
            public string HoraSalida { get; set; }
            public int Dias { get; set; }
            public string Horas25 { get; set; }
            public string Horas35 { get; set; }
            public string Horas60 { get; set; }
            public string Horas100 { get; set; }
    }
}
