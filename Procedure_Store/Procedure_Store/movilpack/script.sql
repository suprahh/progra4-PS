USE [master]
GO
/****** Object:  Database [movilpack]    Script Date: 21/06/2017 21:02:22 ******/
CREATE DATABASE [movilpack]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'movilpack', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.DBCARLOS\MSSQL\DATA\movilpack.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'movilpack_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.DBCARLOS\MSSQL\DATA\movilpack_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [movilpack] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [movilpack].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [movilpack] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [movilpack] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [movilpack] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [movilpack] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [movilpack] SET ARITHABORT OFF 
GO
ALTER DATABASE [movilpack] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [movilpack] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [movilpack] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [movilpack] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [movilpack] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [movilpack] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [movilpack] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [movilpack] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [movilpack] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [movilpack] SET  ENABLE_BROKER 
GO
ALTER DATABASE [movilpack] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [movilpack] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [movilpack] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [movilpack] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [movilpack] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [movilpack] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [movilpack] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [movilpack] SET RECOVERY FULL 
GO
ALTER DATABASE [movilpack] SET  MULTI_USER 
GO
ALTER DATABASE [movilpack] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [movilpack] SET DB_CHAINING OFF 
GO
ALTER DATABASE [movilpack] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [movilpack] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [movilpack] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [movilpack] SET QUERY_STORE = OFF
GO
USE [movilpack]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [movilpack]
GO
/****** Object:  Schema [m2ss]    Script Date: 21/06/2017 21:02:23 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Schema [movilpack]    Script Date: 21/06/2017 21:02:23 ******/
CREATE SCHEMA [movilpack]
GO
/****** Object:  Table [movilpack].[camion]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [movilpack].[camion](
	[id_camion] [int] IDENTITY(6,1) NOT NULL,
	[patente] [nvarchar](8) NOT NULL,
	[marca] [nvarchar](30) NOT NULL,
	[modelo] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_camion_id_camion] PRIMARY KEY CLUSTERED 
(
	[id_camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [movilpack].[chofer]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [movilpack].[chofer](
	[id_chofer] [int] IDENTITY(16,1) NOT NULL,
	[nombre] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_chofer_id_chofer] PRIMARY KEY CLUSTERED 
(
	[id_chofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [movilpack].[recorrido]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [movilpack].[recorrido](
	[id_recorrido] [int] IDENTITY(11,1) NOT NULL,
	[kilometos] [int] NOT NULL,
	[lugar] [nvarchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[id_camion] [int] NOT NULL,
	[id_chofer] [int] NOT NULL,
 CONSTRAINT [PK_recorrido_id_recorrido] PRIMARY KEY CLUSTERED 
(
	[id_recorrido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [movilpack].[camion] ON 

INSERT [movilpack].[camion] ([id_camion], [patente], [marca], [modelo]) VALUES (1, N'HT-MN-36', N'Mercedes-Benz', N'B455')
INSERT [movilpack].[camion] ([id_camion], [patente], [marca], [modelo]) VALUES (2, N'LO-UY-47', N'VOLVO', N'V900')
INSERT [movilpack].[camion] ([id_camion], [patente], [marca], [modelo]) VALUES (3, N'FJ-KU-99', N'MAN', N'S700')
INSERT [movilpack].[camion] ([id_camion], [patente], [marca], [modelo]) VALUES (4, N'FH-HJ-23', N'SCANIA', N'RHINO')
INSERT [movilpack].[camion] ([id_camion], [patente], [marca], [modelo]) VALUES (5, N'UO-BT-81', N'Land-Rover', N'AVANLANCHE')
SET IDENTITY_INSERT [movilpack].[camion] OFF
SET IDENTITY_INSERT [movilpack].[chofer] ON 

INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (1, N'juan')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (2, N'pedro')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (5, N'mario')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (6, N'marcos')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (9, N'hector')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (10, N'luis')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (11, N'gabriel')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (12, N'nicolas')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (13, N'carlos')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (14, N'cristian')
INSERT [movilpack].[chofer] ([id_chofer], [nombre]) VALUES (15, N'ana')
SET IDENTITY_INSERT [movilpack].[chofer] OFF
SET IDENTITY_INSERT [movilpack].[recorrido] ON 

INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (1, 807, N'copiapo', CAST(N'2017-02-14' AS Date), 1, 14)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (2, 409, N'chillan', CAST(N'2017-05-16' AS Date), 5, 9)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (3, 1638, N'Tocopilla', CAST(N'2017-01-06' AS Date), 2, 2)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (4, 1113, N'Ancud', CAST(N'2017-05-13' AS Date), 4, 6)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (5, 119, N'Valparaiso', CAST(N'2017-04-19' AS Date), 3, 15)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (6, 463, N'Coquimbo', CAST(N'2017-03-10' AS Date), 2, 12)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (7, 922, N'Osorno', CAST(N'2017-03-01' AS Date), 4, 10)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (8, 745, N'Lebu', CAST(N'2016-12-08' AS Date), 3, 5)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (9, 514, N'Los angeles', CAST(N'2017-06-01' AS Date), 2, 10)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (10, 535, N'Vicuña', CAST(N'2017-03-19' AS Date), 4, 14)
INSERT [movilpack].[recorrido] ([id_recorrido], [kilometos], [lugar], [fecha], [id_camion], [id_chofer]) VALUES (11, 807, N'copiapo', CAST(N'2017-02-14' AS Date), 5, 10)
SET IDENTITY_INSERT [movilpack].[recorrido] OFF
/****** Object:  Index [id_camion]    Script Date: 21/06/2017 21:02:23 ******/
CREATE NONCLUSTERED INDEX [id_camion] ON [movilpack].[recorrido]
(
	[id_camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [id_chofer]    Script Date: 21/06/2017 21:02:23 ******/
CREATE NONCLUSTERED INDEX [id_chofer] ON [movilpack].[recorrido]
(
	[id_chofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [movilpack].[recorrido]  WITH NOCHECK ADD  CONSTRAINT [recorrido$recorrido_ibfk_1] FOREIGN KEY([id_camion])
REFERENCES [movilpack].[camion] ([id_camion])
GO
ALTER TABLE [movilpack].[recorrido] CHECK CONSTRAINT [recorrido$recorrido_ibfk_1]
GO
ALTER TABLE [movilpack].[recorrido]  WITH NOCHECK ADD  CONSTRAINT [recorrido$recorrido_ibfk_2] FOREIGN KEY([id_chofer])
REFERENCES [movilpack].[chofer] ([id_chofer])
GO
ALTER TABLE [movilpack].[recorrido] CHECK CONSTRAINT [recorrido$recorrido_ibfk_2]
GO
/****** Object:  StoredProcedure [dbo].[GetDriversNumber]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetDriversNumber]
as

select count(*) from movilpack.chofer
GO
/****** Object:  StoredProcedure [dbo].[GetInfoTruckById]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetInfoTruckById](@idCamion int )
as

select b.marca,b.modelo, b.patente , sum(a.kilometos)/6 as "litros de petroleo", 670*(SUM(a.kilometos)/6) as "gasto camion"  from movilpack.recorrido a inner join movilpack.camion b on a.id_camion = b.id_camion where a.id_camion = @idCamion group by b.marca,b.modelo, b.patente
GO
/****** Object:  StoredProcedure [dbo].[GetInfoWay]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetInfoWay](@lugar varchar(20))
as

select  a.lugar, SUM(a.kilometos) as "Km recorridos", SUM(a.kilometos)/6 as "litros de petroleo", 670*(sum(a.kilometos)/6) as "Dinero gastado" from movilpack.recorrido a where a.lugar = @lugar   group by a.lugar
GO
/****** Object:  StoredProcedure [dbo].[GetSpendTruck]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSpendTruck](@fecha1 date, @fecha2 date)
as

select sum(a.kilometos)/6 as "litros", 670*(sum(a.kilometos)/6) as "gasto" from movilpack.recorrido a where a.fecha between @fecha1 and @fecha2
GO
/****** Object:  StoredProcedure [dbo].[GetTruckNumber]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetTruckNumber]
as
select count(*) from movilpack.camion

GO
/****** Object:  StoredProcedure [dbo].[GetWayByIdTruckAndDate]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[GetWayByIdTruckAndDate](@idCamion int, @fecha1 date , @fecha2 date)  
as

select b.id_camion, b.marca, b.modelo, b.patente, a.fecha, a.lugar, a.kilometos from movilpack.recorrido a inner join movilpack.camion b on a.id_camion = b.id_camion where b.id_camion=@idCamion and  a.fecha between @fecha1 and @fecha2 
GO
/****** Object:  StoredProcedure [dbo].[GetWayByOnlyDate]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetWayByOnlyDate](@fecha1 date)
as

select b.id_camion, b.marca, b.modelo, b.patente, a.fecha, a.lugar, a.kilometos from movilpack.recorrido a inner join movilpack.camion b on a.id_camion = b.id_camion where a.fecha=@fecha1 group by b.id_camion, b.marca,b.modelo,b.patente,a.fecha, a.lugar,a.kilometos
GO
/****** Object:  StoredProcedure [dbo].[GetWayByRangeDate]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetWayByRangeDate] (@fecha1 date, @fecha2 date)
as

select b.id_camion, b.marca, b.modelo, b.patente, a.fecha, a.lugar, a.kilometos from movilpack.recorrido a inner join movilpack.camion b on a.id_camion = b.id_camion where a.fecha  between @fecha1 and @fecha2
GO
/****** Object:  StoredProcedure [dbo].[GetWaysDriverByIdDriver]    Script Date: 21/06/2017 21:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetWaysDriverByIdDriver] (@idChofer int)
as

select b.nombre, a.lugar, a.fecha    from movilpack.recorrido a inner join movilpack.chofer b on a.id_chofer = b.id_chofer where a.id_chofer = @idChofer
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'movilpack.camion' , @level0type=N'SCHEMA',@level0name=N'movilpack', @level1type=N'TABLE',@level1name=N'camion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'movilpack.chofer' , @level0type=N'SCHEMA',@level0name=N'movilpack', @level1type=N'TABLE',@level1name=N'chofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'movilpack.recorrido' , @level0type=N'SCHEMA',@level0name=N'movilpack', @level1type=N'TABLE',@level1name=N'recorrido'
GO
USE [master]
GO
ALTER DATABASE [movilpack] SET  READ_WRITE 
GO
