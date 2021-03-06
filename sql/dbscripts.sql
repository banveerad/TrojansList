USE [master]
GO
/****** Object:  Database [uscresellall]    Script Date: 08/08/2012 23:52:23 ******/
CREATE DATABASE [uscresellall] ON  PRIMARY 
( NAME = N'uscresellall', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\uscresellall.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'uscresellall_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\uscresellall_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [uscresellall] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [uscresellall].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [uscresellall] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [uscresellall] SET ANSI_NULLS OFF
GO
ALTER DATABASE [uscresellall] SET ANSI_PADDING OFF
GO
ALTER DATABASE [uscresellall] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [uscresellall] SET ARITHABORT OFF
GO
ALTER DATABASE [uscresellall] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [uscresellall] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [uscresellall] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [uscresellall] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [uscresellall] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [uscresellall] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [uscresellall] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [uscresellall] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [uscresellall] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [uscresellall] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [uscresellall] SET  DISABLE_BROKER
GO
ALTER DATABASE [uscresellall] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [uscresellall] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [uscresellall] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [uscresellall] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [uscresellall] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [uscresellall] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [uscresellall] SET  READ_WRITE
GO
ALTER DATABASE [uscresellall] SET RECOVERY SIMPLE
GO
ALTER DATABASE [uscresellall] SET  MULTI_USER
GO
ALTER DATABASE [uscresellall] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [uscresellall] SET DB_CHAINING OFF
GO
USE [uscresellall]
GO
/****** Object:  Table [dbo].[bikes]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bikes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[mail] [nchar](100) NULL,
	[phonenumer] [nchar](100) NULL,
	[descp] [nchar](140) NULL,
	[price] [float] NULL,
	[createdOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[furniture]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[furniture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[mail] [nchar](100) NULL,
	[phonenumer] [nchar](100) NULL,
	[product] [nchar](100) NULL,
	[descp] [nchar](140) NULL,
	[price] [float] NULL,
	[createdOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gadgets]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gadgets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[mail] [nchar](100) NULL,
	[phonenumer] [nchar](100) NULL,
	[product] [nchar](100) NULL,
	[descp] [nchar](140) NULL,
	[price] [float] NULL,
	[createdOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[housing]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[housing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[mail] [nchar](100) NULL,
	[phonenumer] [nchar](100) NULL,
	[Lookingfor] [nchar](100) NULL,
	[descp] [nchar](140) NULL,
	[gender] [nchar](100) NULL,
	[createdOn] [datetime] NULL,
	[ddescp] [varchar](2000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[books]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[mail] [varchar](100) NULL,
	[phonenumer] [varchar](100) NULL,
	[subjectcode] [varchar](100) NULL,
	[booktitle] [varchar](300) NULL,
	[yearpublished] [varchar](10) NULL,
	[author] [varchar](300) NULL,
	[price] [float] NULL,
	[createdOn] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userEmails]    Script Date: 08/08/2012 23:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userEmails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emailId] [varchar](50) NULL,
	[codestring] [varchar](50) NULL,
	[createdOn] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
