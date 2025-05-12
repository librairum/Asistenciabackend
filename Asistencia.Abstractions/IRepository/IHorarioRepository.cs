using Asistencia.DTO.Common;
using Asistencia.DTO.Horario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Abstractions.IRepository
{
    public interface IHorarioRepository
    {
        public Task<ResultDTO<HorarioGeneralResponse>> SpTraeHorarios();
        public Task<ResultDTO<string>> SpInserta(HorarioRequest entidad);
        public Task<ResultDTO<string>> SpActualiza(HorarioRequest entidad);
    }
}
