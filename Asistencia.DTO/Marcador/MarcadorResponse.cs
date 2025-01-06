using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.DTO.Marcador
{

    public class MarcadorResponse
    {
        /*
         Spu_Int_Trae_Marcadores
         */
        public string   MarcadorSupremaCod { get; set; }
        public string MarcadorSupremaDesc { get; set; }
        public string MarcadorSupremaIp { get; set; }
        public string MarcadorCorpacCod { get; set; }
        public string MarcadorDesc { get; set; }
        public string  MarcadorEstado { get; set; }
        public string MarcadorEstadoDesc { get; set; }

    }
}
