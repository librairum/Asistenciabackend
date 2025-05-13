using Asistencia.Abstractions.IRepository;
using Asistencia.Abstractions.IService;
using Asistencia.DTO.Common;
using Asistencia.DTO.Horario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Services.Horario
{
    public class HorarioService : IHorarioService
    {

        private IHorarioRepository _repositorio; 
        public HorarioService(IHorarioRepository repositorio)
        {
            _repositorio = repositorio;
        }

        public async Task<ResultDTO<string>> SpActualiza(HorarioRequest entidad)
        {
            return await this._repositorio.SpActualiza(entidad);
        }

        public async Task<ResultDTO<string>> SpInserta(HorarioRequest entidad)
        {
            return await this._repositorio.SpInserta(entidad);
        }

        public async Task<ResultDTO<HorarioGeneralResponse>> SpTraeHorarios(string EmpresaCod)
        {
            return await this._repositorio.SpTraeHorarios(EmpresaCod);
        }

        public async Task<ResultDTO<HorarioResponse>> SpTraeHorarioDet(string EmpresaCod, string idpersonal, string dia)
        {
            return await this._repositorio.SpTraeHorarioDet(EmpresaCod, idpersonal, dia);
        }
    }
}
