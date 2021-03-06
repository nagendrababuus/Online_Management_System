USE [master]
GO
/****** Object:  Database [library]    Script Date: 02/11/2015 10:40:36 ******/
CREATE DATABASE [library] ON  PRIMARY 
( NAME = N'library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\library.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\library_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [library] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [library] SET ANSI_NULLS OFF
GO
ALTER DATABASE [library] SET ANSI_PADDING OFF
GO
ALTER DATABASE [library] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [library] SET ARITHABORT OFF
GO
ALTER DATABASE [library] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [library] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [library] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [library] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [library] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [library] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [library] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [library] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [library] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [library] SET  DISABLE_BROKER
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [library] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [library] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [library] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [library] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [library] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [library] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [library] SET  READ_WRITE
GO
ALTER DATABASE [library] SET RECOVERY FULL
GO
ALTER DATABASE [library] SET  MULTI_USER
GO
ALTER DATABASE [library] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [library] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'library', N'ON'
GO
USE [library]
GO
/****** Object:  Table [dbo].[tblstudents]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblstudents](
	[Sid] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Brid] [int] NULL,
	[Semester] [varchar](50) NULL,
	[Secid] [int] NULL,
	[Secans] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phno] [varchar](50) NULL,
	[Dob] [date] NULL,
	[Photo] [varchar](50) NULL,
	[registered] [varchar](50) NULL,
 CONSTRAINT [PK_studentstable_1] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'1', N'n', N'n', 1, N'4-1', 1, N'9', N'Male', N'n@gmail.com', N'9999999999', CAST(0x74390B00 AS Date), N'photos/Untitled-1 copy.jpg', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'10', NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'11471A0551', N'', N'11471A0551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'2', N's', N's', 2, N'4-1', 2, N's', N'Male', N's@gmail.com', N'3333333333', CAST(0x7C390B00 AS Date), N'photos/Untitled-1 copy.jpg', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'3', N'a', N'a', 1, N'4-1', 3, N'4', N'Male', N'a@gmail.com', N'9635821475', CAST(0x7B390B00 AS Date), N'photos/fgfdf.png', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'4', N'f', N'f', 4, N'4-1', 5, N'f', N'Male', N'f@gmail.com', N'2568545545', CAST(0x82390B00 AS Date), N'photos/4', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'5', N'h', N'h', 4, N'4-1', 5, N'h', N'Male', N'h@gmail.com', N'9632587412', CAST(0x7C390B00 AS Date), N'photos/Untitled-1 copy.png', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'6', N'csdx', N'c', 2, N'2-1', 3, N'sccs', N'Male', N'xcd@gfx.com', N'9456986598', CAST(0xA6390B00 AS Date), N'photos/return.png', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'7', N'nag', N'n', 1, N'1-2', 1, N'c', N'Male', N'fdnsl@jnd.com', N'4569874563', CAST(0x99390B00 AS Date), N'photos/return.png', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'8', N'nusd', N'a', 3, N'1-2', 2, N'ncjs', N'Female', N'nds@lkfnkd.cim', N'8956565698', CAST(0x9F390B00 AS Date), N'photos/return.png', N'1')
INSERT [dbo].[tblstudents] ([Sid], [Name], [Pass], [Brid], [Semester], [Secid], [Secans], [Gender], [Email], [Phno], [Dob], [Photo], [registered]) VALUES (N'9', N'kdf', N'gvc', 2, N'Select', 0, N'jbj', N'Select', N'', N'', CAST(0x97390B00 AS Date), N'photos/return.png', N'1')
/****** Object:  Table [dbo].[tblsecurity]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblsecurity](
	[Secid] [int] IDENTITY(1,1) NOT NULL,
	[Secque] [varchar](50) NULL,
 CONSTRAINT [PK_tblsecurity] PRIMARY KEY CLUSTERED 
(
	[Secid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblsecurity] ON
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (1, N'Your first phone number?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (2, N'Your home town?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (3, N'Your vehicle number?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (4, N'Your favorite town?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (5, N'Your birth place?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (6, N'Your secret number?')
INSERT [dbo].[tblsecurity] ([Secid], [Secque]) VALUES (7, N'Your mothers maiden name?')
SET IDENTITY_INSERT [dbo].[tblsecurity] OFF
/****** Object:  Table [dbo].[tblreturn]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblreturn](
	[Issid] [int] NOT NULL,
	[Sid] [varchar](50) NULL,
	[Bid] [int] NULL,
	[Rdate] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (10, N'1', 5, N'21-01-2015 09:33:33')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (13, N'1', 6, N'21-01-2015 10:44:13')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (14, N'1', 7, N'21-01-2015 11:29:42')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (17, N'1', 12, N'03-Feb-15 11:15:18 AM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (18, N'2', 13, N'03-Feb-15 11:19:09 AM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (19, N'1', 14, N'04-Feb-15 10:57:44 AM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (13, N'1', 6, N'06-Feb-15 3:39:')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (13, N'1', 6, N'06-Feb-15 3:41:')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (13, N'1', 6, N'06-Feb-15 3:43:')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (20, N'5', 12, N'06-Feb-15 4:29:')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (20, N'5', 12, N'06-Feb-15 4:30:')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (15, N'2', 5, N'06-Feb-15 4:31:09 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (22, N'5', 11, N'09-Feb-15 1:56:42 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (24, N'5', 11, N'09-Feb-15 1:56:42 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (21, N'5', 6, N'09-Feb-15 1:56:59 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (23, N'5', 6, N'09-Feb-15 1:57:05 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (28, N'5', 3, N'09-Feb-15 2:32:42 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (29, N'5', 5, N'09-Feb-15 2:32:42 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (30, N'5', 6, N'09-Feb-15 2:32:42 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (25, N'1', 3, N'09-Feb-15 2:35:20 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (26, N'1', 3, N'09-Feb-15 2:35:20 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (33, N'2', 16, N'09-Feb-15 3:00:11 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (36, N'3', 11, N'09-Feb-15 3:05:37 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (39, N'5', 10, N'09-Feb-15 4:51:01 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (38, N'5', 7, N'09-Feb-15 4:51:11 PM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (31, N'1', 2, N'11-Feb-15 10:05:03 AM')
INSERT [dbo].[tblreturn] ([Issid], [Sid], [Bid], [Rdate]) VALUES (16, N'3', 6, N'09-Feb-15 3:03:31 PM')
/****** Object:  Table [dbo].[tblcategory]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblcategory](
	[Catid] [int] IDENTITY(1,1) NOT NULL,
	[Catname] [varchar](50) NULL,
 CONSTRAINT [PK_tblcategory] PRIMARY KEY CLUSTERED 
(
	[Catid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblcategory] ON
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (1, N'Electronics')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (2, N'Menchanical')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (3, N'Computers')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (4, N'Civil')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (5, N'Management')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (6, N'Operating System')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (7, N'Programing')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (8, N'Fictious')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (9, N'Technology')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (10, N'Magazines')
INSERT [dbo].[tblcategory] ([Catid], [Catname]) VALUES (11, N'Others')
SET IDENTITY_INSERT [dbo].[tblcategory] OFF
/****** Object:  Table [dbo].[tblbranch]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblbranch](
	[Brid] [int] IDENTITY(1,1) NOT NULL,
	[Brname] [varchar](50) NULL,
 CONSTRAINT [PK_tblbranch] PRIMARY KEY CLUSTERED 
(
	[Brid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblbranch] ON
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (1, N'CSE')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (2, N'ECE')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (3, N'IT')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (4, N'MEC')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (5, N'EEE')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (6, N'CIVIL')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (7, N'MBA')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (8, N'MCA')
INSERT [dbo].[tblbranch] ([Brid], [Brname]) VALUES (9, N'OTHERS')
SET IDENTITY_INSERT [dbo].[tblbranch] OFF
/****** Object:  Table [dbo].[tblbooks]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblbooks](
	[Bid] [int] IDENTITY(1,1) NOT NULL,
	[Bname] [varchar](50) NULL,
	[Catid] [int] NULL,
	[Author] [varchar](50) NULL,
	[Edition] [varchar](50) NULL,
	[Noofbooksavailable] [int] NULL,
 CONSTRAINT [PK_Bookstable] PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblbooks] ON
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (2, N'comp', 3, N'william', N'1.1', 44)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (3, N'mech', 2, N'wstallinm', N'2.2', 14)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (4, N'mech', 2, N'wstallinm', N'2.2', 14)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (5, N'mech', 2, N'wstallinm', N'2.2', 9)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (6, N'mech', 2, N'wstallinm', N'2.2', 17)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (7, N'mech', 2, N'wstallinm', N'2.2', 15)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (8, N'mech', 2, N'wstallinm', N'2.2', 15)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (9, N'sdzcx', 5, N'jkjk', N'2', 22)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (10, N'hjmkmmmmmmm', 8, N'hm', N'4.2', 50)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (11, N'sfd', 2, N'xvc', N'5', 48)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (12, N'hfsj', 6, N'jkcbdj', N'2.0', 101)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (13, N'sdjhfus', 5, N'jhcsdi', N'1.0', 100)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (14, N'kdsnfk', 1, N'sdkfjs', N'10', 111)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (15, N'nag', 9, N'nag', N'10', 1111)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (16, N'ijj', 3, N'kkk', N'10', 19)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (17, N'ijj', 3, N'kkk', N'10', 20)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (18, N'asd', 2, N'sd', N'235', 3)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (20, N'jnc', 8, N'cxz5', N'25', 0)
INSERT [dbo].[tblbooks] ([Bid], [Bname], [Catid], [Author], [Edition], [Noofbooksavailable]) VALUES (21, N'dsf', 3, N'csddsc', N'55', 55)
SET IDENTITY_INSERT [dbo].[tblbooks] OFF
/****** Object:  Table [dbo].[tblissuedbooks]    Script Date: 02/11/2015 10:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblissuedbooks](
	[Issid] [int] IDENTITY(1,1) NOT NULL,
	[Sid] [varchar](50) NOT NULL,
	[Bid] [int] NOT NULL,
	[Idate] [varchar](50) NOT NULL,
	[Issued] [int] NULL,
 CONSTRAINT [PK_tblissuedbooks] PRIMARY KEY CLUSTERED 
(
	[Issid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblissuedbooks] ON
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (10, N'1', 5, N'Jul 15 1894 12:00AM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (13, N'1', 6, N'21-01-2015 10:39:35', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (14, N'1', 7, N'21-01-2015 10:39:39', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (15, N'2', 5, N'21-01-2015 10:39:44', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (16, N'3', 6, N'21-01-2015 10:39:50', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (17, N'1', 12, N'03-Feb-15 11:14:50 AM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (18, N'2', 13, N'03-Feb-15 11:18:35 AM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (19, N'1', 14, N'04-Feb-15 10:56:59 AM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (20, N'5', 12, N'06-Feb-15 4:23:11 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (21, N'5', 6, N'09-Feb-15 1:54:27 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (22, N'5', 11, N'09-Feb-15 1:54:27 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (23, N'5', 6, N'09-Feb-15 1:55:49 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (24, N'5', 11, N'09-Feb-15 1:55:49 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (25, N'1', 3, N'09-Feb-15 2:21:33 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (26, N'1', 3, N'09-Feb-15 2:22:20 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (28, N'5', 3, N'09-Feb-15 2:32:05 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (29, N'5', 5, N'09-Feb-15 2:32:05 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (30, N'5', 6, N'09-Feb-15 2:32:05 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (31, N'1', 2, N'09-Feb-15 2:59:51 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (32, N'1', 16, N'09-Feb-15 2:59:51 PM', 1)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (33, N'2', 16, N'09-Feb-15 2:59:57 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (34, N'2', 4, N'09-Feb-15 3:05:12 PM', 1)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (35, N'2', 5, N'09-Feb-15 3:05:12 PM', 1)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (36, N'3', 11, N'09-Feb-15 3:05:20 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (38, N'5', 7, N'09-Feb-15 4:37:28 PM', 0)
INSERT [dbo].[tblissuedbooks] ([Issid], [Sid], [Bid], [Idate], [Issued]) VALUES (39, N'5', 10, N'09-Feb-15 4:50:15 PM', 0)
SET IDENTITY_INSERT [dbo].[tblissuedbooks] OFF
/****** Object:  StoredProcedure [dbo].[stp_UpdateIssuedBooks]    Script Date: 02/11/2015 10:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[stp_UpdateIssuedBooks]
	-- Add the parameters for the stored procedure here
	@IssueId int,
	@StudentId varchar(max),
	@BookId int,
	@IsReturned int,
	@ReturnedDate varchar(50)
AS
BEGIN
	
	update tblissuedbooks set Issued=@IsReturned where Issid=@IssueId
	if @IsReturned =0
	begin
	insert into tblreturn values(@IssueId,@StudentId,@BookId,@ReturnedDate)
	update tblbooks set Noofbooksavailable=Noofbooksavailable+1 where Bid=@BookId
	end
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[stp_IssueBooks]    Script Date: 02/11/2015 10:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[stp_IssueBooks]
	
	@StudentId varchar(max),
	@BookId int,
	@IsIssued int,
	@IssuedDate varchar(50)
AS
if @IsIssued =1
	begin
	insert into tblissuedbooks values(@StudentId,@BookId,@IssuedDate,@IsIssued)
	update tblbooks set Noofbooksavailable=Noofbooksavailable-1 where Bid=@BookId
	end
GO
/****** Object:  ForeignKey [FK_tblbooks_tblcategory]    Script Date: 02/11/2015 10:40:39 ******/
ALTER TABLE [dbo].[tblbooks]  WITH CHECK ADD  CONSTRAINT [FK_tblbooks_tblcategory] FOREIGN KEY([Catid])
REFERENCES [dbo].[tblcategory] ([Catid])
GO
ALTER TABLE [dbo].[tblbooks] CHECK CONSTRAINT [FK_tblbooks_tblcategory]
GO
/****** Object:  ForeignKey [FK_tblissuedbooks_tblbooks]    Script Date: 02/11/2015 10:40:39 ******/
ALTER TABLE [dbo].[tblissuedbooks]  WITH CHECK ADD  CONSTRAINT [FK_tblissuedbooks_tblbooks] FOREIGN KEY([Bid])
REFERENCES [dbo].[tblbooks] ([Bid])
GO
ALTER TABLE [dbo].[tblissuedbooks] CHECK CONSTRAINT [FK_tblissuedbooks_tblbooks]
GO
/****** Object:  ForeignKey [FK_tblissuedbooks_tblstudents]    Script Date: 02/11/2015 10:40:39 ******/
ALTER TABLE [dbo].[tblissuedbooks]  WITH CHECK ADD  CONSTRAINT [FK_tblissuedbooks_tblstudents] FOREIGN KEY([Sid])
REFERENCES [dbo].[tblstudents] ([Sid])
GO
ALTER TABLE [dbo].[tblissuedbooks] CHECK CONSTRAINT [FK_tblissuedbooks_tblstudents]
GO
