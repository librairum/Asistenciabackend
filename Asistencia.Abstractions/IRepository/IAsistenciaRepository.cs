﻿using Asistencia.DTO.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Asistencia.Abstractions.IRepository
{
    public interface IAsistenciaRepository
    {
        /*
         Spu_Int_Trae_AsistenciaResumido
Spu_Int_Trae_AsistenciaDetalle

         */
        public Task<ResultDTO<AsistenciaResumidoResponse>> TraeResumen();


    }
}
