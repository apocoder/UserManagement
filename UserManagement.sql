USE [master]
GO
/****** Object:  Database [UserManagementDB]    Script Date: 10/9/2014 12:58:41 PM ******/
CREATE DATABASE [UserManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\UserManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UserManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\UserManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UserManagementDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UserManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UserManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UserManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UserManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UserManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UserManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UserManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UserManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UserManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UserManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UserManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UserManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UserManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UserManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UserManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UserManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UserManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UserManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UserManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UserManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UserManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UserManagementDB] SET RECOVERY FULL 
GO
ALTER DATABASE [UserManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [UserManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UserManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UserManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UserManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UserManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UserManagementDB', N'ON'
GO
USE [UserManagementDB]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 10/9/2014 12:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Subject] [nvarchar](300) NOT NULL,
	[Body] [ntext] NOT NULL,
	[ReadedAt] [datetime] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/9/2014 12:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [UserId], [Subject], [Body], [ReadedAt]) VALUES (3, 1, N'dfgdf', N'dfdfgfgdddffgd', NULL)
INSERT [dbo].[Messages] ([Id], [UserId], [Subject], [Body], [ReadedAt]) VALUES (4, 1, N'günaydın', N'sadfsa', NULL)
INSERT [dbo].[Messages] ([Id], [UserId], [Subject], [Body], [ReadedAt]) VALUES (5, 3, N'günaydın', N'sadfsa', NULL)
INSERT [dbo].[Messages] ([Id], [UserId], [Subject], [Body], [ReadedAt]) VALUES (6, 4, N'günaydın', N'sadfsa', NULL)
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name]) VALUES (1, N'Abdullah')
INSERT [dbo].[Users] ([Id], [Name]) VALUES (3, N'Bahadır')
INSERT [dbo].[Users] ([Id], [Name]) VALUES (4, N'Selami')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
USE [master]
GO
ALTER DATABASE [UserManagementDB] SET  READ_WRITE 
GO
