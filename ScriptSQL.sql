USE [master]
GO
/****** Object:  Database [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e]    Script Date: 22/05/2024 12:20:50 PM ******/
CREATE DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e', FILENAME = N'D:\Dowload\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e_log', FILENAME = N'D:\Dowload\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET QUERY_STORE = OFF
GO
USE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [nvarchar](450) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[DepartmentId] [int] NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 22/05/2024 12:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406041315_IdentityDB_Update', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406045217_IdentityDB_AddTable_Department', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406072521_DB_AddTable-Department', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406073946_Add_Relation_Department-User', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408032327_DB_Add_Fields_User', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240409031658_DB_Delete_Position_Field_AppUser', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240409041903_DB_AllowNull_DepartmentId_AppUser', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240416040215_Department_Update_DepartmentFiled', N'8.0.3')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'262a9776-cc3a-4311-b155-688d4ad200e4', N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd9dd5148-0eb2-47d2-8e67-db7a426075be', N'Manager', N'MANAGER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ec538eaf-72fe-406d-9afc-d86758cf0221', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f38d86f-32c9-4f13-a1dc-c6f39c62f13e', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e2575fa-a652-4685-8435-1c7f931c5b82', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'53e736fd-7290-4e78-a419-4fb466ae9765', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'54aa7020-4795-4103-a900-c25f0d70ba9c', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70e1d994-e463-41a9-a5a5-30852bb5a77a', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bddcf6d5-f648-42f9-ba51-8bc012354441', N'262a9776-cc3a-4311-b155-688d4ad200e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'63bef100-ce57-455b-bb69-9c870b462d9f', N'd9dd5148-0eb2-47d2-8e67-db7a426075be')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7a04f80f-903e-4310-bb36-a616dd8810e9', N'd9dd5148-0eb2-47d2-8e67-db7a426075be')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1f18b25-d2b4-4f52-829b-ec0940b53f8d', N'd9dd5148-0eb2-47d2-8e67-db7a426075be')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8f4900b-e1a0-49e8-8062-88b00043dba8', N'd9dd5148-0eb2-47d2-8e67-db7a426075be')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0aae5248-cd92-44e3-98b4-4739464e55cf', N'ec538eaf-72fe-406d-9afc-d86758cf0221')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'0aae5248-cd92-44e3-98b4-4739464e55cf', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOnAmk3lHVDR95kW7ncWe11w+IvCRlvAviWQvhGlFrEX+j3clerz2HWRAMT0060AeQ==', N'FTDF6PIV2A462FW5TCWKVCQOPATP7K2D', N'9a5ef00e-2158-4213-92cf-551da33f8873', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'0f38d86f-32c9-4f13-a1dc-c6f39c62f13e', N'User13', N'USER13', N'user13@gmail.com', N'USER13@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECdkTunAHV/HAXLyRF49kEVBSEIyNTWA8TdNbTxU9iP/ZVJMliX8gNCnunBKZID8Ag==', N'JTXG76DPIGAT35ZT5YYT5FVZBHZCJZKK', N'30fa16fc-6252-4774-ab9d-dac5da21761a', NULL, 0, 0, NULL, 1, 0, N'Da Nang', 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'3e2575fa-a652-4685-8435-1c7f931c5b82', N'User12', N'USER12', N'user12@gmail.com', N'USER12@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIUAV809KOedk8iZHvHmhSjUqS5OTArKMNQgIH5Z++V4j3tlmpRuzRMKEfrqvBB+Mw==', N'7FRLWIONJJGQ5MFDIPCEWDUC63MKYPQE', N'506c5a56-116a-445b-9e87-c11406f4c253', NULL, 0, 0, NULL, 1, 0, N'HCM', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'53e736fd-7290-4e78-a419-4fb466ae9765', N'User10', N'USER10', N'user10@gmail.com', N'USER10@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENkOw3knhLwcWqURZFE8VwnX10ll3dl1GTgYvgIDu2r8Ei/7PI+tQwrm6Ub6LZdY7w==', N'IVVSDUHBZD3WC6BY7J4T25OSYYFCCLDK', N'59ddd2b5-c527-47d7-9080-ccd614b7bbb0', NULL, 0, 0, NULL, 1, 0, N'HN', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'54aa7020-4795-4103-a900-c25f0d70ba9c', N'User11', N'USER11', N'user11@gmail.com', N'USER11@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEO7nz5hOkrb9g2ky6Vbx+Ja8JU6kFeFMYTNQU/ev7XyOYuuo1MRHNBkZ8cRsZ812eg==', N'PUNVWD2WQFYIEAZHLL2345ND2EHLHTKW', N'27889365-2c5f-45a9-8216-c6a34c9df295', NULL, 0, 0, NULL, 1, 0, N'An Giang', 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'63bef100-ce57-455b-bb69-9c870b462d9f', N'User2', N'USER2', N'user2@gmail.com', N'USER2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEP6zSf8+ddG2y1CDvIIIS11y0w9JyGakju5v+YDk7Gkj1YuMydfDvvWAcSi0aXZgXA==', N'X2IPR55GJNEILKGFOT5NCWURUUUPUAM2', N'a031211d-e950-4916-aba6-930f1ae77351', NULL, 0, 0, NULL, 1, 0, N'An Giang', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'70e1d994-e463-41a9-a5a5-30852bb5a77a', N'ThaiLe', N'THAILE', N'thaile@gmail.com', N'THAILE@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFfmFWvn3U3Lcnkr7enSGgyJMiswkPWCeBjTbOULSbd4AYjIK2elw4DiITUMOSQXQQ==', N'Z7GD2XYOO45KRXTECIULGGHHQXVZSFWR', N'fa35c4ae-3d6e-4007-a92e-a90f6fc4e7ac', NULL, 0, 0, NULL, 1, 0, N'An Giang', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'7a04f80f-903e-4310-bb36-a616dd8810e9', N'User1', N'USER1', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIMeI9VBuGwsyAAAEmf6hrBk9kz8MwlcEsZba2DBq/qpGIUpBZIT06kwPV7BK/Zf+A==', N'UHU5F2ZN4ECPB7WENJU4XEH3XDHUDNOF', N'848def2f-6d89-43a0-a7ee-c456827ea0d3', NULL, 0, 0, NULL, 1, 0, N'HCM City', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'a1f18b25-d2b4-4f52-829b-ec0940b53f8d', N'User4', N'USER4', N'user4@gmail.com', N'USER4@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEDAJ9GLCjV4BK8vTykk9mhUgxxmBL0Xr+NxScEFl4n46AAXxGjNTNPXnnJgugosjfA==', N'CZDOEYIUPE57DJ6XKOZVEJ2SU2FDHIMK', N'4fac2500-0ce4-447f-99b3-35ce04dd6273', NULL, 0, 0, NULL, 1, 0, N'HCM City', 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'bddcf6d5-f648-42f9-ba51-8bc012354441', N'ThaiLe2', N'THAILE2', N'thaile2@gmail.com', N'THAILE2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJZBaJv9b8sb4OJy/nsGNUTz5eGH4D9H2MWaDcDJm25rZHodbsBNvFVWeJevMFW6ng==', N'7GVXIJRNXJTHAK3SQOUBDHE2HVN3LKO3', N'794dc178-28ee-4c30-8ddf-cfc55e70dbf1', NULL, 0, 0, NULL, 1, 0, N'HCM City', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [DepartmentId]) VALUES (N'f8f4900b-e1a0-49e8-8062-88b00043dba8', N'User3', N'USER3', N'user3@gmail.com', N'USER3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFd2VhciWc/81QgFlFUNBJdjhbmZ/mzMzybxoh+uAWnmWKFQycXDjuoKu7wm0pK0FA==', N'3LOZUSSKODO4MZ7RBVTS6JIM2HCRJV4O', N'9477a5e4-e22c-4e76-8b93-28008843ddf1', NULL, 0, 0, NULL, 1, 0, N'An Giang, Long Xuyen', 2)
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'HR')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Marketing')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'Finance and Accounting Division')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (5, N'Manager')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
/****** Object:  Index [IX_AppUser_DepartmentId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUser_DepartmentId] ON [dbo].[AppUser]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_DepartmentId]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_DepartmentId] ON [dbo].[AspNetUsers]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 22/05/2024 12:20:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppUser_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[AppUser] CHECK CONSTRAINT [FK_AppUser_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-ManagerWeb-68c8c4c4-3bac-492d-9569-b3db4e452e1e] SET  READ_WRITE 
GO
