using Asistencia.Abstractions.IApplication;
using Asistencia.DTO.MotivoHorario;
using Microsoft.AspNetCore.Mvc;

namespace Asistencia.WebAPI.Controllers
{
    public class MotivoHorarioController : Controller
    {
        private IMotivoHorarioApplication _application;

        public MotivoHorarioController(IMotivoHorarioApplication application)
        {
            _application = application;
        }

        [HttpPut]
        [Route("SpActualiza")]
        public async Task<ActionResult> SpActualiza(MotivoHorarioRequest entidad)
        {
            try
            {
                var result = await this._application.SpActualiza(entidad);
                return Ok(result);
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("SpInserta")]
        public async Task<ActionResult> SpInserta(MotivoHorarioRequest entidad)
        {
            try {
                var result = await this._application.SpInserta(entidad);
                return Ok(result);
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet]
        [Route("SpTrae")]
        public async Task<ActionResult> SpTraeMotivosHorario()
        {
            try
            {
                var result = await this._application.SpTraeHorarios();
                return Ok(result);
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        //public IActionResult Index()
        //{
        //    return View();
        //}
    }
}
