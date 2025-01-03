using Microsoft.AspNetCore.Mvc;
using Asistencia.DTO.Usuario;
using Asistencia.Abstractions.IApplication;
namespace Asistencia.WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UsuarioController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        [HttpGet]
        [Route("SpList")]
        //public async Task<ActionResult>
        

    }
}
