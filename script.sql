USE [Task_crud]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20-02-2025 18:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[Salary] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (6, N'Shiv', N'Shiv@gmail.com', N'8212374287', N'Lucknow', 20000)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (7, N'Raman', N'CATLEDGE@ATS.COM', N'8052734575', N'Lucknow', 50000)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (8, N'Shivam', N'ace.kumar@ariespro.com', N'8052734575', N'Lucknow', 110000)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (10, N'Raman', N'ace.kumar@ariespro.com', N'43653', N'fdg', 54000)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (11, N'AJAY', N'Ajay@gmail.com', N'1318731', N'pata nhi', 72000)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Mobile], [Address], [Salary]) VALUES (12, N'Sanchit', N'Sanchit@gmail.com', N'235632935', N'pata nhi', 140000)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee]    Script Date: 20-02-2025 18:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_Employee](
@Id int=null ,
@Name nvarchar(100)=null,
@Email nvarchar(100)=null,
@Mobile nvarchar(100)=null,
@Address nvarchar(max)=null,
@Salary real=null,
@Action int=null
)
as
begin
if(@Action=1)
begin
insert into Employee(Name,Email,Mobile,Address,Salary)values(@Name,@Email,@Mobile,@Address,@Salary)
end
if(@Action=2)
begin
select * from Employee
end
if(@Action=3)
begin
Delete from Employee where Id=@Id
end
if(@Action=4)
begin
select * from Employee where Id=@Id
end
if(@Action=5)
begin
Update Employee set Name=@Name, Email=@Email,Mobile=@Mobile,Address=@Address,Salary=@Salary where Id=@Id
end
end
GO
