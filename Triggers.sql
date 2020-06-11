create trigger trg_UrunSil on Urunlers
instead of delete
as
	declare @ID int
	select @ID=UrunID from deleted
	update Urunlers set Aktif=0 where UrunID=@ID

create trigger trg_KategoriSil on Kategorilers
instead of delete
as
	declare @ID int
	select @ID=KategoriID from deleted
	update Kategorilers set Aktif=0 where KategoriID=@ID

create trigger trg_MarkaSil on Markalars
instead of delete
as
	declare @ID int
	select @ID=MarkaID from deleted
	update Markalars set Aktif=0 where MarkaID=@ID

create trigger trg_MusteriSil on Musteris
instead of delete
as
	declare @ID int
	select @ID=MusteriID from deleted
	update Musteris set Aktif=0 where MusteriID=@ID

create trigger trg_TedarikciSil on Tedarikcilers
instead of delete
as
	declare @ID int
	select @ID=TedarikciID from deleted
	update Tedarikcilers set Aktif=0 where TedarikciID=@ID
