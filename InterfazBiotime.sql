USE [InterfazBiotime]
GO
/****** Object:  Table [dbo].[SegUsuarioEmpresa]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SegUsuarioEmpresa](
	[CuentaCod] [varchar](10) NOT NULL,
	[EmpresaCod] [varchar](5) NOT NULL,
	[UsuarioCod] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SegUsuarioEmpresa] PRIMARY KEY NONCLUSTERED 
(
	[CuentaCod] ASC,
	[EmpresaCod] ASC,
	[UsuarioCod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'admin')
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'pflores')
/****** Object:  Table [dbo].[Segusuario]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Segusuario](
	[Codigo] [varchar](20) NOT NULL,
	[CuentaCod] [varchar](10) NOT NULL,
	[NombreUsuario] [varchar](50) NULL,
	[ClaveUsuario] [varchar](100) NULL,
	[CodigoPerfil] [varchar](50) NULL,
 CONSTRAINT [PK_Segusuario] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[CuentaCod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Segusuario] ([Codigo], [CuentaCod], [NombreUsuario], [ClaveUsuario], [CodigoPerfil]) VALUES (N'admin', N'0000001', N'Administrador Cliente', N'admin', N'03')
INSERT [dbo].[Segusuario] ([Codigo], [CuentaCod], [NombreUsuario], [ClaveUsuario], [CodigoPerfil]) VALUES (N'pflores', N'0000001', N'usuario estandar', N'pflores', N'03')
/****** Object:  Table [dbo].[segperfil]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[segperfil](
	[codigo] [varchar](20) NOT NULL,
	[nombre] [varchar](20) NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_segperfil] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[segperfil] ([codigo], [nombre], [descripcion]) VALUES (N'03', N'Administrador', N'Perfil Administrador')
INSERT [dbo].[segperfil] ([codigo], [nombre], [descripcion]) VALUES (N'04', N'Estándar', N'Perfil Estándar')
/****** Object:  Table [dbo].[segmodulo]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[segmodulo](
	[Codigo] [char](2) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_segmodulo] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[segmenuxperfil]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[segmenuxperfil](
	[codigoPerfil] [varchar](20) NOT NULL,
	[codigoMenu] [varchar](20) NOT NULL,
	[opcxmenu] [varchar](100) NULL,
	[codmodulo] [varchar](2) NOT NULL,
 CONSTRAINT [PK__segmenux__F19C57C846E78A0C] PRIMARY KEY CLUSTERED 
(
	[codigoMenu] ASC,
	[codigoPerfil] ASC,
	[codmodulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0001', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0001', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0002', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0002', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0003', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0003', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0004', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0005', N'111111111111111111111111111111', N'01')
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0006', N'111111111111111111111111111111', N'01')
/****** Object:  Table [dbo].[segmenu]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[segmenu](
	[codigo] [varchar](20) NOT NULL,
	[etiqueta] [varchar](100) NULL,
	[nivel1] [char](2) NULL,
	[nivel2] [char](2) NULL,
	[nivel3] [char](2) NULL,
	[comando] [varchar](50) NULL,
	[codigoFormulario] [varchar](50) NULL,
	[nombreIcono] [varchar](30) NULL,
	[codmodulo] [varchar](2) NOT NULL,
 CONSTRAINT [PK__segmenu__1452D8144AB81AF0] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC,
	[codmodulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0001', N'Integracion', N'01', N'00', N'00', N'', N'', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0002', N'consulta de marcaciones', N'01', N'01', N'00', N'', N'0001', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0003', N'Registrar equipo', N'01', N'02', N'00', N'', N'0002', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0004', N'Seguridad', N'02', N'00', N'00', N'', N'', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0005', N'Mantenimiento de perfil', N'02', N'01', N'00', N'', N'0005', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0006', N'Mantenimiento de usuario', N'02', N'02', N'00', N'', N'0003', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0007', N'Asignar permiso por perfil', N'02', N'03', N'00', N'', N'0006', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0008', N'Utilitario', N'03', N'00', N'00', N'', N'', N'', N'01')
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0009', N'Mantenimiento de año', N'03', N'01', N'00', N'', N'0004', N'', N'01')
/****** Object:  Table [dbo].[segformulario]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[segformulario](
	[codigo] [varchar](4) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](100) NULL,
	[codmodulo] [char](2) NOT NULL,
 CONSTRAINT [PK_segformulario] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC,
	[codmodulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0001', N'frmImportaAutomatico', N'importa automatico', N'01')
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0002', N'frmRegistraBiometrico', N'mantenimiento de equipo', N'01')
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0003', N'frmMantenimientoUsuario', N'Configura permiso de usuario', N'01')
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0004', N'frmRegistraAnio', N'Mantenimiento de año', N'01')
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0005', N'frmMantenimientoPerfil', N'Mantenimiento de perfil', N'01')
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0006', N'frmAsignarPermisos', N'Asigna permisos por perfil', N'01')
/****** Object:  Table [dbo].[SegEmpresa]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SegEmpresa](
	[EmpresaCod] [varchar](5) NOT NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[RepLegalDocTip] [varchar](2) NULL,
	[RepLegalDocNro] [varchar](20) NULL,
	[RepLegalApePaterno] [varchar](30) NULL,
	[RepLegalApeMaterno] [varchar](30) NULL,
	[RepLegalNombres] [varchar](50) NULL,
 CONSTRAINT [PK_SegEmpresa] PRIMARY KEY NONCLUSTERED 
(
	[EmpresaCod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SegEmpresa] ([EmpresaCod], [RazonSocial], [RUC], [Direccion], [RepLegalDocTip], [RepLegalDocNro], [RepLegalApePaterno], [RepLegalApeMaterno], [RepLegalNombres]) VALUES (N'00001', N'empresa prueba', N'20987654327', N'xxxx', N'01', N'10876534', N'r', N'atanacio', N'a')
INSERT [dbo].[SegEmpresa] ([EmpresaCod], [RazonSocial], [RUC], [Direccion], [RepLegalDocTip], [RepLegalDocNro], [RepLegalApePaterno], [RepLegalApeMaterno], [RepLegalNombres]) VALUES (N'00002', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[SegCuenta]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SegCuenta](
	[CuentaCod] [varchar](10) NOT NULL,
	[CuentaDesc] [varchar](100) NULL,
	[CuentaCorreo] [varchar](50) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SegCuenta] PRIMARY KEY NONCLUSTERED 
(
	[CuentaCod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_CuentaCorreo] UNIQUE NONCLUSTERED 
(
	[CuentaCorreo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SegCuenta] ([CuentaCod], [CuentaDesc], [CuentaCorreo], [Contrasena]) VALUES (N'0000001', N'marcadorsuprema@gmail.com', N'marcadorsuprema@gmail.com', N'admin$1')
INSERT [dbo].[SegCuenta] ([CuentaCod], [CuentaDesc], [CuentaCorreo], [Contrasena]) VALUES (N'0000002', N'', N'', N'')
/****** Object:  Table [dbo].[Pla62Meses]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pla62Meses](
	[Pla62Codigo] [char](2) NOT NULL,
	[Pla62Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Pla62Meses] PRIMARY KEY CLUSTERED 
(
	[Pla62Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'01', N'ENERO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'02', N'FEBRERO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'03', N'MARZO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'04', N'ABRIL')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'05', N'MAYO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'06', N'JUNIO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'07', N'JULIO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'08', N'AGOSTO')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'09', N'SETIEMBRE')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'10', N'OCTUBRE')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'11', N'NOVIEMBRE')
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'12', N'DICIEMBRE')
/****** Object:  Table [dbo].[Pla61Anios]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pla61Anios](
	[Pla61Codigo] [char](4) NOT NULL,
	[Pla61Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Pla61Anios] PRIMARY KEY CLUSTERED 
(
	[Pla61Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pla61Anios] ([Pla61Codigo], [Pla61Descripcion]) VALUES (N'2024', N'2024')
/****** Object:  Table [dbo].[MarcadoresEquivalencias]    Script Date: 01/06/2025 15:40:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarcadoresEquivalencias](
	[MarcadorClienteCod] [varchar](20) NOT NULL,
	[MarcadorProveedorCod] [nvarchar](255) NOT NULL,
	[MarcadorDesc] [varchar](250) NULL,
	[MarcadorEstado] [char](1) NULL,
 CONSTRAINT [pk_MarcadoresEquivalencias] PRIMARY KEY CLUSTERED 
(
	[MarcadorClienteCod] ASC,
	[MarcadorProveedorCod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorClienteCod], [MarcadorProveedorCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'002', N'7', N'BIOMETRICO ZONA B', N'A')
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_AsistenciaResumido]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Trae_AsistenciaResumido]
@fechaInicio varchar(10),
@fechaFin varchar(10),
@codigoPlanilla char(2)

as
begin

if isnull(@codigoPlanilla,'') <> ''
Begin
declare @tipoplanilla as int
set @tipoplanilla =  convert(int, @codigoplanilla)

select ROW_NUMBER() over (order by codigotrabajador asc) as Item,  CodigoTrabajador, Nombretrabajador, FechaInicio, FechaFin, CodigoPlanilla, NombrePlanilla, 
	Dias, Horas25, Horas60, Horas100
 from zkbiotime.dbo.VerAsistenciaResumida
 where  FechaInicio >= convert(datetime, @fechaInicio, 103)  
 and FechaInicio <= convert(datetime, @fechaFin, 103)  
 and CodigoPlanilla = @CodigoPlanilla 

End
else 
Begin

select ROW_NUMBER() over (order by codigotrabajador asc) as Item,  CodigoTrabajador, Nombretrabajador, FechaInicio, FechaFin, CodigoPlanilla, NombrePlanilla, 
	Dias, Horas25, Horas60, Horas100
 from zkbiotime.dbo.VerAsistenciaResumida
 where  FechaInicio >= convert(datetime, @fechaInicio, 103)  
 and FechaInicio <= convert(datetime, @fechaFin, 103)  

End



End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_AsistenciaDetalle]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_AsistenciaDetalle]
@codigoempleado varchar(10)
as
Begin
select ROW_NUMBER() over(order by Codigotrabajador asc) as Item  ,Codigotrabajador, 
   NombreTrabajador, FechaMarcacion, DiaNombre,HoraEntrada,
		HoraSalida,  Dias, Horas25, Horas35, Horas60, Horas100
 from zkbiotime.dbo.VerAsistenciaDetalle
where Codigotrabajador = @codigoempleado
order by FechaMarcacion asc

End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Seg_Trae_menuxperfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[Spu_Seg_Trae_menuxperfil]
@codigoPerfil varchar(2) ,                  
@cCodModulo char(2)                         
as                          
begin                          
select (m.nivel1 + m.nivel2 + m.nivel3) as CodigoFormulario,                           
 m.Etiqueta ,m.comando,
 isnull(f.nombre,'') as nombreFormulario,                          
 m.nombreIcono, 
 isnull(f.descripcion,'') as DescripcionFormulario,           
 p.codigo as  CodigoPerfil,          
 p.nombre as NomPerfil          
 from segmenu m                 
 -- menu x perfil                
 Left join segmenuxperfil  mp                  
 on  m.codigo = mp.codigoMenu             
 and  m.codmodulo = mp.codmodulo             
 -- Perfil                
 left join segperfil p                 
 on mp.codigoperfil =  p.codigo                 
 -- Formulario                
 left join segformulario f                           
 on  m.codigoFormulario = f.codigo             
     and  m.codmodulo = f.codmodulo            
                 
 --                
 where mp.codigoperfil =  @codigoPerfil                 
 and mp.codmodulo = @cCodModulo                    
 order by CodigoFormulario asc                      
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Seg_Trae_Autenticacion_Usuario]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE procedure [dbo].[Spu_Pla_Trae_Periodo]      
--as      
--begin
--select Pla61Codigo+' '+Pla62Codigo as IdPeriodo, 
--concat Pla62Descripcion + ' ' + pla61codigo   as descripcion      
-- from Pla62Meses meses cross join   Pla61Anios anio      
    
--order by concat(Pla61Codigo,Pla62Codigo)  desc
--end
--GO
--/****** Object:  StoredProcedure [dbo].[Spu_Seg_Trae_Autenticacion_Usuario]    Script Date: 06/01/2025 2:42:51 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE  PROCEDURE [dbo].[Spu_Seg_Trae_Autenticacion_Usuario]                                               
@NombreUsuario varchar(20),                                              
@ClaveUsuario varchar(100) ,                                    
@codigoEmpresa varchar(5)                                  
as                                              
begin                                               
                                     
Select usu.Codigo, usu.NombreUsuario, usu.ClaveUsuario, usu.CodigoPerfil,                  
     p.nombre as NomPerfil, emp.EmpresaCod, emp.RazonSocial as NomEmpresa ,            
     usuxemp.CuentaCod            
                       
 from Segusuario  usu                      
 --Amarra con perfil                
 left Join segperfil p                    
 On  usu.CodigoPerfil = p.codigo                    
               
 -- Amarre con usuario x empresa              
 Left Join SegUsuarioEmpresa usuxemp              
 On usuxemp.CuentaCod = usu.CuentaCod              
and usuxemp.UsuarioCod = usu.Codigo                            
              
 -- Amarra con empresa                
 Left Join segempresa emp                
 On usuxemp.EmpresaCod = emp.EmpresaCod                 
 --- Condicion              
 where  usu.Codigo = @NombreUsuario                     
    And usu.ClaveUsuario = @ClaveUsuario                        
 And emp.EmpresaCod = @codigoEmpresa                        
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Pla_Trae_Meses]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Spu_Pla_Trae_Meses]      
As      
begin
Select Pla62Codigo,Pla62Descripcion from pla62meses       
Order By Pla62Codigo      
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_Usuario]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Upd_Usuario]  
@codigo varchar(20),  
@cuentacod varchar(10),  
@claveUsuario  varchar(100),  
@codigoperfil varchar(50),  
@nombreusuario varchar(100),  
@mensaje varchar(200) out,  
@flag int out  
as  
Begin  
  
  
Begin transaction  
  
uPdate Segusuario  
set ClaveUsuario = @claveusuario,  
 CodigoPerfil = @codigoperfil,  
 NombreUsuario = @nombreusuario  
where codigo = @codigo and Cuentacod = @cuentacod  
  
if @@Error <> 0   
Begin  
 Set @mensaje = 'Error al momento de actualizar usuario'  
 Goto ManejaError  
End  
  
  
set @mensaje = 'Usuario actualizado'  
set @flag = 1  
Commit Transaction  
return 1  
  
ManejaError:  
set @flag = -1  
Rollback Transaction  
return -1  
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_Perfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Spu_Int_Upd_Perfil]
@codigo varchar(20),
@nombre varchar(20),
@descripcion varchar(100),
@flag int  output,
@mensaje varchar(200) output
as
Begin
Begin transaction


UPDATE segperfil 
SET NOMBRE = @nombre, descripcion = @descripcion
WHERE CODIGO = @codigo

IF @@ERROR <> 0 
BEGIN
	SET @mensaje = 'ERROR AL ACTUALIZAR'
	GOTO MANEJAERROR
END

set @mensaje = 'ACTUALIZACION EXITOSA'
set @flag = 1
Commit Transaction
return 1

MANEJAERROR:
set @flag  = -1
Rollback transaction

return -1
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_MarcadorEstado]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Upd_MarcadorEstado]                
@MarcadorClienteCod varchar(20),                
@MarcadorProveedorCod nvarchar(255),                
@MarcadorEstado char(1),                
@flag int output,                
@mensaje varchar(200) output                
as                
begin transaction                 
                
update MarcadoresEquivalencias                  
set MarcadorEstado   = @MarcadorEstado                
where MarcadorClienteCod =  @MarcadorClienteCod                
and MarcadorProveedorCod = @MarcadorProveedorCod              
if @@ERROR<> 0                 
begin                
 set @mensaje = 'ERROR AL ACTUALIZAR'                
 goto ManejaError                
End                
                
                
set @mensaje = 'ACTUALIZADO SATISFACTORIAMENTE'                
set @flag = 1                
Commit transaction                
return 1                
                
ManejaError:                
set @flag = -1                
Rollback transaction                 
return -1
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_Anio]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Upd_Anio]      
  @Pla61Codigo char(4),      
  @Pla61Descripcion varchar(50),      
  @mensaje varchar(100) output,      
  @flag int output      
      
  as      
  Begin transaction       
 --insert into Pla61Anios values(@Pla61Codigo, @Pla61Descripcion)      
 update Pla61Anios      
 set Pla61Descripcion = @Pla61Descripcion      
 where Pla61Codigo = @Pla61Codigo      
  if @@ERROR <> 0       
  Begin      
  set @mensaje = 'Fallo Actualizacion'      
  End      
        
  set @mensaje = 'Actualizacion exitosa'      
  set @flag = 1      
  Commit transaction      
  return 1      
        
  ManejaError:      
  set @flag = -1      
  Rollback transaction      
  return -1
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Usuarios]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Usuarios]  
as  
begin  
 select u.Codigo as Codigousuario,u.NombreUsuario as NombreUsuario, u.ClaveUsuario,   
 p.codigo as codigoperfil , p.nombre as NomPerfil   
 from Segusuario u inner join segperfil p  
 on u.CodigoPerfil = p.codigo  
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_TodoPermisosxPerfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Trae_TodoPermisosxPerfil]  
@codigoperfil char(2),  
@codmodulo char(2)  
as   
begin  
  
--trae menu asignado por usuario  
--declare @codigoperfil as char(2)  
----traer menu y perfiles  
--select   
----  
-- @codigoperfil =  usu.codigoperfil     
-- --, usu.Codigo, usu.nombreusuario  
--from Segusuario usu inner join segperfil per  
--on usu.CodigoPerfil = per.codigo  
--where usu.codigo = 'pflores'  
--select * from Segusuario  
  
--traer el menu asociado al usuario por su perfil  
select m.codigo, m.etiqueta , m.nivel1, m.nivel2, m.nivel3,  
(case when m.nivel2 = '00' then 'MENU' else 'SUBMENU' end) as TipoMenu ,   
 (case when nivel1 = '01' then 'INTEGRACION'   
  when  nivel1 = '02' then 'SEGURIDAD'  
  WHEN NIVEL1 = '03' THEN 'UTILITARIO' END)  as GrupoMenu,  
(case when isnull(mxp.codigoMenu, '') = ''  then 'N' else 'S' end) Habilitado  
  
from segmenu m    
 left join  segmenuxperfil mxp   
 on m.codigo = mxp.codigoMenu    
 and mxp.codigoPerfil = @codigoperfil  
order by (nivel1+nivel2+nivel3) asc  
  
  
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Perfiles]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Perfiles]    
as    
begin    
	select codigo , nombre , descripcion  from segperfil    
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_MarcadoresCliente]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_MarcadoresCliente]     
/*
el procedimiento debe leer de la tabla del cliente
los datos de los biometricos que tiene desde su sistema
*/   
as        
begin    
select '' as  MarcadorCodCliente,  
		'' as MarcadorDescCliente, 
		'' as MarcadorDescCortaCliente,    
'' as MarcadorEstadoCliente    
from dbo.MarcadoresEquivalencias      
-- consulta original del sistema de asistencia
--select coditm as MarcadorCodCorpac, desitml as MarcadorDescCorpac,       
--desitmc as MarcadorDescCortaCorpac,      
--estado as  MarcadorEstadoCorpac           
--from SIGP_Corpac.dbo.[as_tabgral]      
--where codtab = 'ASTMA'      
    
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Marcadores]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Marcadores]                
as      
Begin      
select   
   marcadorProveedor.id as MarcadorProveedorCod,   
   marcadorProveedor.alias as MarcadorProveedorDesc,   
   marcadorProveedor.ip_address as MarcadorProveedorIp ,   
   marcadorProveedor.real_ip                     
  , isnull(marcadorInterfaz.MarcadorClienteCod, '') as MarcadorClienteCod
  , isnull(marcadorInterfaz.MarcadorDesc,'') as MarcadorDesc 
  ,isnull(marcadorInterfaz.MarcadorEstado,'') as  MarcadorEstado              
  , (case             
  when marcadorInterfaz.MarcadorEstado  = 'A' then 'Activo'             
  when marcadorInterfaz.MarcadorEstado  = 'I' then 'Inactivo'            
  else   '' end) as MarcadorEstadoDesc              
        
  from zkbiotime.dbo.iclock_terminal marcadorProveedor  
    
          
 left join dbo.MarcadoresEquivalencias marcadorInterfaz                
on marcadorProveedor.id = convert(int,marcadorInterfaz.MarcadorProveedorCod)
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Anio]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Anio]      
  as      
  Begin  
  select Pla61Codigo,Pla61Descripcion    from Pla61Anios       
  order by  Pla61Codigo desc    
  
  End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Usuario]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Ins_Usuario]
@codigousuario varchar(20),
@cuentacod varchar(7),
@nombreusuario varchar(100),
@claveusuario varchar(200),
@codigoperfil varchar(2),
@empresacod varchar(5),
@flag int out,
@mensaje varchar(200) out
as
Begin
Begin transaction
--validar el registro de usuario
declare @cantidadfilas as int 
set @cantidadfilas= (select codigo from Segusuario where codigo = @codigousuario)
if @cantidadfilas >0
Begin
	set @mensaje = 'El nombre de usuario ya existe en la base de datos'
	Goto ManejaError 
End

insert into Segusuario values (@codigousuario, @cuentacod, @nombreusuario, @claveusuario, @codigoperfil)
--select * from SegUsuarioEmpresa
insert into SegUsuarioEmpresa values(@cuentacod, @empresacod, @codigousuario)

if @@Error<> 0 
Begin
	set @mensaje = 'Error al momento de crear usuario'
	Goto ManejaError
End

set @flag = 1
set @mensaje = 'Usuario creado satisfactoriamente'
Commit Transaction
return 1

ManejaError:
set @flag = -1
Rollback transaction
return -1

end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_PermisosxPerfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Ins_PermisosxPerfil]
@codmodulo char(2),
@codigoperfil char(2),
@xmlpermisos xml,
@flag int output,
@mensaje varchar(200) output
as
Begin
Begin transaction
declare @tblpermisos as table(
	codigomenu varchar(5)
)

	if @xmlpermisos.exist('//tbl') = 1
	  Begin                                                                          
		 DECLARE @HANDLESEDE INT                                                                                   
		 EXEC SP_XML_PREPAREDOCUMENT  @HANDLESEDE OUTPUT,@xmlpermisos                  
                                                                                                                
		INSERT INTO @tblpermisos(codigomenu)                                       
		SELECT codigomenu FROM OPENXML(@HANDLESEDE, '/DataSet/tbl', 2)                                                                               
		WITH (codigomenu  varchar(30) )                                                                            
     End  
	 --limpiar
	 delete from segmenuxperfil where codigoPerfil = @codigoperfil and codmodulo = @codmodulo
	 
	 --ingresar los datos
	 insert into segmenuxperfil (codigoPerfil, codigoMenu, opcxmenu, codmodulo)
	 select @codigoperfil, codigomenu, '111111111111111111111111111111', @codmodulo 
	 from @tblpermisos
	 IF @@ERROR <> 0 
	 begin
		SET @mensaje = 'Error al insertar permisos'
		goto ManejaError
	 end

set @mensaje = 'Insercion exitosa'
set @flag = 1
Commit transaction
return 1

ManejaError:
Rollback transaction
set @flag = -1
return -1
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Perfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Spu_Int_Ins_Perfil]
@codigo varchar(20),
@nombre varchar(20),
@descripcion varchar(100),
@flag int  output,
@mensaje varchar(200) output
as
Begin
Begin transaction

INSERT INTO segperfil VALUES(@codigo, @nombre, @descripcion)

IF @@ERROR <> 0 
BEGIN
	SET @mensaje = 'ERROR AL INSERTAR'
	GOTO MANEJAERROR
END

set @mensaje = 'INSERCION EXITOSA'
set @flag = 1
Commit Transaction
return 1

MANEJAERROR:
set @flag  = -1
Rollback transaction

return -1
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Marcadores]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Ins_Marcadores]            
@MarcadorClienteCod varchar(20),            
@MarcadorProveedorCod nvarchar(255),            
@MarcadorDesc varchar(250),            
@MarcadorEstado char(1),            
@flag int output,            
@mensaje varchar(200) output            
as            
Begin transaction            
      
  SET @MarcadorEstado = 'A'    
insert into MarcadoresEquivalencias values(@MarcadorClienteCod, @MarcadorProveedorCod,             
        @MarcadorDesc, @MarcadorEstado)            
            
 if @@ERROR <> 0             
 Begin            
 set @mensaje = 'ERROR AL GUARDAR'            
 Goto ManejaError            
 End            
            
            
 set @flag = 1            
 set @mensaje = 'GUARDADO SATISFACTORIAMENTE'            
Commit transaction            
return 1          
ManejaError:            
set @flag = -1            
Rollback transaction            
return -1
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Anio]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Ins_Anio]    
  @Pla61Codigo char(4),    
  @Pla61Descripcion varchar(50),    
  @mensaje varchar(100) output,    
  @flag int output    
    
  as    
  Begin transaction     
 insert into Pla61Anios values(@Pla61Codigo, @Pla61Descripcion)    
    
  if @@ERROR <> 0     
  Begin    
  set @mensaje = 'Fallo insercion'    
  End    
      
  set @mensaje = 'Insercion exitosa'    
  set @flag = 1    
  Commit transaction    
  return 1    
      
  ManejaError:    
  set @flag = -1    
  Rollback transaction    
  return -1
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Usuario]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Del_Usuario]        
@codigo varchar(20),        
@cuentacod varchar(10),    
@empresacod varchar(5),    
@mensaje varchar(200) output,        
@flag int output       
as        
Begin        
        
        
Begin transaction        
        
select * from Segusuario
Delete from Segusuario        
where codigo = @codigo and Cuentacod = @cuentacod        
    
delete from SegUsuarioEmpresa    
where CuentaCod = @cuentacod    
and EmpresaCod = @empresacod   
and UsuarioCod = @codigo    
if @@Error <> 0         
Begin        
 Set @mensaje = 'Error al momento de eliminar usuario'        
 Goto ManejaError        
End        
        
        
set @mensaje = 'Usuario eliminado'        
set @flag = 1        
Commit Transaction        
return 1        
        
ManejaError:        
set @flag = -1        
Rollback Transaction        
return -1        
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Perfil]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Spu_Int_Del_Perfil]
@codigo varchar(20),
@flag int  output,
@mensaje varchar(200) output
as
Begin
Begin transaction


delete segperfil
where codigo = @codigo

IF @@ERROR <> 0 
BEGIN
	SET @mensaje = 'ERROR AL ELIMINAR'
	GOTO MANEJAERROR
END

set @mensaje = 'ELIMINACION EXITOSA'
set @flag = 1
Commit Transaction
return 1

MANEJAERROR:
set @flag  = -1
Rollback transaction

return -1
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Marcadores]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Del_Marcadores]            
@MarcadorClienteCod  varchar(20),            
@MarcadorProveedorCod nvarchar(255),          
@flag int output,            
@mensaje varchar(200) output            
            
as            
Begin Transaction            
 delete from MarcadoresEquivalencias             
 where MarcadorClienteCod = @MarcadorClienteCod            
 and MarcadorProveedorCod = @MarcadorProveedorCod          
            
if @@ERROR <> 0             
begin            
 set @mensaje = 'ERROR AL ELIMINAR'            
 goto ManejaError            
end            
            
set @flag = 1            
set @mensaje = 'ELIMINADO SATISFACTORIAMENTE'            
Commit transaction            
return 1            
            
ManejaError:            
set @flag = -1            
Rollback transaction            
return -1
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Anio]    Script Date: 01/06/2025 15:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Del_Anio]      
  @Pla61Codigo char(4),      
  @mensaje varchar(100) output,      
  @flag int output      
      
  as      
  Begin transaction        
 delete from Pla61Anios      
 where Pla61Codigo = @Pla61Codigo      
  if @@ERROR <> 0       
  Begin      
  set @mensaje = 'Fallo Eliminacion'      
  End      
        
  set @mensaje = 'Eliminacion exitosa'      
  set @flag = 1      
  Commit transaction      
  return 1      
        
  ManejaError:      
  set @flag = -1      
  Rollback transaction      
  return -1
GO
