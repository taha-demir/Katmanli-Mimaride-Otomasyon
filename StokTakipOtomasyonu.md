# Katmanli-Mimaride-Otomasyon
Bu çözüm iki projeden oluşmaktadır:
-	EnvanterProV2UI -> Windows Form
-	EnvanterProV2 -> Class Library

## EnvanterProV2UI projesi: 
7 Form’dan oluşmaktadır. Stok takibi, müşteri borç bilgileri takibi ve satış işlemleri yapılabilir. 


## EnvanterProV2: 
###### KomutTip:
Bir enum’dır. Select, Insert, Delete ve Update barındırır.

###### Tools Sınıfı: 
-	Baglanti Property’si: AppConfig’de tanımlanan ConnectionString’i döndürür.
-	Exec Metodu: İçine bir SqlCommand alır. Bağlantının durumunu kontrol eder. İçine gelen komutu çalıştırır.
-	ParametreOlustur Metodu: Bir Tip(Entity sınfı), bir SqlCommand, bir KomutTip ve aldığı tipin türünde bir Entity alır.
Reflection ile entity sınıfının tüm propertilerini gezerek Sql tarafındaki procedure’ler için parametre oluşturur.

###### IORM Interface’i:
İçindeki metotlar ORMBase sınıfında ezilecektir.

###### ORMBase Sınıfı:
Veritabanı işlemleri için gerekli metotlar bulunmaktadır. İçine bir Entity sınıfı alır.

###### Entity Klasörü:
İçinde veritabanındaki tüm tabloların sınıflarını barındırır. 
Her sınıf, içinde ilgili veritabanı tablosunun kolonlarına karşılık gelen property’ler barındırır. 
EnvanterProV2UI projesinde bu property’ler doldurulup Facade klasöründeki ilgili ORM sınıflarına veritabanı işlemleri için gönderilir.

###### Facade Klasörü:
Veritabanındaki her tabloya karşılık sınıflar barındırır. 
Her sınıf ORMBase sınıfından miras alır. 
İçine gelen Entity’leri ve komutları miras aldığı ORMBase sınıfndaki metotlar sayesinde veritabanına taşır.

###### Veri Tabanı:
Veri tabanındaki her tablonun CRUD işlemleri için Stored Procedure’ler yazılmıştır. 
C# tarafından sadece Procedure’lere ulaşılmaktadır.
İlişkili tablolarda “bit” türünde, “Aktif” adında sütunlar bulunmaktadır. 
Select Procedure’leri “Aktif” sütunu 1 olan kayıtları döndürmektedir. 
C#’dan silme komutu geldiğinde Trigger’lar devreye girer ve “Aktif” sütunlarını 0 olarak günceller. Kayıtlar silinmez.
