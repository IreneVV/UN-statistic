﻿CREATE   PROCEDURE Book.SP_Work_Read
AS

IF OBJECT_ID('Book.Work') IS NOT NULL

SELECT * FROM Book.Work;

RETURN;
