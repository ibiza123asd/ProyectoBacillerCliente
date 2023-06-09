USE [PostaSalud]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 27/06/2023 22:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[idAgenda] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime2](7) NOT NULL,
	[idMedico] [int] NOT NULL,
	[Turno] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cita]    Script Date: 27/06/2023 22:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [int] NULL,
	[idMedico] [int] NULL,
	[Orden] [int] NULL,
	[costoCita] [float] NULL,
	[fechaHora] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 27/06/2023 22:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[nombreEspecialidad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 27/06/2023 22:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[NombreMedico] [varchar](50) NOT NULL,
	[Apellido_Pat] [varchar](59) NOT NULL,
	[Apellido_Mat] [varchar](50) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[idEspecialidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PACIENTE]    Script Date: 27/06/2023 22:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTE](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [varchar](8) NOT NULL,
	[Nombre] [varchar](25) NULL,
	[Apellido_Paterno] [varchar](50) NOT NULL,
	[Apellido_Materno] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[SeguroSIS] [bit] NOT NULL,
	[Contrasena] [varchar](50) NULL,
	[Correo] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agenda] ON 

INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (1, CAST(N'2023-05-28T08:30:00.0000000' AS DateTime2), 2, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (2, CAST(N'2023-05-28T09:00:00.0000000' AS DateTime2), 2, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (3, CAST(N'2023-05-28T09:30:00.0000000' AS DateTime2), 3, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (4, CAST(N'2023-05-28T10:00:00.0000000' AS DateTime2), 4, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (5, CAST(N'2023-05-28T10:30:00.0000000' AS DateTime2), 4, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (6, CAST(N'2023-05-28T11:00:00.0000000' AS DateTime2), 6, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (7, CAST(N'2023-05-28T11:30:00.0000000' AS DateTime2), 7, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (8, CAST(N'2023-05-28T12:00:00.0000000' AS DateTime2), 8, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (9, CAST(N'2023-05-28T12:30:00.0000000' AS DateTime2), 9, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (10, CAST(N'2023-05-28T13:00:00.0000000' AS DateTime2), 10, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (11, CAST(N'2023-05-28T13:30:00.0000000' AS DateTime2), 10, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (12, CAST(N'2023-05-28T14:00:00.0000000' AS DateTime2), 12, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (13, CAST(N'2023-05-28T14:30:00.0000000' AS DateTime2), 13, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (14, CAST(N'2023-05-28T15:00:00.0000000' AS DateTime2), 10, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (15, CAST(N'2023-05-28T15:30:00.0000000' AS DateTime2), 15, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (16, CAST(N'2023-05-28T16:00:00.0000000' AS DateTime2), 16, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (17, CAST(N'2023-05-28T16:30:00.0000000' AS DateTime2), 17, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (18, CAST(N'2023-05-28T17:00:00.0000000' AS DateTime2), 18, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (19, CAST(N'2023-05-28T17:30:00.0000000' AS DateTime2), 20, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (20, CAST(N'2023-05-28T18:00:00.0000000' AS DateTime2), 20, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (21, CAST(N'2023-05-28T18:30:00.0000000' AS DateTime2), 21, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (22, CAST(N'2023-05-28T19:00:00.0000000' AS DateTime2), 22, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (23, CAST(N'2021-05-28T08:42:41.9800000' AS DateTime2), 23, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (24, CAST(N'2023-09-30T19:08:00.0000000' AS DateTime2), 24, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (25, CAST(N'2023-08-26T18:21:00.0000000' AS DateTime2), 25, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (26, CAST(N'2023-10-16T16:13:00.0000000' AS DateTime2), 27, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (27, CAST(N'2023-05-10T19:26:10.0000000' AS DateTime2), 27, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (28, CAST(N'2023-12-28T05:30:00.0000000' AS DateTime2), 28, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (29, CAST(N'2023-04-16T14:15:00.0000000' AS DateTime2), 29, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (30, CAST(N'2023-01-07T18:02:00.0000000' AS DateTime2), 30, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (31, CAST(N'2023-06-16T20:14:03.1200000' AS DateTime2), 31, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (32, CAST(N'2023-06-18T17:15:00.0000000' AS DateTime2), 36, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (33, CAST(N'2023-06-24T19:15:00.0000000' AS DateTime2), 37, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (34, CAST(N'2023-06-24T19:15:00.0000000' AS DateTime2), 37, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (35, CAST(N'2023-06-24T19:15:00.0000000' AS DateTime2), 37, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (36, CAST(N'2023-06-24T19:15:00.0000000' AS DateTime2), 37, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (37, CAST(N'2023-06-22T19:15:00.0000000' AS DateTime2), 35, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (38, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 6, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (39, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 5, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (40, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 2, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (41, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 37, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (42, CAST(N'2023-06-24T08:30:00.0000000' AS DateTime2), 34, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (43, CAST(N'2023-06-18T17:15:00.0000000' AS DateTime2), 2, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (44, CAST(N'2023-06-25T08:30:00.0000000' AS DateTime2), 32, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (45, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 34, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (46, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 33, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (47, CAST(N'2023-06-24T08:30:00.0000000' AS DateTime2), 32, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (1002, CAST(N'2023-06-26T08:30:00.0000000' AS DateTime2), 32, N'Mañana')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (1003, CAST(N'2023-06-26T16:30:00.0000000' AS DateTime2), 12, N'Tarde')
INSERT [dbo].[Agenda] ([idAgenda], [FechaHora], [idMedico], [Turno]) VALUES (2002, CAST(N'2023-05-28T14:30:00.0000000' AS DateTime2), 12, N'Tarde')
SET IDENTITY_INSERT [dbo].[Agenda] OFF
GO
SET IDENTITY_INSERT [dbo].[cita] ON 

INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (30, 1, 33, 1, 0, CAST(N'2023-06-28T08:00:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (31, 1, 25, 1, 0, CAST(N'2023-08-26T18:21:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (32, 1, 34, 1, 0, CAST(N'2023-06-24T08:30:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (33, 1, 2, 1, 0, CAST(N'2023-05-28T08:30:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (34, 4007, 9, 1, 0, CAST(N'2023-05-28T12:30:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (35, 4007, 13, 1, 0, CAST(N'2023-05-28T14:30:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (1002, 4007, 12, 1, 0, CAST(N'2023-06-26T16:30:00.000' AS DateTime))
INSERT [dbo].[cita] ([idCita], [idPaciente], [idMedico], [Orden], [costoCita], [fechaHora]) VALUES (1003, 1, 12, 1, 0, CAST(N'2023-05-28T14:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[cita] OFF
GO
SET IDENTITY_INSERT [dbo].[Especialidad] ON 

INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1, N'Medicina General')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (2, N'Psicología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (3, N'Pediatría')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (4, N'Cirugia General')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (5, N'Traumatología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (6, N'Urología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (7, N'Reumatología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (8, N'Obstetricia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (9, N'Oftalmología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (10, N'Dermatología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (11, N'Odontología')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (12, N'Psiquiatría')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1002, N'Medicina Sexual')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1003, N'Estomatologia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1004, N'Cardiologia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1005, N'Otorrinolaringologia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1006, N'Podologia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1007, N'Laringologia')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1008, N'Endocrinologia')
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Medico] ON 

INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (2, N'Fritz Frost', N'Hicks', N'Tate', N'(255) 226-5462', 7)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (3, N'Keaton Perez', N'Downs', N'Geoffrey', N'(157) 834-9508', 8)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (4, N'Amanda Wade', N'Mooney', N'Curran', N'(384) 718-5379', 8)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (5, N'Blythe Bailey', N'Le', N'Darius', N'(894) 824-5345', 7)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (6, N'Kiayada Torres', N'Espinoza', N'Eric', N'(852) 718-1253', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (7, N'Norman Leon', N'Clayton', N'Lewis', N'(236) 208-0332', 8)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (8, N'Allen Tucker', N'Rice', N'Hamilton', N'(143) 487-6664', 1)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (9, N'Knox Mullins', N'Foster', N'Todd', N'(643) 175-1570', 10)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (10, N'Grant Herring', N'Yang', N'Upton', N'(859) 452-2435', 1)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (11, N'Georgia Maldonado', N'Bartlett', N'Chester', N'(395) 762-1309', 8)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (12, N'Griffin House', N'Griffith', N'Nero', N'(444) 469-3142', 2)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (13, N'Neil Dixon', N'Garza', N'Timon', N'(862) 433-1053', 10)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (14, N'Drake Ayala', N'Holcomb', N'Coby', N'(362) 603-8467', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (15, N'Lacy Camacho', N'Carrillo', N'Nigel', N'(265) 245-2658', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (16, N'Lani Pena', N'Huffman', N'Garrison', N'(612) 945-5841', 4)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (17, N'Travis Fitzpatrick', N'Merritt', N'Wang', N'(727) 619-8401', 4)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (18, N'Lunea Howe', N'Randolph', N'Melvin', N'(616) 663-4134', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (19, N'Wilma Hurst', N'Burton', N'Patrick', N'(402) 543-5727', 7)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (20, N'Vielka Burns', N'Luna', N'Fritz', N'(485) 514-0051', 4)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (21, N'Dominic Carpenter', N'Benson', N'Hashim', N'(222) 456-4911', 8)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (22, N'Rogan Herman', N'Rush', N'Josiah', N'(256) 293-3274', 5)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (23, N'Kirsten Stanley', N'Fletcher', N'Caleb', N'(582) 126-7719', 4)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (24, N'Kirsten Hartman', N'Franklin', N'Jonah', N'(866) 714-0417', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (25, N'Brian Castro', N'Horne', N'Darius', N'(802) 188-2360', 5)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (26, N'Todd Diaz', N'Bartlett', N'Upton', N'(740) 567-0327', 4)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (27, N'Knox Beasley', N'Cannon', N'Kane', N'(667) 211-7078', 11)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (28, N'Leigh Page', N'Knapp', N'Vladimir', N'(711) 702-3782', 11)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (29, N'Moana Robertson', N'Colon', N'Dante', N'(688) 533-2706', 5)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (30, N'Chadwick O''donnell', N'Potts', N'Griffin', N'(610) 768-3209', 6)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (31, N'Nelle Jenkins', N'Koch', N'Cody', N'(638) 350-5527', 9)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (32, N'Raul', N'Coronado', N'Carbal', N'987111654', 2)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (33, N'Adriana', N'Pauca', N'Pauca', N'987485111', 3)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (34, N'Natali', N'Rojas', N'Rojas', N'984512677', 1006)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (35, N'Carlona', N'Meneses', N'Aguia', N'9874856321', 1008)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (36, N'Carlona', N'Meneses', N'Aguia', N'9874856321', 1008)
INSERT [dbo].[Medico] ([idMedico], [NombreMedico], [Apellido_Pat], [Apellido_Mat], [telefono], [idEspecialidad]) VALUES (37, N'Mauro', N'Medina', N'Menses', N'987654556', 1003)
SET IDENTITY_INSERT [dbo].[Medico] OFF
GO
SET IDENTITY_INSERT [dbo].[PACIENTE] ON 

INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (1, N'40429532', N'Kane Valentine', N'Silas', N'Erin', 52, 1, N'7777', N'Kane@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (2, N'62377619', N'Jared Booker', N'Zachary', N'Carol', 30, 1, N'12345', N'Jared@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (3, N'12736035', N'Tobias Mccarthy', N'Zachery', N'Allegra', 51, 1, N'12345', N'Tobias@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (4, N'71259249', N'Denise Chapman', N'Tanner', N'Danielle', 1, 1, N'12345', N'Denise@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (5, N'71105097', N'Colette Bush', N'Porter', N'Lois', 55, 1, N'12345', N'Colette@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (6, N'44124341', N'Roth Castillo', N'Porter', N'Mariam', 10, 1, N'12345', N'Roth@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7, N'81678630', N'Lance Underwood', N'Zephania', N'Alexa', 7, 1, N'12345', N'Lance@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (8, N'21662174', N'Vaughan Burgess', N'Kibo', N'Yeo', 56, 1, N'12345', N'Vaughan@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (9, N'94223750', N'Jin Poole', N'Chadwick', N'Desiree', 31, 1, N'12345', N'Jin@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (10, N'19311477', N'Penelope Russell', N'Eagan', N'Christen', 42, 1, N'12345', N'Penelope@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (11, N'45622657', N'Trevor Pugh', N'Ferdinand', N'Jolene', 8, 1, N'12345', N'Trevor@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (12, N'53565512', N'Jacob Stein', N'Gavin', N'Deborah', 35, 1, N'12345', N'Jacob@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (13, N'42526514', N'Quinn Cash', N'Avram', N'Ebony', 18, 1, N'12345', N'Quinn@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (14, N'67210080', N'Forrest Woods', N'Callum', N'Denise', 4, 1, N'12345', N'Forrest@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (15, N'55052605', N'Philip Jones', N'Conan', N'Alexis', 41, 1, N'12345', N'Philip@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (16, N'15787202', N'Boris Stein', N'Carl', N'Mallory', 43, 1, N'12345', N'Boris@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (17, N'61996605', N'Pearl Emerson', N'Marvin', N'Lillith', 1, 1, N'12345', N'Pearl@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (18, N'90095074', N'Vernon Galloway', N'Dominic', N'Amena', 57, 1, N'12345', N'Vernon@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (19, N'31375260', N'Quin Brock', N'Declan', N'Alice', 46, 1, N'12345', N'Quin@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (20, N'39036462', N'Cally Branch', N'Ciaran', N'Alexandra', 28, 1, N'12345', N'Cally@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (21, N'59475311', N'Kellie Ellis', N'Anthony', N'Jescie', 35, 1, N'12345', N'Kellie@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (22, N'20688895', N'Ainsley Wilson', N'Carlos', N'Zoe', 5, 1, N'12345', N'Ainsley@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (23, N'88087439', N'Hop Giles', N'Chester', N'Beatrice', 27, 1, N'12345', N'Hop@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (24, N'41107782', N'Eagan Flynn', N'Ivan', N'Marny', 40, 1, N'12345', N'Eagan@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (25, N'35614475', N'Kai Wright', N'Sean', N'Grace', 19, 1, N'12345', N'Kai@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (26, N'91311529', N'Sebastian Dickerson', N'Lester', N'Josephine', 65, 1, N'12345', N'Sebastian@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (27, N'65941074', N'Linda Jimenez', N'Geoffrey', N'Giselle', 50, 1, N'12345', N'Linda@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (28, N'21585145', N'Ira Mason', N'Travis', N'Bell', 51, 1, N'12345', N'Ira@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (29, N'68439547', N'Freya Warren', N'Nathan', N'Ima', 9, 1, N'12345', N'Freya@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (30, N'62472157', N'Hamilton Meyer', N'Jackson', N'Hillary', 49, 1, N'12345', N'Hamilton@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (31, N'42593441', N'Charles Eaton', N'Kirk', N'Veronica', 54, 1, N'12345', N'Charles@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (32, N'75460115', N'Ezekiel Wise', N'Thor', N'Grace', 4, 1, N'12345', N'Ezekiel@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (33, N'39668361', N'Gray Marquez', N'Porter', N'Kelly', 36, 1, N'12345', N'Gray@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (34, N'56624561', N'Orli Ewing', N'Bert', N'Karyn', 16, 1, N'12345', N'Orli@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (35, N'49905134', N'Adele Rodriguez', N'Felix', N'Olympia', 6, 1, N'12345', N'Adele@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (36, N'39967679', N'Keaton Berry', N'Bevis', N'Kevyn', 8, 1, N'12345', N'Keaton@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (37, N'23439136', N'Ali Mendez', N'Lance', N'Serena', 14, 1, N'12345', N'Ali@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (38, N'73379034', N'Richard Frank', N'Matthew', N'Daryl', 23, 1, N'12345', N'Richard@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (39, N'38904407', N'Edward Hartman', N'Cain', N'Rebecca', 2, 1, N'12345', N'Edward@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (40, N'73136530', N'Aquila Kramer', N'Samson', N'Maya', 23, 1, N'12345', N'Aquila@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (41, N'48169529', N'Ciara Goff', N'Timothy', N'Heidi', 28, 1, N'12345', N'Ciara@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (42, N'87274604', N'Armando Lewis', N'Dalton', N'Paula', 14, 1, N'12345', N'Armando@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (43, N'58301159', N'Fuller Young', N'Cadman', N'Mariko', 48, 1, N'12345', N'Fuller@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (44, N'76211607', N'Gannon Ball', N'Joshua', N'Audra', 59, 1, N'12345', N'Gannon@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (45, N'16428275', N'Seth Griffin', N'Christian', N'Jana', 63, 1, N'12345', N'Seth@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (46, N'21337650', N'Signe Short', N'Bert', N'Janna', 4, 1, N'12345', N'Signe@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (47, N'14266454', N'Cara Mathews', N'Deacon', N'Adrienne', 14, 1, N'12345', N'Cara@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (48, N'35204474', N'George Mcintyre', N'Tanek', N'Nell', 11, 1, N'12345', N'George@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (49, N'45044362', N'Signe Lancaster', N'Donovan', N'Lucy', 52, 1, N'12345', N'Signe@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (50, N'79137880', N'Doris Frazier', N'Armand', N'Hanna', 28, 1, N'12345', N'Doris@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (4007, N'75922455', N'Brandon', N'Lee', N'Pantaleon', 23, 1, N'12345', N'garuda@gmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (5004, N'654878', N'Alura', N'Latam', N'Prado', 20, 1, N'654845456', NULL)
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (5006, N'88888888', N'Remigio', N'Lopez', N'Davila', 34, 1, N'deadmau123AS', NULL)
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7004, N'999', N'Liz', N'Del Valle', N'Crispian', 24, 0, N'omega123', NULL)
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7005, N'856', N'Arquimedes', N'Bastio', N'Efende', 45, 0, N'latuya123', N'arqui@gmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7006, N'6663245', N'Natalia', N'Del Carmen', N'Hinostroza', 23, 0, N'alfa123', N'nati_29@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7007, N'6455151', N'Antonella', N'Del Carpio', N'Guzman', 48, 0, N'asdasdasd', N'anto_23@hotmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (7008, N'15452626', N'Carlos', N'Manto', N'Mantilla', 12, 0, N'deadmrtre', N'manti@gmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (8004, N'7777', N'Logan', N'Vander', N'Mewin', 23, 0, N'9999', N'logan@gmail.com')
INSERT [dbo].[PACIENTE] ([idPaciente], [DNI], [Nombre], [Apellido_Paterno], [Apellido_Materno], [edad], [SeguroSIS], [Contrasena], [Correo]) VALUES (9004, N'654654', N'Almendra', N'Vallez', N'Del Carpio', 45, 0, N'123456', N'lodashad@gmail.com')
SET IDENTITY_INSERT [dbo].[PACIENTE] OFF
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_idMedico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_idMedico]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
CREATE TRIGGER [dbo].[trg_ValidarCitas]
ON [dbo].[cita]
AFTER INSERT
AS
BEGIN
    DECLARE @idMedico INT, @fechaActual DATE, @citasCount INT, @maxOrden INT;

    -- Obtener el médico y la fecha actual para la validación
    SELECT @idMedico = idMedico, @fechaActual = CONVERT(DATE, fechaHora)
    FROM inserted;

    -- Contar las citas del médico en la fecha actual
    SELECT @citasCount = COUNT(*)
    FROM Cita
    WHERE idMedico = @idMedico AND CONVERT(DATE, fechaHora) = @fechaActual;

    -- Obtener el máximo valor actual del campo "Orden" para el médico y la fecha actual
    SELECT @maxOrden = ISNULL(MAX(Orden), 0)
    FROM Cita
    WHERE idMedico = @idMedico AND CONVERT(DATE, fechaHora) = @fechaActual;

    -- Incrementar el valor del campo "Orden" para el nuevo registro
    WITH CTE AS (
        SELECT idCita, ROW_NUMBER() OVER (ORDER BY idCita) AS RowNum
        FROM inserted
    )
    UPDATE Cita
    SET Orden = @maxOrden + RowNum
    FROM Cita INNER JOIN CTE ON Cita.idCita = CTE.idCita;

    -- Validar el límite de 10 citas por día para el mismo médico
    IF @citasCount > 10
    BEGIN
        RAISERROR('Se ha excedido el límite de citas por día para este médico.', 16, 1);
        ROLLBACK TRANSACTION;
    END;

    -- Validar si hay más de una cita en la misma hora para el mismo médico
    IF EXISTS (
        SELECT 1 FROM Cita
        WHERE idMedico = @idMedico
        AND CAST(fechaHora AS DATE) = @fechaActual
        GROUP BY fechaHora
        HAVING COUNT(*) > 1
    )
    BEGIN
        RAISERROR('No se puede insertar más de una cita en la misma hora para este médico.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;
GO
ALTER TABLE [dbo].[cita] ENABLE TRIGGER [trg_ValidarCitas]
GO
