USE [THITN]
GO
/****** Object:  Table [dbo].[BAITHI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAITHI](
	[CAUHOI] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CAUSO] [int] NOT NULL,
	[NOIDUNG] [ntext] NULL,
	[A] [ntext] NULL,
	[B] [ntext] NULL,
	[C] [ntext] NULL,
	[D] [ntext] NULL,
	[DAPAN] [nchar](1) NOT NULL,
	[DACHON] [nchar](1) NULL,
	[MABD] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_9D5D2D725D984229A0E1FD35AD59CACF]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_BAITHI] PRIMARY KEY CLUSTERED 
(
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BANGDIEM]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANGDIEM](
	[MASV] [char](8) NOT NULL,
	[MAMH] [char](5) NOT NULL,
	[LAN] [smallint] NOT NULL,
	[NGAYTHI] [datetime] NULL,
	[DIEM] [float] NULL,
	[BAITHI] [ntext] NULL,
	[MABD] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_FD4D398D25B040C098110071CD2B9355]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_BANGDIEM] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAMH] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_MABD] UNIQUE NONCLUSTERED 
(
	[MABD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BODE]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BODE](
	[CAUHOI] [int] NOT NULL,
	[MAMH] [char](5) NULL,
	[TRINHDO] [char](1) NULL,
	[NOIDUNG] [ntext] NULL,
	[A] [ntext] NULL,
	[B] [ntext] NULL,
	[C] [ntext] NULL,
	[D] [ntext] NULL,
	[DAP_AN] [char](1) NULL,
	[MAGV] [char](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_B9A5E5C9D20D45F3890F27D22D214157]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_BODE] PRIMARY KEY CLUSTERED 
(
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COSO]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COSO](
	[MACS] [nchar](3) NOT NULL,
	[TENCS] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_DF96B858793949549D26E124C59CA464]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_COSO] PRIMARY KEY CLUSTERED 
(
	[MACS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [char](8) NOT NULL,
	[HO] [nvarchar](40) NULL,
	[TEN] [nvarchar](40) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[MAKH] [nchar](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_79DF205BFB594FD7AFAB751F398C5DA7]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAOVIEN_DANGKY]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN_DANGKY](
	[MAGV] [char](8) NULL,
	[MAMH] [char](5) NOT NULL,
	[MALOP] [char](8) NOT NULL,
	[TRINHDO] [char](1) NULL,
	[NGAYTHI] [datetime] NULL,
	[LAN] [smallint] NOT NULL,
	[SOCAUTHI] [smallint] NULL,
	[THOIGIAN] [smallint] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_67064326FA454EAD8F7DBE44434F2B43]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GIAOVIEN_DANGKY] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MALOP] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKH] [nchar](8) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[MACS] [nchar](3) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_7004C137C7524D72AA2067CFC4D1714A]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_TENKHOA] UNIQUE NONCLUSTERED 
(
	[TENKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [char](8) NOT NULL,
	[TENLOP] [nvarchar](40) NULL,
	[MAKH] [nchar](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_1C0DF5793749473D8ED919629D2C7081]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_TENLOP] UNIQUE NONCLUSTERED 
(
	[TENLOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](5) NOT NULL,
	[TENMH] [nvarchar](40) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_583F54FD17424752AF18BA8B280234B4]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_TENMH] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [char](8) NOT NULL,
	[HO] [nvarchar](40) NULL,
	[TEN] [nvarchar](10) NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](40) NULL,
	[MALOP] [char](8) NULL,
	[PASSWORD] [char](16) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_DD71DB824CA848F98EDE24145DF044BE]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_DS_COSO]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_DS_COSO]
AS
	SELECT TENCN=PUBS.description, TENSERVER=subscriber_server
	FROM sysmergepublications  PUBS, sysmergesubscriptions SUBS
	WHERE PUBS.pubid = SUBS.pubid AND  publisher <> subscriber_server AND PUBS.description <> N'TRACUU'


GO
ALTER TABLE [dbo].[BAITHI]  WITH CHECK ADD  CONSTRAINT [FK_BAITHI_BANGDIEM] FOREIGN KEY([MABD])
REFERENCES [dbo].[BANGDIEM] ([MABD])
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [FK_BAITHI_BANGDIEM]
GO
ALTER TABLE [dbo].[BAITHI]  WITH CHECK ADD  CONSTRAINT [FK_BAITHI_BODE] FOREIGN KEY([CAUSO])
REFERENCES [dbo].[BODE] ([CAUHOI])
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [FK_BAITHI_BODE]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_MONHOC]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_SINHVIEN1] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_SINHVIEN1]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [FK_BODE_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_GIAOVIEN]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [FK_BODE_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_MONHOC]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_KHOA]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN1] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN1]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC1] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC1]
GO
ALTER TABLE [dbo].[KHOA]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_COSO] FOREIGN KEY([MACS])
REFERENCES [dbo].[COSO] ([MACS])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KHOA] CHECK CONSTRAINT [FK_KHOA_COSO]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO
ALTER TABLE [dbo].[BAITHI]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_E74EA765_B1B7_42DC_9AE8_45CA87841982] CHECK NOT FOR REPLICATION (([CAUHOI]>=(1) AND [CAUHOI]<=(1001) OR [CAUHOI]>(1001) AND [CAUHOI]<=(2001)))
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [repl_identity_range_E74EA765_B1B7_42DC_9AE8_45CA87841982]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_DIEM] CHECK  (([DIEM]>=(0) AND [DIEM]<=(10)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_DIEM]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_LANTHI] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_LANTHI]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_F62A8C3F_02B3_4AD9_9B5C_4CEC4758E01C] CHECK NOT FOR REPLICATION (([MABD]>=(1) AND [MABD]<=(1001) OR [MABD]>(1001) AND [MABD]<=(2001)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [repl_identity_range_F62A8C3F_02B3_4AD9_9B5C_4CEC4758E01C]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_BODE] CHECK  (([TRINHDO]='A' OR [TRINHDO]='B' OR [TRINHDO]='C'))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_BODE]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_DAPAN] CHECK  (([DAP_AN]='D' OR ([DAP_AN]='C' OR ([DAP_AN]='B' OR [DAP_AN]='A'))))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_DAPAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_LAN] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_LAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_SOCAUTHI] CHECK  (([SOCAUTHI]>=(10) AND [SOCAUTHI]<=(100)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_SOCAUTHI]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_THOIGIAN] CHECK  (([THOIGIAN]>=(15) AND [THOIGIAN]<=(60)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_THOIGIAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_TRINHDO] CHECK  (([TRINHDO]='C' OR ([TRINHDO]='B' OR [TRINHDO]='A')))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_TRINHDO]
GO
/****** Object:  StoredProcedure [dbo].[SP_BAITHI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_BAITHI] @maLop nchar(8) , @maSV nchar(8), @maMH nchar(5), @lan smallint
AS 
	SET NOCOUNT ON
	DECLARE @ngayThi datetime, @soCauThi int, @trinhDo nchar(1), @maBD int, @res int, @subRes INT, @TrinhDoDuoi nchar(1),
	 @CauDuoi INT, @CauDuoi2 INT ,@CauCUng INT

	
	-- res: so cau tim duoc trong BO DE
	SET XACT_ABORT ON
	BEGIN TRANSACTION

	BEGIN TRY
	   -- select GIAOVIEN_DANGKI
		SELECT  @ngayThi = NGAYTHI, @soCauThi = SOCAUTHI, @trinhDo = TRINHDO 
		FROM GIAOVIEN_DANGKY 
		WHERE MAMH = @maMH AND MALOP = @maLop AND LAN = @lan
		
		--insert bang diem
		SAVE TRANSACTION _BANGDIEM

		INSERT INTO BANGDIEM(MASV, MAMH, LAN, NGAYTHI)
		VALUES (@maSV, @maMH, @lan, @ngayThi);
		SELECT @maBD = SCOPE_IDENTITY()

		-- random cau hoi + insert bai thi
		--Trình độ A
		IF(@trinhDo = 'A')
		BEGIN 
			SET @TrinhDoDuoi = 'B'
		END
		--Trình độ B
		ELSE IF(@trinhDo = 'B')
		BEGIN 
			SET @TrinhDoDuoi = 'C'
		END

		--Trình độ C
		IF(@trinhDo = 'C')
		BEGIN
		SELECT @res = COUNT(CAUHOI) FROM BODE 
		WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

			IF(@res >= @soCauThi)
			BEGIN
				INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
				SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				ORDER BY  NEWID()

				-- Trả về kết quả 
				--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD

			END
			else if(@res < @soCauThi)
			BEGIN
				SELECT @subRes = COUNT(CAUHOI) FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				
				if(@subRes < @soCauThi - @res)
					BEGIN
						ROLLBACK TRANSACTION _BANGDIEM
						RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
						--SELECT N'Không đủ số câu để tạo đề!' 
					END
				else if(@subRes >= @soCauThi - @res)
				BEGIN 
					INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
					SELECT TOP (@res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID()
		
					INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
					SELECT TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID()
					
					-- trả về kết quả
					--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD
				END
			END
		END
		-- trình độ A hoặc B
		ELSE 
        BEGIN
			-- đổ câu hỏi vào bảng tạm,lấy toàn bộ trình độ A
			SELECT  CAUHOI AS CAUHOI, NOIDUNG  AS NOIDUNG, A AS A,B AS B,C  AS  C,D  AS  D,DAP_AN AS DAP_AN, @maBD AS maBD INTO #DETHI FROM BODE 
			WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

			SELECT @res = COUNT(CAUHOI) FROM BODE --lưu Số lượng trình độ A
			WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
		
			IF(@res >= @soCauThi)--if(A>=100%)
			BEGIN
				INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
				SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM #DETHI -- lấy dữ liệu random từ bảng tạm #dethi
				ORDER BY  NEWID()

				-- Trả về kết quả để in câu hỏi thi ra màn hình
				--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD
			END

			ELSE if(@res >= @soCauThi*0.7) -- if(A>=70%)
			BEGIN
				insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- Lưu B
				SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				ORDER BY  NEWID() --random

				SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lấy số lượng B
				WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
				IF(@CauDuoi >= @soCauThi - @res)-- B >= 100% - A
					BEGIN 
						INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
						SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
						ORDER BY  NEWID()--random

						--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
					END
				ELSE --chuyển cơ sở
					BEGIN
						insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
						SELECT TOP (@soCauThi - @res - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID() --random

						SELECT @CauCUng = COUNT(CAUHOI) FROM BODE -- lưu số lượng câu A2
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
						SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số Lượng B2
						WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
						IF(@CauCUng >= @soCauThi - @res - @CauDuoi ) --if(A2 >= 100-A-B)
						BEGIN
							INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random

							--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
						END

						ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
						BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
							SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD) -- đổ dữ  liệu vào bài thi
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random

							--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
						END 

						ELSE 
						BEGIN
							ROLLBACK TRANSACTION _BANGDIEM
							RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							--SELECT N'Không đủ số câu để tạo đề!' 
						END

					END
			END
			ELSE 
			BEGIN -- đề cùng loại ở cơ sở gốc không đủ
				insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
				SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD  FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				ORDER BY  NEWID() --random

				SELECT @CauCUng = COUNT(CAUHOI) FROM BODE --Lưu số câu A2
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
				IF(@CauCUng >= @soCauThi - @res)-- A2 >= 100% - A
					BEGIN 
						INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
						SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
						ORDER BY  NEWID()--random

						--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
					END
				ELSE IF(@CauCUng >= @soCauThi*0.7 - @res) -- If(A2 >= 70%-A)
				BEGIN
						insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B cùng cs
						SELECT TOP (@soCauThi - @res - @CauCUng) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV  IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID() --random

						SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lưu số lượng B
						WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
						SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số lượng B2
						WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
						IF(@CauDuoi >= @soCauThi - @res - @CauCUng ) --if(B >= 100-A-A2)
						BEGIN
							INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD)
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random

							--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
						END

						ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
						BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
							SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							INSERT INTO BAITHI (CauSo, NoiDung, A, B, C, D,DapAn, MaBD) -- đổ dữ  liệu vào bài thi
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random

							--SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD -- In kết quả để thi
						END 

						ELSE 
						BEGIN
							ROLLBACK TRANSACTION _BANGDIEM
							RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							--SELECT N'Không đủ số câu để tạo đề!' 
						END

				END
				ELSE 
				BEGIN
					ROLLBACK TRANSACTION _BANGDIEM
					RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
					--SELECT N'Không đủ số câu để tạo đề!' 
				END
			END
		END-- end trình độ A hoặc B
		SELECT CauHoi,CauSo,NoiDung, A,B,C,D, DapAn, MaBD FROM BAITHI WHERE MaBD = @maBD 
COMMIT
	END TRY
	BEGIN CATCH
	   ROLLBACK
	   DECLARE @ErrorMessage VARCHAR(2000)
	   SELECT @ErrorMessage = 'Lỗi: ' + ERROR_MESSAGE()
	   --RAISERROR(@ErrorMessage, 16, 1)
	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[SP_DS_GV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DS_GV] AS
BEGIN
	select MAGV , HO +' '+TEN AS TEN 
	from GIAOVIEN 
	where MAKH in (SELECT MAKH FROM KHOA) 
END

GO
/****** Object:  StoredProcedure [dbo].[SP_DS_GV_DK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DS_GV_DK]
AS
BEGIN
	SELECT [MAGV]
      ,[MAMH]
      ,[MALOP]
      ,[TRINHDO]
      ,[NGAYTHI]
      ,[LAN]
      ,[SOCAUTHI]
      ,[THOIGIAN] 
	FROM [THITN].[dbo].[GIAOVIEN_DANGKY] 
END


GO
/****** Object:  StoredProcedure [dbo].[SP_DSKHOA]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DSKHOA]
AS
BEGIN
	SELECT * FROM dbo.KHOA 
END


GO
/****** Object:  StoredProcedure [dbo].[SP_DSLOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DSLOP]
AS
BEGIN
	SELECT * FROM dbo.LOP 
END


GO
/****** Object:  StoredProcedure [dbo].[SP_DSMON]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DSMON]
AS
BEGIN
	SELECT * FROM dbo.MONHOC 
END


GO
/****** Object:  StoredProcedure [dbo].[SP_GV_DK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GV_DK]
  @MAGV char(8),
  @MAMH char(5),
  @MALOP char(8),
  @TRINHDO char(1),
  @NGAYTHI datetime,
  @LAN smallint,
  @SOCAUTHI smallint,
  @THOIGIAN smallint
AS
		BEGIN
			INSERT [GIAOVIEN_DANGKY]
					( MAGV , MAMH , MALOP , TRINHDO ,NGAYTHI ,LAN ,SOCAUTHI ,THOIGIAN)
			VALUES  (@MAGV , @MAMH , @MALOP , @TRINHDO ,@NGAYTHI ,@LAN ,@SOCAUTHI ,@THOIGIAN )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_KT_CAUHOI_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_CAUHOI_TONTAI]
	@CAUHOI nchar(8),
	@MAGV nchar(8)

AS
BEGIN
	IF not exists(select CAUHOI from BODE where MAGV = @MAGV AND CAUHOI = @CAUHOI)
		raiserror ('câu hỏi này không thuộc về bạn',16,1)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_KT_GVDK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KT_GVDK]
@maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C' 
	
		set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))
		set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi
	if(@countQuestion <@soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			raiserror ('Không đủ câu hỏi để thi, vui lòng liên hệ giáo viên bộ môn để thêm cho đủ',16,1)
		end
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_KT_MA_SV_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_MA_SV_TONTAI]
	@MASV_CU nchar(8),
	@MASV nchar(8)

AS

BEGIN
	
	IF exists(select MASV from SINHVIEN where MASV = @MASV AND MASV != @MASV_CU)
		raiserror ('Mã sinh viên đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MASV from LINK3.THITN.dbo.SINHVIEN where MASV = @MASV AND MASV != @MASV_CU)
		raiserror ('Mã sinh viên đã tồn tại, vui lòng đặt mã khác',16,1)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_KT_MAGV_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_MAGV_TONTAI]
	@MAGV_CU nchar(8),
	@MAGV nchar(8)

AS

BEGIN
	IF exists(select MAGV from GIAOVIEN where MAGV = @MAGV AND MAGV != @MAGV_CU)
		raiserror ('Mã giáo viên đã tồn tại, vui lòng đặt mã khác',16,1)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_KT_MONHOC_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_MONHOC_TONTAI]
  @MAMH nchar(8),
  @TENMH nchar(8)
AS

BEGIN
	IF exists(select MAMH from MONHOC MH where MH.MAMH = @MAMH)
		raiserror ('Mã môn học đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select TENMH from MONHOC where TENMH = @TENMH)
		raiserror ('Tên môn học đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MAMH from LINK0.THITN.dbo.MONHOC where MAMH = @MAMH)
		raiserror ('Mã môn học đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select TENMH from LINK0.THITN.dbo.MONHOC where TENMH = @TENMH)
		raiserror ('Tên môn học đã tồn tại, vui lòng đặt tên khác',16,1)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_KT_TENMA_Khoa_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_TENMA_Khoa_TONTAI]
	@MAKH_CU nchar(8),
	@MAKH nchar(8),
	@TENKH nvarchar(50)

AS

BEGIN
	
	IF exists(select TENKH from KHOA where TENKH =@TENKH AND MAKH != @MAKH_CU )
		raiserror ('Tên khoa đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MAKH from KHOA where MAKH = @MAKH AND MAKH != @MAKH_CU)
		raiserror ('Mã khoa đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select TENKH from LINK0.THITN.dbo.khoa where TENKH =@TENKH AND MAKH != @MAKH_CU )
		raiserror ('Tên khoa đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MAKH from LINK0.THITN.dbo.khoa where MAKH = @MAKH AND MAKH != @MAKH_CU)
		raiserror ('Mã khoa đã tồn tại, vui lòng đặt tên khác',16,1)
END


GO
/****** Object:  StoredProcedure [dbo].[SP_KT_TENMA_LOP_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_TENMA_LOP_TONTAI]
	@MALOP_CU nchar(8),
	@MALOP nchar(8),
	@TENLOP nvarchar(50)

AS

BEGIN
	
	IF exists(select TENLOP from LOP where TENLOP =@TENLOP AND MALOP != @MALOP_CU )
		raiserror ('Tên lớp đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MALOP from LOP where MALOP = @MALOP AND MALOP != @MALOP_CU)
		raiserror ('Mã lớp đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select TENLOP from LINK3.THITN.dbo.LOP where TENLOP =@TENLOP AND MALOP != @MALOP_CU )
		raiserror ('Tên lớp đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MALOP from LINK3.THITN.dbo.LOP where MALOP = @MALOP AND MALOP != @MALOP_CU)
		raiserror ('Mã lớp đã tồn tại, vui lòng đặt tên khác',16,1)
END


GO
/****** Object:  StoredProcedure [dbo].[SP_KT_TENMA_MH_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_TENMA_MH_TONTAI]
	@MAMH_CU nchar(8),
	@MAMH nchar(8),
	@TENMH nvarchar(50)

AS

BEGIN
	
	IF exists(select TENMH from MONHOC where TENMH =@TENMH AND MAMH != @MAMH_CU )
		raiserror ('Tên môn học đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MAMH from MONHOC where MAMH = @MAMH AND MAMH != @MAMH_CU)
		raiserror ('Mã môn học đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select TENMH from LINK0.THITN.dbo.MONHOC where TENMH =@TENMH AND MAMH != @MAMH_CU )
		raiserror ('Tên môn học đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MAMH from LINK0.THITN.dbo.MONHOC where MAMH = @MAMH AND MAMH != @MAMH_CU)
		raiserror ('Mã môn học đã tồn tại, vui lòng đặt tên khác',16,1)
END


GO
/****** Object:  StoredProcedure [dbo].[SP_KT_XOA_GVDK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KT_XOA_GVDK]
  @MAMH nchar(5),
  @MALOP nchar(8),
  @LAN smallint
AS
BEGIN
	 
	SELECT BANGDIEM.MASV INTO ##tb_tamSV FROM dbo.SINHVIEN JOIN dbo.BANGDIEM ON BANGDIEM.MASV = SINHVIEN.MASV WHERE LAN = @LAN AND MAMH =@MAMH

	SELECT dbo.SINHVIEN.MALOP INTO ##tamLop FROM ##tb_tamSV JOIN dbo.SINHVIEN ON SINHVIEN.MASV = ##tb_tamSV.MASV GROUP BY MALOP

	IF exists(select * FROM ##tamLop WHERE MALOP = @MALOP)
		raiserror ('Thông tin của giảng viên đăng ký này đã tồn tại trong bảng bảng điểm, Không thể xóa',16,1)

	DROP TABLE ##tb_tamSV;
	DROP TABLE ##tamLop;
END

GO
/****** Object:  StoredProcedure [dbo].[SP_KTKhoa_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KTKhoa_TONTAI]
  @MAKH nchar(8),
  @TENKH nvarchar(50)
AS

BEGIN
	IF exists(select MAKH from LINK0.THITN.dbo.khoa where MAKH =@MAKH)
		raiserror ('Mã khoa đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select TENKH from LINK0.THITN.dbo.khoa where TENKH =@TENKH)
		raiserror ('Tên khoa đã tồn tại, vui lòng đặt tên khác',16,1)
END



GO
/****** Object:  StoredProcedure [dbo].[SP_KTLOP_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KTLOP_TONTAI]
  @MALOP nchar(8),
  @TENLOP nvarchar(50)
AS

BEGIN
	IF exists(select MALOP from LOP L where L.MALOP = @MALOP)
		raiserror ('Mã lớp đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select TENLOP from LOP L where L.TENLOP = @TENLOP)
		raiserror ('Tên lớp đã tồn tại, vui lòng đặt tên khác',16,1)
	ELSE IF exists(select MALOP from LINK3.THITN.dbo.LOP where MALOP = @MALOP)
		raiserror ('Mã lớp đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select TENLOP from LINK3.THITN.dbo.LOP where TENLOP = @TENLOP)
		raiserror ('Tên lớp đã tồn tại, vui lòng đặt tên khác',16,1)
END



GO
/****** Object:  StoredProcedure [dbo].[SP_KTSV_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_KTSV_TONTAI]
  @MASV nchar(8)
AS

BEGIN
	IF exists(select MASV from SINHVIEN SV where SV.MASV = @MASV)
		raiserror ('Mã sinh viên đã tồn tại, vui lòng đặt mã khác',16,1)
	ELSE IF exists(select MASV from LINK3.THITN.dbo.SINHVIEN where MASV = @MASV)
		raiserror ('Mã sinh viên đã tồn tại, vui lòng đặt mã khác',16,1)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LAY_CAU_HOI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LAY_CAU_HOI] @maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C' 
	
		set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))
		set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi
		
		--set @countQuestion = @countQuestionCungTrinhDo

	if(@countQuestion <@soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			Select('Khong du cau hoi de thi') as 'ERROR'
			return -1
		end
	
	-- tạo bảng tạm chưa các câu hỏi tại tất cả các site theo input ban đầu
	create table #AtSiteTable(
	CAUHOI int primary key,
	TRINHDO char(1),
	NOIDUNG ntext,
	A ntext,
	B ntext,
	C ntext,
	D ntext,
	DAP_AN nchar(1),
	)

	select * into #CungTrinhDoAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	select * into #TrinhDoDuoiAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	
	Insert into #AtSiteTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from #CungTrinhDoAtSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from #TrinhDoDuoiAtSiteTable 
	
	Declare @countCungTrinhDoAtSite int = (select count(*) from #CungTrinhDoAtSiteTable)
	Declare @countTrinhDoDuoiAtSite int = (select count(*) from #TrinhDoDuoiAtSiteTable)
	if((@countCungTrinhDoAtSite+@countTrinhDoDuoiAtSite) < @soCau OR @countCungTrinhDoAtSite < (@soCau*70/100))
		begin
			print 'here'
			select * into #CungTrinhDoOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))
			select * into #TrinhDoDuoiOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))

			Insert into #AtSiteTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from #CungTrinhDoOtherSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from #TrinhDoDuoiOtherSiteTable 
			drop table #CungTrinhDoOtherSiteTable
			drop table #TrinhDoDuoiOtherSiteTable
		end
	Declare @slCanLayCungTrinhDo int,@slCanLayTrinhDoDuoi int
		set @slCanLayCungTrinhDo = @soCau*70/100
		if ((@slCanLayCungTrinhDo + @countQuestionTrinhDoDuoi)<@soCau)
			set @slCanLayCungTrinhDo = @slCanLayCungTrinhDo + (@soCau - (@slCanLayCungTrinhDo+@countQuestionTrinhDoDuoi))
			set @slCanLayTrinhDoDuoi = @soCau - @slCanLayCungTrinhDo
		
	select top (@slCanLayCungTrinhDo) * into #temp1 from #AtSiteTable where TRINHDO = @trinhDo
	ORDER BY NEWID()
	
	select top (@slCanLayTrinhDoDuoi) * into #temp2 from #AtSiteTable where TRINHDO = @trinhDo2
	ORDER BY NEWID()


	select CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from #temp1
	UNION
	select CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from #temp2
	drop table #AtSiteTable
	drop table #CungTrinhDoAtSiteTable
	drop table #TrinhDoDuoiAtSiteTable
	drop table #temp1
	drop table #temp2
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LAY_DS_THI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LAY_DS_THI] @MASV nchar(8) , @MALOP nchar(8)
AS
BEGIN
	DECLARE @DATE_NOW datetime
	SET @DATE_NOW =CAST(GETDATE() AS DATE)
	(SELECT MAMH , LAN 
	INTO #TAMP
	FROM GIAOVIEN_DANGKY GVDK
	WHERE GVDK.MALOP = @MALOP
	EXCEPT
	SELECT MAMH , LAN 
	FROM BANGDIEM BD
	WHERE BD.MASV = @MASV)
	SELECT GVDK.MAMH  , NGAYTHI , SOCAUTHI , THOIGIAN , T.LAN ,TENMH ,HO+' '+TEN AS TENGV
	FROM GIAOVIEN_DANGKY GVDK
	INNER JOIN #TAMP T
	ON GVDK.MAMH = T.MAMH AND GVDK.LAN = T.LAN
	INNER JOIN MONHOC MH
	ON MH.MAMH = T.MAMH 
	INNER JOIN GIAOVIEN GV
	ON GVDK.MAGV = GV.MAGV 
	WHERE GVDK.NGAYTHI = @DATE_NOW
	DROP TABLE #TAMP
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LAY_LICH_THI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LAY_LICH_THI] @MASV nchar(8) , @MALOP nchar(8)
AS
BEGIN
	DECLARE @DATE_NOW datetime
	SET @DATE_NOW =CAST(GETDATE() AS DATE)
	(SELECT MAMH , LAN 
	INTO #TAMP
	FROM GIAOVIEN_DANGKY GVDK
	WHERE GVDK.MALOP = @MALOP
	EXCEPT
	SELECT MAMH , LAN 
	FROM BANGDIEM BD
	WHERE BD.MASV = @MASV)
	SELECT GVDK.MAMH  , NGAYTHI , SOCAUTHI , THOIGIAN , T.LAN ,TENMH ,HO+' '+TEN AS TENGV
	FROM GIAOVIEN_DANGKY GVDK
	INNER JOIN #TAMP T
	ON GVDK.MAMH = T.MAMH AND GVDK.LAN = T.LAN
	INNER JOIN MONHOC MH
	ON MH.MAMH = T.MAMH 
	INNER JOIN GIAOVIEN GV
	ON GVDK.MAGV = GV.MAGV 
	WHERE GVDK.NGAYTHI >= @DATE_NOW
	ORDER BY THOIGIAN DESC
	DROP TABLE #TAMP
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LAY_TT_DANGNHAP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_LAY_TT_DANGNHAP]
@TENLOGIN NVARCHAR (50)
AS
DECLARE @TENUSER NVARCHAR(50)
SELECT @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
 
 SELECT USERNAME = @TENUSER, 
  HOTEN = (SELECT HO+ ' '+ TEN FROM dbo.GIAOVIEN  WHERE MAGV = @TENUSER ),
   TENNHOM= NAME
   FROM sys.sysusers 
   WHERE UID = (SELECT GROUPUID 
                 FROM SYS.SYSMEMBERS 
                   WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
                                      WHERE NAME=@TENUSER))

GO
/****** Object:  StoredProcedure [dbo].[SP_LAY_TT_DANGNHAP_SV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_LAY_TT_DANGNHAP_SV] @MASV char(8) , @PASSWORD char(16)										
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM SINHVIEN SV where SV.MASV = @MASV AND SV.PASSWORD = @PASSWORD)											
	SELECT [MASV], HO +' '+ TEN as TENSV ,[NGAYSINH],[DIACHI],[MALOP] 
	FROM SINHVIEN SV 
	where SV.MASV = @MASV AND SV.PASSWORD = @PASSWORD;										
 ELSE											
	raiserror ('sai thông tin đăng nhập',16,1)					
end	

GO
/****** Object:  StoredProcedure [dbo].[SP_MA_GV_CHUA_TAO_TK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MA_GV_CHUA_TAO_TK] AS
BEGIN
	select MAGV , HO +' '+TEN AS TEN , DIACHI , MAKH 
	from GIAOVIEN 
	where MAGV not in (SELECT name FROM sys.sysusers) AND MAKH in (SELECT MAKH FROM KHOA) 
END

GO
/****** Object:  StoredProcedure [dbo].[SP_NHAP_DACHON]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_NHAP_DACHON](
	@CAUHOI int ,
	@DACHON nchar(1)
)
AS
    BEGIN
        UPDATE dbo.BAITHI 
		SET DACHON = @DACHON
		WHERE CAUHOI = @CAUHOI
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_NHAP_DIEM]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_NHAP_DIEM](
	@MASV char(8),
	@MAMH char(5),
	@LAN smallint ,
	@DIEM float
)
AS
    BEGIN
        UPDATE dbo.BANGDIEM 
		SET DIEM = @DIEM
		WHERE MABD = (SELECT MABD FROM BANGDIEM WHERE MASV = @MASV AND MAMH = @MAMH AND LAN = @LAN)
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUA_CAUHOI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUA_CAUHOI]
	@CAUHOI_CU int ,
	@CAUHOI int ,
	@MAMH char(5),
	@TRINHDO char(1),
	@NOIDUNG ntext,
	@A ntext,
	@B ntext,
	@C ntext,
	@D ntext,
	@DAP_AN char(1)
    AS
    BEGIN
        UPDATE dbo.BODE 
		SET CAUHOI= @CAUHOI , MAMH=@MAMH , TRINHDO=@TRINHDO , 
			NOIDUNG = @NOIDUNG , A=@A ,B=@B , C = @C ,D = @D ,DAP_AN =@DAP_AN
		WHERE CAUHOI = @CAUHOI_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUA_GV_DK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUA_GV_DK](
	@LAN_CU char(8),
	@MAMH_CU char(5),
	@MALOP_CU char(8),
	@MAGV char(8),
	@MAMH char(5),
	@MALOP char(8),
	@TRINHDO char(1),
	@NGAYTHI datetime,
	@LAN smallint,
	@SOCAUTHI smallint,
	@THOIGIAN smallint
)
    AS
    BEGIN
        UPDATE dbo.GIAOVIEN_DANGKY 
		SET MAGV = @MAGV , MAMH =@MAMH , MALOP = @MALOP ,TRINHDO = @TRINHDO , NGAYTHI = @NGAYTHI ,LAN =@LAN , SOCAUTHI =@SOCAUTHI , THOIGIAN =@THOIGIAN
		WHERE LAN = @LAN_CU AND MAMH =@MAMH_CU AND MALOP = @MALOP_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUAGV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUAGV](
	@MAGV_CU nchar(8) ,
	@MAGV nchar(8), 
	@HO nvarchar(40),
	@TEN nvarchar(40),
	@DIACHI nvarchar(50),
	@MAKH nchar(8)
)
    AS
    BEGIN
        UPDATE dbo.GIAOVIEN 
		SET MAGV = @MAGV , 
		HO = @HO ,
		TEN = @TEN ,
		DIACHI = @DIACHI,
		MAKH = @MAKH 
		WHERE MAGV = @MAGV_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUAKH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_SUAKH](@MAKH_CU nchar(8) ,@MAKH nchar(8), @TENKH nvarchar(40))
    AS
    BEGIN
        UPDATE dbo.KHOA 
		SET MAKH = @MAKH , TENKH = @TENKH 
		WHERE MAKH = @MAKH_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUALOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUALOP](@MALOP_CU nchar(8) ,@MALOP nchar(8), @TENLOP nvarchar(40),@MAKH nchar(8))
    AS
    BEGIN
        UPDATE dbo.LOP 
		SET MALOP = @MALOP , TENLOP = @TENLOP , MAKH = @MAKH
		WHERE MALOP = @MALOP_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUAMH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUAMH]
	@MAMH_CU nchar(8) ,
	@MAMH nchar(5),
	@TENMH nvarchar(40)
    AS
    BEGIN
        UPDATE dbo.MONHOC
		SET MAMH= @MAMH , TENMH=@TENMH 
		WHERE MAMH = @MAMH_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_SUASV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SUASV]
	@MASV_CU nchar(8) ,
	@MASV nchar(8),
	@HO nvarchar(40),
	@TEN nvarchar(10),
	@NGAYSINH datetime,
	@DIACHI nvarchar(40),
	@MALOP nchar(8),
	@PASSWORD char(16)
    AS
    BEGIN
        UPDATE dbo.SINHVIEN 
		SET MASV= @MASV , HO=@HO , TEN=@TEN , NGAYSINH=@NGAYSINH , DIACHI=@DIACHI ,MALOP=@MALOP , PASSWORD=@PASSWORD
		WHERE MASV = @MASV_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_TAI_BODE_THEO_GV_MON]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAI_BODE_THEO_GV_MON]
@MAGV CHAR(8) ,@MAMH CHAR(8)
AS
BEGIN
	SELECT [CAUHOI]
      ,[TRINHDO]
      ,[NOIDUNG]
      ,[A]
      ,[B]
      ,[C]
      ,[D]
      ,[DAP_AN]
	FROM dbo.BODE
	WHERE MAGV=@MAGV AND MAMH =@MAMH
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TAI_GIAOVIEN_THEO_MAKH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAI_GIAOVIEN_THEO_MAKH]
@MAKH CHAR(8)
AS

BEGIN
	SELECT MAGV , HO +' '+TEN AS TEN ,DIACHI ,MAKH
	FROM dbo.GIAOVIEN
	WHERE MAKH=@MAKH
	
END


GO
/****** Object:  StoredProcedure [dbo].[SP_TAI_GV_DK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_TAI_GV_DK]
	@LAN char(8),
	@MAMH char(5),
	@MALOP char(8)
AS
BEGIN
	SELECT [MAGV]
      ,[MAMH]
      ,[MALOP]
      ,[TRINHDO]
      ,[NGAYTHI]
      ,[LAN]
      ,[SOCAUTHI]
      ,[THOIGIAN] 
	FROM [THITN].[dbo].[GIAOVIEN_DANGKY] 
	WHERE LAN = @LAN AND MAMH =@MAMH AND MALOP = @MALOP
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TAI_SV_THEO_MALOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAI_SV_THEO_MALOP]
@MALOP CHAR(8)
AS

BEGIN
	SELECT MASV , HO +' '+TEN AS TEN ,NGAYSINH ,DIACHI ,MALOP
	FROM dbo.SINHVIEN
	WHERE MALOP = @MALOP
	
END



GO
/****** Object:  StoredProcedure [dbo].[sp_TaoTaiKhoan]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoTaiKhoan] @LGNAME VARCHAR(50),
	@PASS VARCHAR(50),
	@USERNAME VARCHAR(50),
	@ROLE VARCHAR(50)
AS
BEGIN
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'                     

  IF (@RET =1)  -- LOGIN NAME BI TRUNG
     raiserror ('tên đăng nhâp đã tồn tại, vui lòng đặt tên khác',16,1)

  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @USERNAME
  IF (@RET =1)  -- USER  NAME BI TRUNG


  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       raiserror ('Mã giảng viên đã tồn tại, vui lòng đặt mã khác',16,1)
  END

  EXEC sp_addrolemember @ROLE, @USERNAME

  IF @ROLE= 'TRUONG'  OR @ROLE ='COSO'
	BEGIN
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
	END
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TENTK_TONTAI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_TENTK_TONTAI]
	@TENDN nchar(8)
AS

BEGIN
	
	IF exists(SELECT * FROM sys.sysusers WHERE sid = SUSER_SID(@TENDN))
		raiserror ('Tên đăng nhâp đã tồn tại, vui lòng đặt tên khác',16,1)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_CAUHOI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_THEM_CAUHOI]
	@CAUHOI int ,
	@MAMH char(5),
	@TRINHDO char(1),
	@NOIDUNG ntext,
	@A ntext,
	@B ntext,
	@C ntext,
	@D ntext,
	@DAP_AN char(1),
	@MAGV char(8)
AS
		BEGIN
			INSERT dbo.BODE 
					(	[CAUHOI]
						,[MAMH]
					   ,[TRINHDO]
					   ,[NOIDUNG]
					   ,[A]
					   ,[B]
					   ,[C]
					   ,[D]
					   ,[DAP_AN]
					   ,[MAGV]
					 )
			VALUES  (   @CAUHOI,
						@MAMH ,
						@TRINHDO ,
						@NOIDUNG ,
						@A ,
						@B ,
						@C ,
						@D ,
						@DAP_AN ,
						@MAGV )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_MH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_THEM_MH]
  @MAMH nchar(8),
  @TENMH nvarchar(40)
AS
		BEGIN
			INSERT [MONHOC]
					( MAMH , TENMH  )
			VALUES  ( @MAMH,@TENMH )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEMGV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_THEMGV]
  @MAGV nchar(8),
  @HO nvarchar(40),
  @TEN nvarchar(40),
  @MAKH nchar(8),
  @DIACHI nvarchar(50)
AS
		BEGIN
			INSERT dbo.GIAOVIEN 
					( MAGV, HO , TEN , MAKH , DIACHI )
			VALUES  ( @MAGV, @HO , @TEN , @MAKH , @DIACHI )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEMKHOA]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_THEMKHOA]
  @MAKH nchar(8),
  @TENKH nvarchar(40)
AS
	DECLARE @MACS NVARCHAR(50)
	SELECT @MACS= MACS FROM dbo.COSO
		BEGIN
			INSERT dbo.KHOA 
					( MAKH, TENKH , MACS )
			VALUES  ( @MAKH,@TENKH,@MACS )
			RETURN 1;
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEMLOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_THEMLOP]
  @MALOP nchar(8),
  @TENLOP nvarchar(40),
  @MAKH nchar(8)
AS
		BEGIN
			INSERT dbo.LOP 
					( MALOP, TENLOP , MAKH )
			VALUES  ( @MALOP,@TENLOP,@MAKH )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_THEMSV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_THEMSV]
  @MASV nchar(8),
  @HO nvarchar(40),
  @TEN nvarchar(10),
  @NGAYSINH datetime,
  @DIACHI nvarchar(40),
  @MALOP nchar(8),
  @PASSWORD char(16)
AS
		BEGIN
			INSERT dbo.SINHVIEN 
					( MASV , HO , TEN , NGAYSINH , DIACHI ,MALOP , PASSWORD )
			VALUES  ( @MASV,@HO,@TEN,@NGAYSINH ,@DIACHI ,@MALOP , @PASSWORD )
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThiThu]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThiThu] 
	@maLop nchar(8) , @maMH nchar(5), @lan smallint

AS 
	DECLARE @soCauThi int, @trinhDo nchar(1), @maBD int, @res int, @subRes INT, @TrinhDoDuoi nchar(1),
	 @CauDuoi INT, @CauDuoi2 INT ,@CauCUng INT
	-- res: so cau tim duoc trong BO DE
	SET XACT_ABORT ON
	
	BEGIN TRY
		create table #temp1 
		(cauhoi int, noidung ntext, a ntext, b ntext, c ntext, d ntext, dap_an char(1))
		
	   -- select GIAOVIEN_DANGKI
		SELECT  @soCauThi = SOCAUTHI, @trinhDo = TRINHDO FROM GIAOVIEN_DANGKY WHERE MAMH = @maMH AND MALOP = @maLop AND LAN = @lan
	
		--Trình độ A
		IF(@trinhDo = 'A')
		BEGIN 
			SET @TrinhDoDuoi = 'B'
		END
		--Trình độ B
		ELSE IF(@trinhDo = 'B')
		BEGIN 
			SET @TrinhDoDuoi = 'C'
		END

		--Trình độ C
		IF(@trinhDo = 'C')
		BEGIN
			SELECT @res = COUNT(CAUHOI) FROM BODE 
			WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

				IF(@res >= @soCauThi)
				BEGIN
					SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID()
				END
				else if(@res < @soCauThi)
				BEGIN
					SELECT @subRes = COUNT(CAUHOI) FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				
					if(@subRes < @soCauThi - @res)
						BEGIN-- thiếu đề
							RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
						END
					else if(@subRes >= @soCauThi - @res)
					BEGIN 
						INSERT INTO  #temp1 (cauhoi , noidung, a , b , c , d , dap_an  )
						SELECT TOP (@res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID()
		
						INSERT INTO  #temp1 (cauhoi , noidung, a , b , c , d , dap_an  )
						SELECT TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID()
					
						SELECT * from #temp1 
					END
				END
			END
			-- trình độ A hoặc B
			ELSE 
			BEGIN
				-- đổ câu hỏi vào bảng tạm,lấy toàn bộ trình độ A
				SELECT  CAUHOI AS CAUHOI, NOIDUNG  AS NOIDUNG, A AS A,B AS B,C  AS  C,D  AS  D,DAP_AN AS DAP_AN, @maBD AS maBD INTO #DETHI FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

				SELECT @res = COUNT(CAUHOI) FROM BODE --lưu Số lượng trình độ A
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
		
				IF(@res >= @soCauThi)--if(A>=100%)
				BEGIN
					SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM #DETHI -- lấy dữ liệu random từ bảng tạm #dethi
					ORDER BY  NEWID()
				END

				ELSE if(@res >= @soCauThi*0.7) -- if(A>=70%)
				BEGIN
					insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- Lưu B
					SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD  FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID() --random

					SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lấy số lượng B
					WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
					IF(@CauDuoi >= @soCauThi - @res)-- B >= 100% - A
						BEGIN 
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random
						END
					ELSE --chuyển cơ sở
						BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
							SELECT TOP (@soCauThi - @res - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							SELECT @CauCUng = COUNT(CAUHOI) FROM BODE -- lưu số lượng câu A2
							WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số Lượng B2
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							IF(@CauCUng >= @soCauThi - @res - @CauDuoi ) --if(A2 >= 100-A-B)
							BEGIN
								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END

							ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
							BEGIN
								insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
								SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
								WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
								ORDER BY  NEWID() --random

								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END 

							ELSE 
							BEGIN-- thiếu đề
								RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							END

						END
				END
				ELSE 
				BEGIN -- đề cùng loại ở cơ sở gốc không đủ
					insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
					SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD  FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID() --random

					SELECT @CauCUng = COUNT(CAUHOI) FROM BODE --Lưu số câu A2
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
					IF(@CauCUng >= @soCauThi - @res)-- A2 >= 100% - A
						BEGIN 
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random
						END
					ELSE IF(@CauCUng >= @soCauThi*0.7 - @res) -- If(A2 >= 70%-A)
					BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B cùng cs
							SELECT TOP (@soCauThi - @res - @CauCUng) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV  IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lưu số lượng B
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số lượng B2
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							IF(@CauDuoi >= @soCauThi - @res - @CauCUng ) --if(B >= 100-A-A2)
							BEGIN
								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END

							ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
							BEGIN
								insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
								SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
								WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
								ORDER BY  NEWID() --random

								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END 

							ELSE 
							BEGIN-- thiếu đề
								RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							END

					END
					ELSE 
					BEGIN  -- thiếu đề
						RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
					END
				END
		END-- end trình độ A hoặc B
	END TRY
	BEGIN CATCH
	   DECLARE @ErrorMessage VARCHAR(2000)
	   SELECT @ErrorMessage = 'Lỗi: ' + ERROR_MESSAGE()
	   --RAISERROR(@ErrorMessage, 16, 1)
	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_CAUHOI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_XOA_CAUHOI]
  @CAUHOI nchar(8) , @MAGV nchar(8)
AS
		BEGIN
			IF exists(select CAUHOI from BODE where MAGV = @MAGV AND CAUHOI = @CAUHOI)
				DELETE dbo.BODE where CAUHOI=@CAUHOI AND MAGV = @MAGV
			ELSE raiserror ('câu hỏi này không thuộc về bạn',16,1)
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_GV_DK]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOA_GV_DK](
	@LAN_CU char(8),
	@MAMH_CU char(5),
	@MALOP_CU char(8)
)
    AS
    BEGIN
        DELETE dbo.GIAOVIEN_DANGKY
		WHERE LAN = @LAN_CU AND MAMH =@MAMH_CU AND MALOP = @MALOP_CU
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOAGV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_XOAGV]
  @MAGV nchar(8)
AS
		BEGIN
			DELETE dbo.GIAOVIEN where MAGV=@MAGV
			RETURN 0;
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOAKH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SP_XOAKH]
  @MAKH nchar(8)
AS
		BEGIN
			DELETE dbo.KHOA where MAKH=@MAKH
			RETURN 0;
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOALOP]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_XOALOP]
  @MALOP nchar(8)
AS
		BEGIN
			DELETE dbo.LOP where MALOP=@MALOP
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOAMH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_XOAMH]
  @MAMH nchar(5)
AS
		BEGIN
			DELETE dbo.MONHOC where MAMH = @MAMH
		END

GO
/****** Object:  StoredProcedure [dbo].[SP_XOASV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_XOASV]
  @MASV nchar(8)
AS
		BEGIN
			DELETE dbo.SINHVIEN where MASV=@MASV
		END

GO
/****** Object:  StoredProcedure [dbo].[TAI_BODE_THEO_CH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_BODE_THEO_CH] @CAUHOI char(8),@MAGV char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM BODE bd where bd.CAUHOI = @CAUHOI)											
	SELECT [CAUHOI]
      ,[MAMH]
      ,[TRINHDO]
      ,[NOIDUNG]
      ,[A]
      ,[B]
      ,[C]
      ,[D]
      ,[DAP_AN]
	FROM BODE bd where bd.CAUHOI = @CAUHOI AND bd.MAGV =@MAGV;										
 ELSE											
	raiserror ('không tìm thấy câu hỏi',16,1)					
end	

GO
/****** Object:  StoredProcedure [dbo].[TAI_GV_THEO_MAGV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_GV_THEO_MAGV] @MAGV char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM [GIAOVIEN] gv where gv.MAGV = @MAGV)											
	SELECT MAGV , HO , TEN , MAKH , DIACHI
	FROM [GIAOVIEN] gv where gv.MAGV = @MAGV;										
 ELSE											
	raiserror ('không tìm thấy giáo viên',16,1)					
end	

GO
/****** Object:  StoredProcedure [dbo].[TAI_KHOA_THEO_MA]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_KHOA_THEO_MA] @MAKH char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM [KHOA] k where k.MAKH = @MAKH)											
	SELECT * FROM [KHOA] k where k.MAKH = @MAKH;										
 ELSE											
	raiserror ('không tìm thấy khoa',16,1)					
end	
GO
/****** Object:  StoredProcedure [dbo].[TAI_KQ_THI]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_KQ_THI] @MASV char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM  BANGDIEM BD where BD.MASV = @MASV)											
	SELECT MASV ,MABD , MH.TENMH , BD.LAN , BD.DIEM  FROM BANGDIEM BD 
	INNER JOIN MONHOC MH
	ON  MH.MAMH = BD.MAMH
	where BD.MASV = @MASV
										
 ELSE											
	raiserror ('không tìm thấy',16,1)					
end	
GO
/****** Object:  StoredProcedure [dbo].[TAI_KQ_THI_CT]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[TAI_KQ_THI_CT] @MABD int											
as											
begin																				
	SELECT [NOIDUNG],[A] ,[B],[C] ,[D],[DAPAN],[DACHON],[MABD] 
	FROM BAITHI
	WHERE MABD = @MABD		
end	
GO
/****** Object:  StoredProcedure [dbo].[TAI_LOP_THEO_MA]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_LOP_THEO_MA] @MALOP char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM LOP L where L.MALOP = @MALOP)											
	SELECT MALOP , TENLOP, MAKH FROM LOP L where L.MALOP = @MALOP;										
 ELSE											
	raiserror ('không tìm thấy	lớp',16,1)					
end	
GO
/****** Object:  StoredProcedure [dbo].[TAI_MH_THEO_MAMH]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_MH_THEO_MAMH] @MAMH char(5)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM MONHOC MH where MH.MAMH = @MAMH)											
	SELECT MAMH , TENMH
	FROM MONHOC MH where MH.MAMH = @MAMH;										
 ELSE											
	raiserror ('không tìm thấy môn học',16,1)					
end	

GO
/****** Object:  StoredProcedure [dbo].[TAI_SV_THEO_MASV]    Script Date: 19/10/2021 1:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TAI_SV_THEO_MASV] @MASV char(8)											
as											
begin											
 											
 IF EXISTS ( SELECT 1 FROM SINHVIEN sv where sv.MASV = @MASV)											
	SELECT MASV , HO , TEN , NGAYSINH , DIACHI ,MALOP , sv.PASSWORD
	FROM SINHVIEN sv where sv.MASV = @MASV;										
 ELSE											
	raiserror ('không tìm thấy sinh viên',16,1)					
end	
GO
