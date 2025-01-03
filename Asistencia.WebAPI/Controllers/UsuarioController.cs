using Microsoft.AspNetCore.Mvc;
using Asistencia.DTO.Usuario;
using Asistencia.Abstractions.IApplication;

namespace Asistencia.WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UsuarioController : Controller
    {
        private IUsuarioApplication _usuarioAplicacion;
        public UsuarioController(IUsuarioApplication usuarioAplicacion)
        {
            this._usuarioAplicacion = usuarioAplicacion;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpGet]
        [Route("SpList")]
        public async Task<ActionResult> ObtenerLIsta()
        {
            try {
                var result = await this._usuarioAplicacion.SpListaUsuaurio();
                return Ok(result);
            }catch(Exception ex){
                return BadRequest(ex.Message);
            }


        }

        



    }
}
