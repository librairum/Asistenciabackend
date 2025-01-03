using Microsoft.Extensions.DependencyInjection;
using Asistencia.Abstractions.IApplication;
using Asistencia.Application.Usuario;

namespace Asistencia.Application
{
    public static class ApplicationServiceRegister
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
           services.AddScoped<IUsuarioApplication, UsuarioApplication>();
            //agregar mas clases de aplicacion
            return services;
        }
    }
}
