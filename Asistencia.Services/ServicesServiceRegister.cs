
using Asistencia.Abstractions.IService;
using Microsoft.Extensions.DependencyInjection;
using Asistencia.Services.Usuario;
namespace Asistencia.Services
{
    public static class ServicesServiceRegister
    {
        public static IServiceCollection AddServiceServices(this IServiceCollection services)
        {
            services.AddScoped<IUsuarioService, UsuarioService>();
            //agregar otras clases servicio
            //services.AddScoped<>
            return services;
        }
    }
}
