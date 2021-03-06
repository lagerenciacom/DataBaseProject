USE [master]
GO
/****** Object:  Database [EmployeeDbFromManagment]    Script Date: 12/09/2018 2:52:58 p.m. ******/
CREATE DATABASE [EmployeeDbFromManagment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDbFromManagment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\EmployeeDbFromManagment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDbFromManagment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\EmployeeDbFromManagment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDbFromManagment] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDbFromManagment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDbFromManagment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDbFromManagment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeDbFromManagment]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 12/09/2018 2:52:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] NOT NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/09/2018 2:52:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[LastName] [varchar](50) NULL,
	[Salary] [decimal](11, 2) NULL,
	[Address] [varchar](250) NULL,
	[HireDate] [date] NULL,
	[Tel] [numeric](13, 0) NULL,
	[Cel] [numeric](13, 0) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](16) NULL,
	[GenderId] [int] NULL,
	[DepartmentId] [int] NULL,
	[StatusId] [int] NULL,
	[ImageUrl] [varchar](250) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genders]    Script Date: 12/09/2018 2:52:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[GendersId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[GendersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 12/09/2018 2:52:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Departments] ([DepartmentId], [Description]) VALUES (1, N'Sales')
INSERT [dbo].[Departments] ([DepartmentId], [Description]) VALUES (2, N'Services')
INSERT [dbo].[Departments] ([DepartmentId], [Description]) VALUES (3, N'Operations')
INSERT [dbo].[Employees] ([EmployeeId], [Name], [LastName], [Salary], [Address], [HireDate], [Tel], [Cel], [Email], [Password], [GenderId], [DepartmentId], [StatusId], [ImageUrl]) VALUES (1, N'John', N'Raining', CAST(185545.45 AS Decimal(11, 2)), N'A Place on Your Hearth', NULL, CAST(8492087744 AS Numeric(13, 0)), NULL, N'john#miEmail.com', N'123', 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([GendersId], [Description]) VALUES (1, N'Male')
INSERT [dbo].[Genders] ([GendersId], [Description]) VALUES (2, N'Female')
INSERT [dbo].[Genders] ([GendersId], [Description]) VALUES (3, N'Other')
SET IDENTITY_INSERT [dbo].[Genders] OFF
INSERT [dbo].[Status] ([StatusId], [Description]) VALUES (1, N'Active')
INSERT [dbo].[Status] ([StatusId], [Description]) VALUES (2, N'Inactive')
INSERT [dbo].[Status] ([StatusId], [Description]) VALUES (22, N'On Vacation')
INSERT [dbo].[Status] ([StatusId], [Description]) VALUES (45, N'Dead')
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Genders] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([GendersId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Genders]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Status]
GO
USE [master]
GO
ALTER DATABASE [EmployeeDbFromManagment] SET  READ_WRITE 
GO
