using Asistencia.Abstractions.IApplication;
using Asistencia.DTO.Horario;
using Microsoft.AspNetCore.Mvc;

namespace Asistencia.WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HorarioController : Controller
    {
        private IHorarioApplication _application;
        public HorarioController(IHorarioApplication application)
        {
            _application = application;
        }

        [HttpPut]
        [Route("SpActualiza")]
        public async Task<ActionResult> SpActualiza(HorarioRequest entidad)
        {
            try {
                var result = await this._application.SpActualiza(entidad);
                return Ok(result);
            }catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("SpInserta")]
        public async Task<ActionResult> SpInserta(HorarioRequest entidad)
        {

            try {
                var result = await this._application.SpInserta(entidad);
                return Ok(result);
            }catch(Exception ex) {
                return BadRequest(ex.Message);
            }

        }

        [HttpGet]
        [Route("SpTrae")]
        public async Task<ActionResult> SpTrae(string EmpresaCod)
        {
            try {
                var result = await this._application.SpTraeHorarios(EmpresaCod);
                return Ok(result);
            }catch( Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


    }
}
