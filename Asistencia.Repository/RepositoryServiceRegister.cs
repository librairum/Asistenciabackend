using Asistencia.Repository.Usuario;
using Asistencia.Abstractions.IRepository;
using Microsoft.Extensions.DependencyInjection;

namespace Asistencia.Repository
{
    public static class RepositoryServiceRegister
    {
        public static IServiceCollection AddRepositoryServices(this IServiceCollection services)
        {
            services.AddScoped<IUsuarioRepository, UsuarioRepository>();
            //agregar otras lineas de services segun se crear mas clase reporsitory 
            return services;
        }
    }
}
