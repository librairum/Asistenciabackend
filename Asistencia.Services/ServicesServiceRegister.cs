﻿
using Asistencia.Abstractions.IService;
using Microsoft.Extensions.DependencyInjection;
using Asistencia.Services.Usuario;
using Asistencia.Services.Autenticacion;
using Asistencia.Services.Anio;
using Asistencia.Services.Marcador;
using Asistencia.Services.Permisos;
using Asistencia.Services.Perfil;
using Asistencia.Services.Asistencia;
namespace Asistencia.Services
{
    public static class ServicesServiceRegister
    {
        public static IServiceCollection AddServiceServices(this IServiceCollection services)
        {
            services.AddScoped<IUsuarioService, UsuarioService>();
            services.AddScoped<IAutenticacionService, AutenticacionService>();
            services.AddScoped<IAnioService, AnioService>();
            services.AddScoped<IMarcadorService, MarcadorService>();
            services.AddScoped<IPermisosService, PermisosService>();
            services.AddScoped<IPerfilService, PerfilService>();
            services.AddScoped<IAsistenciaService, AsistenciaService>();
            //agregar otras clases servicio
            //services.AddScoped<>
            return services;
        }
    }
}
