using Asistencia.Abstractions.IApplication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace Asistencia.WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AsistenciaController : Controller
    {

        private IAsistenciaApplication _asistenciApplicacion;
        public AsistenciaController(IAsistenciaApplication asistenciApplicacion)
        {
            _asistenciApplicacion = asistenciApplicacion;
        }
        
        [HttpGet]
        [Route("SpListDetalle")]
        public async Task<ActionResult> SpTraeDetalle(string codigoempleado)
        {
            try
            {
                var result = await this._asistenciApplicacion.TraeDetalle(codigoempleado);
                return Ok(result);
            }
            catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }



        [HttpGet]
        [Route("SpListResumen")]
        public async Task<ActionResult> SpTraeResumen(string fechainicio,string fechafin, string codigoplanilla)
        {
            try
            {
                var result = await this._asistenciApplicacion.TraeResumen(fechainicio, fechafin, codigoplanilla);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        
    }
}
