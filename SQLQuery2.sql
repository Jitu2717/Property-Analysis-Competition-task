USE [DataWarehouse_item2]
GO

/****** Object:  Table [dbo].[Dim_Electorate]    Script Date: 29-May-23 10:21:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dim_Electorate]') AND type in (N'U'))
DROP TABLE [dbo].[Dim_Electorate]
GO

/****** Object:  Table [dbo].[Dim_Electorate]    Script Date: 29-May-23 10:21:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Electorate](
	[Electorate_ID] [int] IDENTITY(1,1) NOT NULL,
	[lga] [nvarchar](max) NULL,
	[electorate] [nvarchar](max) NULL,
	[fed_electorate] [nvarchar](max) NULL,
	[operational_directorate] [nvarchar](max) NULL,
	[principal_network] [nvarchar](max) NULL,
	[facs_district] [nvarchar](max) NULL,
	[local_health_district] [nvarchar](max) NULL,
	[aecg_region] [nvarchar](max) NULL,
	[ASGS_remoteness] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dim_Electorate] PRIMARY KEY CLUSTERED 
(
	[Electorate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DataWarehouse_item2]
GO

/****** Object:  Table [dbo].[Dim_ExtractedDate]    Script Date: 29-May-23 10:22:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dim_ExtractedDate]') AND type in (N'U'))
DROP TABLE [dbo].[Dim_ExtractedDate]
GO

/****** Object:  Table [dbo].[Dim_ExtractedDate]    Script Date: 29-May-23 10:22:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_ExtractedDate](
	[ExtractedDate_ID] [int] IDENTITY(1,1) NOT NULL,
	[Extracted_Year] [nvarchar](max) NULL,
	[Extracted_Month] [nvarchar](max) NULL,
	[Extracted_Date] [nvarchar](max) NULL,
	[Extracted_fulldate] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dim_ExtractedDate] PRIMARY KEY CLUSTERED 
(
	[ExtractedDate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DataWarehouse_item2]
GO

/****** Object:  Table [dbo].[Dim_School]    Script Date: 29-May-23 10:22:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dim_School]') AND type in (N'U'))
DROP TABLE [dbo].[Dim_School]
GO

/****** Object:  Table [dbo].[Dim_School]    Script Date: 29-May-23 10:22:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_School](
	[School_ID] [int] IDENTITY(1,1) NOT NULL,
	[School_Code] [nvarchar](max) NULL,
	[AgeID] [nvarchar](max) NULL,
	[school_name] [nvarchar](max) NULL,
	[street] [nvarchar](max) NULL,
	[level_of_schooling] [nvarchar](max) NULL,
	[selective_school] [nvarchar](max) NULL,
	[opportunity_class] [nvarchar](max) NULL,
	[school_specialty_type] [nvarchar](max) NULL,
	[school_subtype] [nvarchar](max) NULL,
	[support_classes] [nvarchar](max) NULL,
	[preschool_ind] [nvarchar](max) NULL,
	[distance_education] [nvarchar](max) NULL,
	[intensive_english_centre] [nvarchar](max) NULL,
	[school_gender] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[school_email] [nvarchar](max) NULL,
	[fax] [nvarchar](max) NULL,
	[late_opening_school] [nvarchar](max) NULL,
	[date_1st_teacher] [nvarchar](max) NULL,
	[latitude] [nvarchar](max) NULL,
	[longitude] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dim_School] PRIMARY KEY CLUSTERED 
(
	[School_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DataWarehouse_item2]
GO

/****** Object:  Table [dbo].[Dim_SubCityDist]    Script Date: 29-May-23 10:23:04 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dim_SubCityDist]') AND type in (N'U'))
DROP TABLE [dbo].[Dim_SubCityDist]
GO

/****** Object:  Table [dbo].[Dim_SubCityDist]    Script Date: 29-May-23 10:23:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_SubCityDist](
	[SubCityDist_ID] [int] IDENTITY(1,1) NOT NULL,
	[suburb] [nvarchar](max) NULL,
	[city_town] [nvarchar](max) NULL,
	[state] [nvarchar](max) NULL,
	[state_code] [nvarchar](max) NULL,
	[lat] [nvarchar](max) NULL,
	[lon] [nvarchar](max) NULL,
	[distric] [nvarchar](max) NULL,
	[postcode] [nvarchar](max) NULL,
	[location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dim_SubCityDist] PRIMARY KEY CLUSTERED 
(
	[SubCityDist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DataWarehouse_item2]
GO

/****** Object:  Table [dbo].[Dim_UpdateDate]    Script Date: 29-May-23 10:23:18 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dim_UpdateDate]') AND type in (N'U'))
DROP TABLE [dbo].[Dim_UpdateDate]
GO

/****** Object:  Table [dbo].[Dim_UpdateDate]    Script Date: 29-May-23 10:23:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_UpdateDate](
	[UpdateDate_ID] [int] IDENTITY(1,1) NOT NULL,
	[Update_Year] [nvarchar](max) NULL,
	[Update_Month] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dim_UpdateDate] PRIMARY KEY CLUSTERED 
(
	[UpdateDate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DataWarehouse_item2]
GO

ALTER TABLE [dbo].[Fact_PropertyPricing] DROP CONSTRAINT [FK_Fact_PropertyPricing_Dim_UpdateDate]
GO

ALTER TABLE [dbo].[Fact_PropertyPricing] DROP CONSTRAINT [FK_Fact_PropertyPricing_Dim_SubCityDist]
GO

/****** Object:  Table [dbo].[Fact_PropertyPricing]    Script Date: 29-May-23 10:23:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fact_PropertyPricing]') AND type in (N'U'))
DROP TABLE [dbo].[Fact_PropertyPricing]
GO

/****** Object:  Table [dbo].[Fact_PropertyPricing]    Script Date: 29-May-23 10:23:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_PropertyPricing](
	[PropertyPricingID] [int] IDENTITY(1,1) NOT NULL,
	[SubCityDist_ID] [int] NULL,
	[UpdateDate_ID] [int] NULL,
	[Property_Median_Value] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Fact_PropertyPricing] PRIMARY KEY CLUSTERED 
(
	[PropertyPricingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_PropertyPricing]  WITH CHECK ADD  CONSTRAINT [FK_Fact_PropertyPricing_Dim_SubCityDist] FOREIGN KEY([SubCityDist_ID])
REFERENCES [dbo].[Dim_SubCityDist] ([SubCityDist_ID])
GO

ALTER TABLE [dbo].[Fact_PropertyPricing] CHECK CONSTRAINT [FK_Fact_PropertyPricing_Dim_SubCityDist]
GO

ALTER TABLE [dbo].[Fact_PropertyPricing]  WITH CHECK ADD  CONSTRAINT [FK_Fact_PropertyPricing_Dim_UpdateDate] FOREIGN KEY([UpdateDate_ID])
REFERENCES [dbo].[Dim_UpdateDate] ([UpdateDate_ID])
GO

ALTER TABLE [dbo].[Fact_PropertyPricing] CHECK CONSTRAINT [FK_Fact_PropertyPricing_Dim_UpdateDate]
GO

USE [DataWarehouse_item2]
GO

ALTER TABLE [dbo].[Fact_StudentStrength] DROP CONSTRAINT [FK_Fact_StudentStrength_Dim_SubCityDist]
GO

ALTER TABLE [dbo].[Fact_StudentStrength] DROP CONSTRAINT [FK_Fact_StudentStrength_Dim_School]
GO

ALTER TABLE [dbo].[Fact_StudentStrength] DROP CONSTRAINT [FK_Fact_StudentStrength_Dim_ExtractedDate]
GO

ALTER TABLE [dbo].[Fact_StudentStrength] DROP CONSTRAINT [FK_Fact_StudentStrength_Dim_Electorate]
GO

/****** Object:  Table [dbo].[Fact_StudentStrength]    Script Date: 29-May-23 10:23:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fact_StudentStrength]') AND type in (N'U'))
DROP TABLE [dbo].[Fact_StudentStrength]
GO

/****** Object:  Table [dbo].[Fact_StudentStrength]    Script Date: 29-May-23 10:23:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_StudentStrength](
	[StudentStrengthID] [int] IDENTITY(1,1) NOT NULL,
	[SubCityDist_ID] [int] NULL,
	[School_ID] [int] NULL,
	[ExtractedDate_ID] [int] NULL,
	[Electorate_ID] [int] NULL,
	[student_number] [nvarchar](max) NULL,
	[indigenous_pct] [nvarchar](max) NULL,
	[lbote_pct] [nvarchar](max) NULL,
	[ICSEA_Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fact_StudentStrength] PRIMARY KEY CLUSTERED 
(
	[StudentStrengthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_StudentStrength]  WITH CHECK ADD  CONSTRAINT [FK_Fact_StudentStrength_Dim_Electorate] FOREIGN KEY([Electorate_ID])
REFERENCES [dbo].[Dim_Electorate] ([Electorate_ID])
GO

ALTER TABLE [dbo].[Fact_StudentStrength] CHECK CONSTRAINT [FK_Fact_StudentStrength_Dim_Electorate]
GO

ALTER TABLE [dbo].[Fact_StudentStrength]  WITH CHECK ADD  CONSTRAINT [FK_Fact_StudentStrength_Dim_ExtractedDate] FOREIGN KEY([ExtractedDate_ID])
REFERENCES [dbo].[Dim_ExtractedDate] ([ExtractedDate_ID])
GO

ALTER TABLE [dbo].[Fact_StudentStrength] CHECK CONSTRAINT [FK_Fact_StudentStrength_Dim_ExtractedDate]
GO

ALTER TABLE [dbo].[Fact_StudentStrength]  WITH CHECK ADD  CONSTRAINT [FK_Fact_StudentStrength_Dim_School] FOREIGN KEY([School_ID])
REFERENCES [dbo].[Dim_School] ([School_ID])
GO

ALTER TABLE [dbo].[Fact_StudentStrength] CHECK CONSTRAINT [FK_Fact_StudentStrength_Dim_School]
GO

ALTER TABLE [dbo].[Fact_StudentStrength]  WITH CHECK ADD  CONSTRAINT [FK_Fact_StudentStrength_Dim_SubCityDist] FOREIGN KEY([SubCityDist_ID])
REFERENCES [dbo].[Dim_SubCityDist] ([SubCityDist_ID])
GO

ALTER TABLE [dbo].[Fact_StudentStrength] CHECK CONSTRAINT [FK_Fact_StudentStrength_Dim_SubCityDist]
GO



