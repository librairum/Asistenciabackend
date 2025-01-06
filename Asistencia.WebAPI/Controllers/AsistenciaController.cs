using Microsoft.AspNetCore.Mvc;

namespace Asistencia.WebAPI.Controllers
{
    public class AsistenciaController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
