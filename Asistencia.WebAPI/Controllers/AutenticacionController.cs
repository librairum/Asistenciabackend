using Microsoft.AspNetCore.Mvc;
using Asistencia.DTO.Autenticacion;
using Asistencia.Abstractions.IApplication;

namespace Asistencia.WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AutenticacionController : Controller
    {
        private IAutenticacionApplication _authApplication;
        //public IActionResult Index()
        //{
        //    return View();
        //}
        public AutenticacionController(IAutenticacionApplication authAplicacion)
        {
            this._authApplication = authAplicacion;
        }

        [HttpGet]
        [Route("SpList")]
        public async Task<ActionResult> ObtenerUsuario(string nombreusuario, string claveusuario, string codigoempresa)
        {
            try
            {
                var result = await this._authApplication.SpAccesoUsuario(nombreusuario, claveusuario, codigoempresa);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

       

    }
}
