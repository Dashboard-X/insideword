USE [master]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/04/2011 10:41:40 ******/
DROP LOGIN [BUILTIN\Users]
GO
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
