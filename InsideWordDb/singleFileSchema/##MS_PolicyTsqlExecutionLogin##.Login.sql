USE [master]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 06/04/2011 10:41:40 ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'Ý\N´+~q|ðÞbÒçÀ=4»öm!©¨#"', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
