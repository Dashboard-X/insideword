USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 06/04/2011 10:41:40 ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'R¥¡}OñæÒ7(SÓ`21¯H*~''§Zdý§4', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
