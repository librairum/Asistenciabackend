﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.DTO.Permisos
{
    public class PermisosxPerfilResponse
    {
        //Lectura de permisos que se encuentra activo segunel perfil seleccionado
        public string? CodigoFormulario { get; set; }
        public string? Etiqueta { get; set; }
        public string? comando { get; set; }
        public string nombreFormulario { get; set; }
        public string nombreIcono { get; set; }
        public string DescripcionFormulario { get; set; }
        public string CodigoPerfil { get; set; }
        public string NomPerfil { get; set; }
    }
}
