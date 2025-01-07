using Asistencia.Abstractions.IApplication;
using Asistencia.Abstractions.IService;
using Asistencia.DTO.Asistencia;
using Asistencia.DTO.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Application.Asistencia
{
    
    public class AsistenciaApplication:IAsistenciaApplication
    {
        private IAsistenciaService _asistenciaServicio;
        public AsistenciaApplication(IAsistenciaService asistenciaServicio)
        {
            _asistenciaServicio = asistenciaServicio;
        }

        public async Task<ResultDTO<AsistenciaDetalleResponse>> TraeDetalle(string codigoempleado)
        {
            return await this._asistenciaServicio.TraeDetalle(codigoempleado);
        }

        public async Task<ResultDTO<AsistenciaResumidoResponse>> TraeResumen(string fechaInicio, string fechaFin, string codigoPlanilla)
        {
            return await this._asistenciaServicio.TraeResumen(fechaInicio, fechaFin, codigoPlanilla);
        }
    }
}
