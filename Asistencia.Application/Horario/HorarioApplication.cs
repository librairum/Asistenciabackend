using Asistencia.Abstractions.IApplication;
using Asistencia.Abstractions.IService;
using Asistencia.DTO.Common;
using Asistencia.DTO.Horario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Application.Horario
{
    public class HorarioApplication : IHorarioApplication
    {
        private IHorarioService _service;

        public HorarioApplication(IHorarioService service)
        {
            _service = service;
        }

        public async Task<ResultDTO<string>> SpActualiza(HorarioRequest entidad)
        {
            return await this._service.SpActualiza(entidad);
        }

        public async Task<ResultDTO<string>> SpInserta(HorarioRequest entidad)
        {
            return await this._service.SpInserta(entidad);
        }

        public async Task<ResultDTO<HorarioGeneralResponse>> SpTraeHorarios(string EmpresaCod)
        {
            return await this._service.SpTraeHorarios(EmpresaCod);
        }
    }
}
