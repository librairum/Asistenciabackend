using Asistencia.Abstractions.IRepository;
using Asistencia.DTO.Asistencia;
using Asistencia.DTO.Common;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Repository.Asistencia
{
    public class AsistenciaRepository : IAsistenciaRepository
    {
        private string _connectionString = "";
        public AsistenciaRepository(IConfiguration configuracion)
        {
            this._connectionString = configuracion.GetConnectionString("coneixon");
        }
        public async Task<ResultDTO<AsistenciaDetalleResponse>> TraeDetalle(string codigoempleado)
        {
            ResultDTO<AsistenciaDetalleResponse> res = new ResultDTO<AsistenciaDetalleResponse>();
            List<AsistenciaDetalleResponse> lista = new List<AsistenciaDetalleResponse>();
            try
            {
                SqlConnection cn = new SqlConnection(_connectionString);
                DynamicParameters parametros = new DynamicParameters();
                parametros.Add("@codigoempleado", codigoempleado);
                lista = (List<AsistenciaDetalleResponse>)await cn.QueryAsync<AsistenciaDetalleResponse>("Spu_Int_Trae_AsistenciaDetalle",
                    parametros, commandType : CommandType.StoredProcedure);
                res.IsSuccess = lista.Count > 0 ? true : false;
                res.Message = lista.Count > 0 ? "Informacion encotnrada" : "No se neucentra informacion";
                res.Data  = lista.ToList();
            }
            catch (Exception ex) {
                res.IsSuccess = false;
                res.MessageException = ex.Message;
            }
            return res;
        }

        public async Task<ResultDTO<AsistenciaResumidoResponse>> TraeResumen(string fechaInicio, string fechaFin, string codigoPlanilla)
        {
            ResultDTO<AsistenciaResumidoResponse> res = new ResultDTO<AsistenciaResumidoResponse>();
            List<AsistenciaResumidoResponse> lista = new List<AsistenciaResumidoResponse>();
            try
            {
                SqlConnection cn = new SqlConnection(_connectionString);
                DynamicParameters parametros = new DynamicParameters();
                parametros.Add("@fechaInicio", fechaInicio);
                parametros.Add("@fechaFin", fechaFin);
                parametros.Add("@codigoPlanilla", codigoPlanilla);

                lista = (List<AsistenciaResumidoResponse>)await cn.QueryAsync<AsistenciaResumidoResponse>("Spu_Int_Trae_AsistenciaResumido",
                    parametros, commandType: CommandType.StoredProcedure);
                res.IsSuccess = lista.Count > 0 ? true : false;
                res.Message = lista.Count > 0 ? "Informacion encotnrada" : "No se neucentra informacion";
                res.Data = lista.ToList();
            }
            catch (Exception ex)
            {
                res.IsSuccess = false;
                res.MessageException = ex.Message;
            }
            return res;
        }
    }
}
