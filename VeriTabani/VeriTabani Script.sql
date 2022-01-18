


CREATE SCHEMA dbo;

CREATE TABLE EYB.dbo.Urunler (
	id int IDENTITY(0,1) NOT NULL,
	urun_adi varchar(100) COLLATE Turkish_CI_AS NOT NULL,
	urun_cinsi varchar(100) COLLATE Turkish_CI_AS NOT NULL,
	urun_turu varchar(100) COLLATE Turkish_CI_AS NOT NULL,
	satis_fiyati decimal(38,0) NOT NULL,
	birim_adi varchar(100) COLLATE Turkish_CI_AS NOT NULL,
	tarih date NULL
);
