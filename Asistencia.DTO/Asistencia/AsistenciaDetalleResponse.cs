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
        public string Codigotrabajador { get; set; }
        public string NombreTrabajador { get; set; }
            public string DiaNombre { get; set; }
            public DateTime HoraEntrada { get; set; }
            public DateTime HoraSalida { get; set; }
            public int Dias { get; set; }
            public int Horas25 { get; set; }
            public int Horas35 { get; set; }
            public int Horas60 { get; set; }
            public int Horas100 { get; set; }
    }
}
