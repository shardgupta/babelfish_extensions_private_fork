CREATE TABLE t2266(c1 varchar(50))
go

CREATE PROCEDURE pr2266_text @p1 text AS
DECLARE tcursor CURSOR FOR SELECT c1 FROM t2266
OPEN tcursor
FETCH NEXT FROM tcursor INTO @p1
CLOSE tcursor
DEALLOCATE tcursor;
go

CREATE PROCEDURE pr2266_ntext @p1 ntext AS
DECLARE tcursor CURSOR FOR SELECT c1 FROM t2266
OPEN tcursor
FETCH NEXT FROM tcursor INTO @p1
CLOSE tcursor
DEALLOCATE tcursor;
go

CREATE PROCEDURE pr2266_image @p1 image AS
DECLARE tcursor CURSOR FOR SELECT c1 FROM t2266
OPEN tcursor
FETCH NEXT FROM tcursor INTO @p1
CLOSE tcursor
DEALLOCATE tcursor;
go

CREATE PROCEDURE pr2266_int @p1 int AS
DECLARE tcursor CURSOR FOR SELECT c1 FROM t2266
OPEN tcursor
FETCH NEXT FROM tcursor INTO @p1
CLOSE tcursor
DEALLOCATE tcursor;
go

CREATE PROCEDURE pr2266_varchar @p1 varchar AS
DECLARE tcursor CURSOR FOR SELECT c1 FROM t2266
OPEN tcursor
FETCH NEXT FROM tcursor INTO @p1
CLOSE tcursor
DEALLOCATE tcursor;
go

-- Cleanup
DROP PROC pr2266_text
go

DROP PROC pr2266_ntext
go

DROP PROC pr2266_image
go

DROP PROC pr2266_int
go

DROP PROC pr2266_varchar
go

DROP TABLE t2266
go