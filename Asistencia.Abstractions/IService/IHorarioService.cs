using Asistencia.DTO.Common;
using Asistencia.DTO.Horario;
using System;
using System.Collections.Generic;
using System.Diagnostics.Tracing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Abstractions.IService
{
    public interface IHorarioService
    {
        public Task<ResultDTO<HorarioGeneralResponse>> SpTraeHorarios(string EmpresaCod);
        public Task<ResultDTO<HorarioResponse>> SpTraeHorarioDet(string EmpresaCod, string idpersonal, string dia);
        public Task<ResultDTO<string>> SpInserta(HorarioRequest entidad);
        public Task<ResultDTO<string>> SpActualiza(HorarioRequest entidad);

        
    }
}
