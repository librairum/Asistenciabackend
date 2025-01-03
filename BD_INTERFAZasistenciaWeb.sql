--collation:latin1_general_CI_AS
USE [InterfazAsistenciaWeb]
GO
/****** Object:  Table [dbo].[MarcadoresEquivalencias]    Script Date: 31/12/2024 10:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarcadoresEquivalencias](
	[MarcadorCorpacCod] [varchar](20) NOT NULL,
	[MarcadorSupremaCod] [nvarchar](255) NOT NULL,
	[MarcadorDesc] [varchar](250) NULL,
	[MarcadorEstado] [char](1) NULL,
 CONSTRAINT [pk_MarcadoresEquivalencias] PRIMARY KEY CLUSTERED 
(
	[MarcadorCorpacCod] ASC,
	[MarcadorSupremaCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pla61Anios]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pla61Anios](
	[Pla61Codigo] [char](4) NOT NULL,
	[Pla61Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Pla61Anios] PRIMARY KEY CLUSTERED 
(
	[Pla61Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pla62Meses]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pla62Meses](
	[Pla62Codigo] [char](2) NOT NULL,
	[Pla62Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Pla62Meses] PRIMARY KEY CLUSTERED 
(
	[Pla62Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegCuenta]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegCuenta](
	[CuentaCod] [varchar](10) NOT NULL,
	[CuentaDesc] [varchar](100) NULL,
	[CuentaCorreo] [varchar](50) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegEmpresa]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[RepLegalNombres] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segformulario]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmenu]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmenuxperfil]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmodulo]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmodulo](
	[Codigo] [char](2) NOT NULL,
	[Nombre] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segperfil]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segperfil](
	[codigo] [varchar](20) NOT NULL,
	[nombre] [varchar](20) NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_segperfil] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Segusuario]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegUsuarioEmpresa]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegUsuarioEmpresa](
	[CuentaCod] [varchar](10) NOT NULL,
	[EmpresaCod] [varchar](5) NOT NULL,
	[UsuarioCod] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorCorpacCod], [MarcadorSupremaCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'1818', N'543620862', N'CENTRAL', N'A')
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorCorpacCod], [MarcadorSupremaCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'1819', N'543620863', N'SEDE FLAGRANCIA', N'A')
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorCorpacCod], [MarcadorSupremaCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'1820', N'543620861', N'CHIPE', N'A')
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorCorpacCod], [MarcadorSupremaCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'1822', N'543738402', N'SEDE ALMACEN', N'A')
GO
INSERT [dbo].[MarcadoresEquivalencias] ([MarcadorCorpacCod], [MarcadorSupremaCod], [MarcadorDesc], [MarcadorEstado]) VALUES (N'1825', N'543738401', N'SEDE TEST', N'A')
GO
INSERT [dbo].[Pla61Anios] ([Pla61Codigo], [Pla61Descripcion]) VALUES (N'2024', N'2024')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'01', N'ENERO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'02', N'FEBRERO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'03', N'MARZO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'04', N'ABRIL')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'05', N'MAYO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'06', N'JUNIO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'07', N'JULIO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'08', N'AGOSTO')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'09', N'SETIEMBRE')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'10', N'OCTUBRE')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'11', N'NOVIEMBRE')
GO
INSERT [dbo].[Pla62Meses] ([Pla62Codigo], [Pla62Descripcion]) VALUES (N'12', N'DICIEMBRE')
GO
INSERT [dbo].[SegCuenta] ([CuentaCod], [CuentaDesc], [CuentaCorreo], [Contrasena]) VALUES (N'0000001', N'marcadorsuprema@gmail.com', N'marcadorsuprema@gmail.com', N'admin$1')
GO
INSERT [dbo].[SegCuenta] ([CuentaCod], [CuentaDesc], [CuentaCorreo], [Contrasena]) VALUES (N'0000002', N'', N'', N'')
GO
INSERT [dbo].[SegEmpresa] ([EmpresaCod], [RazonSocial], [RUC], [Direccion], [RepLegalDocTip], [RepLegalDocNro], [RepLegalApePaterno], [RepLegalApeMaterno], [RepLegalNombres]) VALUES (N'00001', N'empresa prueba', N'20987654327', N'xxxx', N'01', N'10876534', N'r', N'atanacio', N'a')
GO
INSERT [dbo].[SegEmpresa] ([EmpresaCod], [RazonSocial], [RUC], [Direccion], [RepLegalDocTip], [RepLegalDocNro], [RepLegalApePaterno], [RepLegalApeMaterno], [RepLegalNombres]) VALUES (N'00002', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0001', N'frmImportaAutomatico', N'importa automatico', N'01')
GO
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0002', N'frmRegistraBiometrico', N'mantenimiento de equipo', N'01')
GO
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0003', N'frmMantenimientoUsuario', N'Configura permiso de usuario', N'01')
GO
INSERT [dbo].[segformulario] ([codigo], [nombre], [descripcion], [codmodulo]) VALUES (N'0004', N'frmRegistraAnio', N'Mantenimiento de año', N'01')
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0001', N'Integracion', N'01', N'00', N'00', N'', N'', N'', N'01')
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0002', N'consulta de marcaciones', N'01', N'01', N'00', N'', N'0001', N'', N'01')
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0003', N'Registrar equipo', N'01', N'02', N'00', N'', N'0002', N'', N'01')
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0004', N'Mantenimiento de usuario', N'01', N'03', N'00', N'', N'0003', N'', N'01')
GO
INSERT [dbo].[segmenu] ([codigo], [etiqueta], [nivel1], [nivel2], [nivel3], [comando], [codigoFormulario], [nombreIcono], [codmodulo]) VALUES (N'0005', N'Mantenimiento de año', N'01', N'04', N'00', N'', N'0004', N'', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0001', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0001', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0002', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0002', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0003', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0003', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0004', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'03', N'0005', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segmenuxperfil] ([codigoPerfil], [codigoMenu], [opcxmenu], [codmodulo]) VALUES (N'04', N'0005', N'111111111111111111111111111111', N'01')
GO
INSERT [dbo].[segperfil] ([codigo], [nombre], [descripcion]) VALUES (N'03', N'Administrador', N'Perfil Administrador')
GO
INSERT [dbo].[segperfil] ([codigo], [nombre], [descripcion]) VALUES (N'04', N'Estándar', N'Perfil Estándar')
GO
INSERT [dbo].[Segusuario] ([Codigo], [CuentaCod], [NombreUsuario], [ClaveUsuario], [CodigoPerfil]) VALUES (N'admin', N'0000001', N'Administrador Cliente', N'admin', N'03')
GO
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'admin')
GO
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'ivan')
GO
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'naval')
GO
INSERT [dbo].[SegUsuarioEmpresa] ([CuentaCod], [EmpresaCod], [UsuarioCod]) VALUES (N'0000001', N'00001', N'test')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_SegCuenta]    Script Date: 31/12/2024 10:27:19 ******/
ALTER TABLE [dbo].[SegCuenta] ADD  CONSTRAINT [PK_SegCuenta] PRIMARY KEY NONCLUSTERED 
(
	[CuentaCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_CuentaCorreo]    Script Date: 31/12/2024 10:27:19 ******/
ALTER TABLE [dbo].[SegCuenta] ADD  CONSTRAINT [AK_CuentaCorreo] UNIQUE NONCLUSTERED 
(
	[CuentaCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_SegEmpresa]    Script Date: 31/12/2024 10:27:19 ******/
ALTER TABLE [dbo].[SegEmpresa] ADD  CONSTRAINT [PK_SegEmpresa] PRIMARY KEY NONCLUSTERED 
(
	[EmpresaCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_segmodulo]    Script Date: 31/12/2024 10:27:19 ******/
ALTER TABLE [dbo].[segmodulo] ADD  CONSTRAINT [PK_segmodulo] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_SegUsuarioEmpresa]    Script Date: 31/12/2024 10:27:19 ******/
ALTER TABLE [dbo].[SegUsuarioEmpresa] ADD  CONSTRAINT [PK_SegUsuarioEmpresa] PRIMARY KEY NONCLUSTERED 
(
	[CuentaCod] ASC,
	[EmpresaCod] ASC,
	[UsuarioCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Anio]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Marcadores]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Del_Marcadores]          
@MarcadorCorpacCod  varchar(20),          
@MarcadorSupremaCod nvarchar(255),        
@flag int output,          
@mensaje varchar(200) output          
          
as          
Begin Transaction          
 delete from MarcadoresEquivalencias           
 where MarcadorCorpacCod = @MarcadorCorpacCod          
 and MarcadorSupremaCod = @MarcadorSupremaCod        
          
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Del_Usuario]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Del_Usuario]      
@codigo varchar(20),      
@cuentacod varchar(10),      
@mensaje varchar(200) output,      
@flag int output     
as      
Begin      
      
      
Begin transaction      
      
      
Delete from Segusuario      
where codigo = @codigo and Cuentacod = @cuentacod      
  
delete from SegUsuarioEmpresa  
where CuentaCod = @cuentacod  
and EmpresaCod = '00001'  
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Anio]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Marcadores]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Ins_Marcadores]          
@MarcadorCorpacCod varchar(20),          
@MarcadorSupremaCod nvarchar(255),          
@MarcadorDesc varchar(250),          
@MarcadorEstado char(1),          
@flag int output,          
@mensaje varchar(200) output          
as          
Begin transaction          
    
  SET @MarcadorEstado = 'A'  
insert into MarcadoresEquivalencias values(@MarcadorCorpacCod, @MarcadorSupremaCod,           
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Ins_Usuario]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Anio]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Spu_Int_Trae_Anio]    
  as    
  Begin
  select * from Pla61Anios     
  order by  Pla61Codigo desc  

  End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_trae_GrupoUsuario]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Spu_Int_trae_GrupoUsuario]  
  as  
  begin  
 select USRGRUID as Id , nm as nombre from bdac.dbo.T_USRGR  
 --where PARENTUSRGRUID = 1  
  end   
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Marcadores]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Marcadores]          
as
Begin
select marcadorSuprema.id as MarcadorSupremaCod           
  ,marcadorSuprema.name as MarcadorSupremaDesc           
  ,marcadorSuprema.ip_address as MarcadorSupremaIp           
  ,marcadorInterfaz.MarcadorCorpacCod            
  , marcadorInterfaz.MarcadorDesc           
  ,marcadorInterfaz.MarcadorEstado        
  , (case       
  when marcadorInterfaz.MarcadorEstado  = 'A' then 'Activo'       
  when marcadorInterfaz.MarcadorEstado  = 'I' then 'Inactivo'      
  else   '' end) as MarcadorEstadoDesc        
  
  from BDTA.dbo.device marcadorSuprema   
 left join dbo.MarcadoresEquivalencias marcadorInterfaz          
on marcadorSuprema.id = marcadorInterfaz.MarcadorSupremaCod  
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_MarcadoresCorpac]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Trae_MarcadoresCorpac]      
as      
begin  
select MarcadorCorpacCod as  MarcadorCodCorpac,  MarcadorDesc as MarcadorDescCorpac, '' as MarcadorDescCortaCorpac,  
'' as MarcadorEstadoCorpac  
from dbo.MarcadoresEquivalencias    
  
--select coditm as MarcadorCodCorpac, desitml as MarcadorDescCorpac,     
--desitmc as MarcadorDescCortaCorpac,    
--estado as  MarcadorEstadoCorpac         
--from SIGP_Corpac.dbo.[as_tabgral]    
--where codtab = 'ASTMA'    
  
end  
  
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_MarcadoresSuprema]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Trae_MarcadoresSuprema]  
as  
begin  
Select DEVID as  MarcadorSupremaCod ,   
  NM as MarcadorSupremaDesc  
  from BDAC.dbo.T_DEV  
  
end  
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Perfiles]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Spu_Int_Trae_Perfiles]  
as  
begin  
select codigo as Id, nombre as descripcion  from segperfil  
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Sedes]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Trae_Sedes]  
as  
begin  
 select DEVGRUID as id,NM as nombre from bdac.dbo.T_DEVGR  
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Trae_Usuarios]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Traer_AsistenciaGeneral]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Spu_Int_Traer_AsistenciaGeneral]        
(         
@tipobusqueda char(2),                    
@textobusqueda varchar(100),                   
@fechainicio varchar(10),         
@fechafin varchar(10) ,        
@xmlGrupoDispositivo xml,        
@xmlDispositivo xml,        
@xmlGrupoTrabajador xml        
)                    
as                    
 begin            
       
       
  -- cargar el filtro de busqueda por varios parametros  SedeGrupo(MultiSeleccion), Biometricos (multiseleccion), TrabajadorGrupo(MultiSeleccion)        
     DECLARE @tmp_Dispositivo TABLE  (codigo varCHAR(30))                                     
    If @xmlDispositivo.exist('//tbl')=1 -- Verificar que el XML tenga data                                                                    
     Begin                                                                    
    DECLARE @HANDLEDISPOSITVO INT                                                                             
    EXEC SP_XML_PREPAREDOCUMENT  @HANDLEDISPOSITVO OUTPUT,@xmlDispositivo                                                                          
                                
    INSERT INTO @tmp_Dispositivo(codigo)        
                
    SELECT campo1 FROM OPENXML(@HANDLEDISPOSITVO, '/DataSet/tbl', 2)                                                                         
    WITH (campo1  varchar(30) )                                                                      
    End           
    --select * from @tmp_Dispositivo      
        
   --lectura de sedegrupo        
     --select * from bdac.dbo.T_USRGR where PARENTUSRGRUID = 1        
        
     DECLARE @tmp_GrupoDispositivo TABLE  (codigo int)                                     
    --INSERT INTO @tmp_GrupoDispositivo(codigo)                                 
    --   select DEVGRUID from BDAC.dbo.T_DEVGR          
    --   where DEVGRUID = 3           
         
    If @xmlGrupoDispositivo.exist('//tbl')=1 -- Verificar que el XML tenga data                                                                    
    Begin                                                                    
     DECLARE @HANDLESEDE INT                                                                             
     EXEC SP_XML_PREPAREDOCUMENT  @HANDLESEDE OUTPUT,@xmlGrupoDispositivo            
                                                                                                          
    INSERT INTO @tmp_GrupoDispositivo(codigo)                                 
    SELECT convert(int,campo1) FROM OPENXML(@HANDLESEDE, '/DataSet/tbl', 2)                                                                         
    WITH (campo1  varchar(30) )                                                                      
     End           
          
     --select * from @tmp_GrupoDispositivo      
        
     DECLARE @tmp_GrupoTrabajador TABLE  (codigo int)                                     
        
     --INSERT INTO @tmp_GrupoUsuario(codigo)                                                                       
     --  select USRGRUID from BDAC.dbo.T_USRGR         
     --  where USRGRUID = 1      
    If @xmlGrupoTrabajador.exist('//tbl')=1 -- Verificar que el XML tenga data                                                                    
     Begin                                                                    
    DECLARE @HANDLETRABAJADOR INT                                                                             
    EXEC SP_XML_PREPAREDOCUMENT  @HANDLETRABAJADOR OUTPUT,@xmlGrupoTrabajador                                                                                           
    INSERT INTO @tmp_GrupoTrabajador(codigo)                                                        
    SELECT convert(int, campo1) FROM OPENXML(@HANDLETRABAJADOR, '/DataSet/tbl', 2)                                                                         
    WITH (campo1  varchar(30) )                                                                          End          
     --select * from @tmp_GrupoUsuario             
      
  if @tipobusqueda = '00'                    
  -- cargar por periodo        , carga de informacion por defecto al abrir el formulario        
  begin                    
                
     select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion,         
   Convert(int,IdUsuario) as IdUsuario,        
   Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes            
   --Grupo dispositivo      
   ,IdGrupoDispositivo, NombreGrupoDispositivo            
      
   --Grupo Usuario      
   ,IdGrupoUsuario, NombreGrupoUsuario         
      
   --reloj cliente      
   ,me.MarcadorCorpacCod, me.MarcadorDesc        
   from VistaMarcacionesdeAsistencia  vma        
   left join MarcadoresEquivalencias  me        
   on  vma.IdEquipo = me.MarcadorSupremaCod                
   where Mes + Anio = @textobusqueda                
   order  by FechaHoraMarcacion desc           
         
  end              
  else  if @tipobusqueda = '01'      
  begin        
          
            
                      
          
    --Traer vista general      
    select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion,         
   Convert(int,IdUsuario) as IdUsuario,        
   Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes            
   ,IdGrupoDispositivo, NombreGrupoDispositivo,            
   IdGrupoUsuario, NombreGrupoUsuario         
   ,me.MarcadorCorpacCod, me.MarcadorDesc        
        
   from VistaMarcacionesdeAsistencia  vma        
   inner join MarcadoresEquivalencias  me        
   on  vma.IdEquipo = me.MarcadorSupremaCod        
        
   --grupo dispositivo    o grupo biometrico    
   left join @tmp_GrupoDispositivo tmpgd        
   on vma.IdGrupoDispositivo = tmpgd.codigo      
   --and (not exists (select 1 from @tmp_GrupoDispositivo) or vma.IdGrupoDispositivo = tmpgd.codigo)      
         
   --grupo usuario        
   left join @tmp_GrupoTrabajador tmpgu        
   on vma.IdGrupoUsuario = tmpgu.codigo        
   --and (not exists (select 1 from @tmp_GrupoUsuario) or vma.IdGrupoUsuario = tmpgu.codigo)       
      
   --dispostiivos seleccionados        
   left join @tmp_Dispositivo tmpdispositivo        
   on me.MarcadorCorpacCod =  tmpdispositivo.codigo        
   --and (not exists (select 1 from @tmp_Dispositivo) or me.MarcadorCorpacCod = tmpdispositivo.codigo)      
      
   where FechaHoraMarcacion >= Convert(datetime, @fechainicio , 121)                     
   and   FechaHoraMarcacion <=  Convert(datetime, @fechafin +  ' 23:59:59',121)          
       
   -- Condición para aplicar el filtro de dispositivos solo si la tabla tiene datos        
   and (not exists (select 1 from @tmp_GrupoDispositivo)     or vma.IdGrupoDispositivo = tmpgd.codigo)         
    
   -- Condición para aplicar el filtro de grupos de usuarios solo si la tabla tiene datos        
   and (not exists (select 1 from @tmp_GrupoTrabajador)     or vma.IdGrupoUsuario = tmpgu.codigo)         
       
   -- Condición para aplicar el filtro de dispositivos seleccionados solo si la tabla tiene datos        
    
   and (not exists (select 1 from @tmp_Dispositivo)     or me.MarcadorCorpacCod = tmpdispositivo.codigo)      
         
  end              
 --   else if @tipobusqueda = '02'      
 --Begin      
 ---- filtro tipo inner join para grupo dispositivo       
 --end      
 --else if @tipobusqueda = '03'      
      
         
        
 end 
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Traer_AsistenciaGeneralbk]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Procedure [dbo].[Spu_Int_Traer_AsistenciaGeneralbk]
(   
@tipobusqueda char(2),                
@textobusqueda varchar(100),               
@fechainicio varchar(10),  
@fechafin varchar(10) 
)
/* ESTE PROCEDIMIENTO PERMITE LA BUSQUEDA DE MARCACIONES POE MEDIO DE FILTRO 
 FILTRO DE PERIODO 
 FILTRO POR EL NOMBRE DE EMPLEADO
 FILTRO  NUMERO DOCUMENTO DE EMPLEADO
 FILTRO DE FECHA INICIO Y FECHA FIN*/
as                
 begin                
 if @tipobusqueda = '00'                
 -- cargar por periodo            
 begin                
            
  select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion, IdUsuario,                
    Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes                
 ,NombreGrupoDispositivo, NombreGrupoUsuario    
    from VistaMarcacionesdeAsistencia             
 where Mes + Anio = @textobusqueda            
    order  by FechaHoraMarcacion desc          
 end                
 else if @tipobusqueda = '01'                
 begin                
 --cargar por nombre de empleado            
  select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion, IdUsuario,                
      Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes               
   ,NombreGrupoDispositivo, NombreGrupoUsuario    
    from VistaMarcacionesdeAsistencia                
    where   Nombreusuario like  '%'+@textobusqueda +'%'                
    order  by FechaHoraMarcacion desc          
            
            
 end                
 else  if @tipobusqueda = '02'                
 Begin                
 --cargar por numero documento            
  select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion, IdUsuario,                
    Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes               
    ,NombreGrupoDispositivo, NombreGrupoUsuario    
 from VistaMarcacionesdeAsistencia                
    where Idusuario like @textobusqueda   + '%'            
    order  by FechaHoraMarcacion desc          
 End                
 else if @tipobusqueda = '03'                
 Begin                
             
            
 -- cargar por fecha inicio y fecha fin            
  select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion, IdUsuario,                
    Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia, Anio, Mes            
 ,NombreGrupoDispositivo, NombreGrupoUsuario    
    from VistaMarcacionesdeAsistencia     
    where FechaHoraMarcacion >= Convert(datetime, @fechainicio, 121)                 
    and   FechaHoraMarcacion <=  Convert(datetime, @fechafin,121)                
    order  by FechaHoraMarcacion desc          
            
 end                
                 
 end 
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Traer_AsistenciaGeneralMultiple]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Spu_Int_Traer_AsistenciaGeneralMultiple]    
(     
@tipobusqueda char(2),                
@textobusqueda varchar(100),               
@fechainicio varchar(10),     
@fechafin varchar(10) ,    
@xmlSedeGrupo xml,    
@xmlBiometrico xml,    
@xmlTrabajadorGrupo xml    
)                
as                
 begin                
  if @tipobusqueda = '00'                
  -- cargar por periodo        , carga de informacion por defecto al abrir el formulario    
  begin                
            
   select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion,     
    Convert(int,IdUsuario) as IdUsuario,    
    Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes        
    ,IdGrupoDispositivo, NombreGrupoDispositivo,        
    IdGrupoUsuario, NombreGrupoUsuario     
    ,me.MarcadorCorpacCod, me.MarcadorDesc    
    from VistaMarcacionesdeAsistencia  vma    
    left join MarcadoresEquivalencias  me    
    on  vma.IdEquipo = me.MarcadorSupremaCod            
    where Mes + Anio = @textobusqueda            
    order  by FechaHoraMarcacion desc          
  end          
  else    
  begin    
      
    -- cargar el filtro de busqueda por varios parametros  SedeGrupo(MultiSeleccion), Biometricos (multiseleccion), TrabajadorGrupo(MultiSeleccion)    
   DECLARE @tmp_Dispositivo TABLE  (codigo varCHAR(30))                                 
  
    
   DECLARE @tmp_GrupoDispositivo TABLE  (codigo int)                                 

     
    
   DECLARE @tmp_GrupoUsuario TABLE  (codigo int)                                 
    
  
  
     select IdEquipo, NombreEquipo, Fecha, Hora, FechaHoraMarcacion,     
    Convert(int,IdUsuario) as IdUsuario,    
    Nombreusuario, ClaveIndiceEvtAsistencia , NombreEvtAsistencia , Anio, Mes        
    ,IdGrupoDispositivo, NombreGrupoDispositivo,        
    IdGrupoUsuario, NombreGrupoUsuario     
    ,me.MarcadorCorpacCod, me.MarcadorDesc    
    
    from VistaMarcacionesdeAsistencia  vma    
    inner join MarcadoresEquivalencias  me    
    on  vma.IdEquipo = me.MarcadorSupremaCod    
    
 --   --grupo dispositivo    
    left join @tmp_GrupoDispositivo tmpgd    
    on vma.IdGrupoDispositivo = tmpgd.codigo    
   and (not exists (select 1 from @tmp_GrupoDispositivo) or vma.IdGrupoDispositivo = tmpgd.codigo)  
 --   --grupo usuario    
    left join @tmp_GrupoUsuario tmpgu    
    on vma.IdGrupoUsuario = tmpgu.codigo    
  and (not exists (select 1 from @tmp_GrupoUsuario) or vma.IdGrupoUsuario = tmpgu.codigo)   
 --   --dispostiivos seleccionados    
 --   inner join @tmp_Dispositivo tmpdispositivo    
 --   on me.MarcadorCorpacCod =  tmpdispositivo.codigo    
 --and (not exists (select 1 from @tmp_Dispositivo) or me.MarcadorCorpacCod = tmpdispositivo.codigo)  
  
    where FechaHoraMarcacion >= Convert(datetime, @fechainicio, 121)                 
    and   FechaHoraMarcacion <=  Convert(datetime, @fechafin,121)      
  
 --select Convert(datetime, @fechainicio, 121)      
 --select Convert(datetime, @fechafin,121)      
  end          
           
     
    
 end     
    
GO
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_Anio]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_MarcadorEstado]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Int_Upd_MarcadorEstado]              
@MarcadorCorpacCod varchar(20),              
@MarcadorSupremaCod nvarchar(255),              
@MarcadorEstado char(1),              
@flag int output,              
@mensaje varchar(200) output              
as              
begin transaction               
              
update MarcadoresEquivalencias                
set MarcadorEstado   = @MarcadorEstado              
where MarcadorCorpacCod =  @MarcadorCorpacCod              
and MarcadorSupremaCod = @MarcadorSupremaCod            
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
/****** Object:  StoredProcedure [dbo].[Spu_Int_Upd_Usuario]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Pla_Trae_Anios]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Spu_Pla_Trae_Anios]      
As      
Begin
	Select Pla61Codigo,Pla61Descripcion 
	from Pla61Anios order By Pla61Codigo Desc      
End
GO
/****** Object:  StoredProcedure [dbo].[Spu_Pla_Trae_Meses]    Script Date: 31/12/2024 10:27:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Spu_Pla_Trae_Periodo]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Spu_Pla_Trae_Periodo]      
as      
begin
select concat(Pla61Codigo,Pla62Codigo) as IdPeriodo, concat(Pla62Descripcion, ' ', pla61codigo)  as descripcion      
 from Pla62Meses meses cross join   Pla61Anios anio      
    
order by concat(Pla61Codigo,Pla62Codigo)  desc
end
GO
/****** Object:  StoredProcedure [dbo].[Spu_Seg_Trae_Autenticacion_Usuario]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Spu_Seg_Trae_Autenticacion_Usuario]                                             
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
            
            
 -- Amarra con empresa              
 Left Join segempresa emp              
 On usuxemp.EmpresaCod = emp.EmpresaCod               
 --- Condicion            
 where  usu.Codigo = @NombreUsuario                   
    And usu.ClaveUsuario = @ClaveUsuario                      
 And emp.EmpresaCod = @codigoEmpresa                      
end 
GO
/****** Object:  StoredProcedure [dbo].[Spu_Seg_Trae_menuxperfil]    Script Date: 31/12/2024 10:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[Spu_Seg_Trae_menuxperfil]        
@codigoPerfil int ,              
@cCodModulo char(2)                     
as                      
begin                      
select (m.nivel1 + m.nivel2 + m.nivel3) as CodigoFormulario,                       
 m.Etiqueta ,m.comando,f.nombre as nombreFormulario,                      
 m.nombreIcono, f.descripcion as DescripcionFormulario,       
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
