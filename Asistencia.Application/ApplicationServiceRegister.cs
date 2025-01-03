using Microsoft.Extensions.DependencyInjection;
using Asistencia.Abstractions.IApplication;


namespace Asistencia.Application
{
    public static class ApplicationServiceRegister
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
            services.AddScoped<IUsuarioApplication, IUsuarioApplication>();
            //agregar mas clases de aplicacion
            return services;
        }
    }
}
