
using Asistencia.Abstractions.IService;
using Microsoft.Extensions.DependencyInjection;

namespace Asistencia.Services
{
    public static class ServicesServiceRegister
    {
        public static IServiceCollection AddServiceServices(this IServiceCollection services)
        {
            services.AddScoped<IUsuarioService, IUsuarioService>();
            //agregar otras clases servicio
            //services.AddScoped<>
            return services;
        }
    }
}
