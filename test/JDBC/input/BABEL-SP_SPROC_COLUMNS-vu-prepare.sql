DROP FUNCTION IF EXISTS babel_sp_sproc_columns_vu_prepare_net
GO
CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_net(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END
GO

DROP DATABASE IF EXISTS babel_sp_sproc_columns_vu_prepare_db1
GO
CREATE DATABASE babel_sp_sproc_columns_vu_prepare_db1
GO
USE babel_sp_sproc_columns_vu_prepare_db1
GO

DROP TABLE IF EXISTS babel_sp_sproc_columns_vu_prepare_t1
GO
CREATE TABLE babel_sp_sproc_columns_vu_prepare_t1(a INT)
GO

DROP PROCEDURE IF EXISTS babel_sp_sproc_columns_vu_prepare_select_all
GO
CREATE PROCEDURE babel_sp_sproc_columns_vu_prepare_select_all
AS
SELECT * FROM babel_sp_sproc_columns_vu_prepare_t1
GO

DROP PROCEDURE IF EXISTS babel_sp_sproc_columns_vu_prepare_select_all_with_parameter
GO
CREATE PROCEDURE babel_sp_sproc_columns_vu_prepare_select_all_with_parameter @id int
AS
BEGIN
SELECT * FROM babel_sp_sproc_columns_vu_prepare_t1 WHERE a = @id
END
GO

DROP PROCEDURE IF EXISTS babel_sp_sproc_columns_vu_prepare_mp_select_all
GO
CREATE PROCEDURE babel_sp_sproc_columns_vu_prepare_mp_select_all @MyId int, @MyVarChar varchar(256)
AS
BEGIN
SELECT * FROM babel_sp_sproc_columns_vu_prepare_t1 WHERE a = @id
END
GO

CREATE SCHEMA babel_sp_sproc_columns_vu_prepare_s1
GO

DROP FUNCTION IF EXISTS babel_sp_sproc_columns_vu_prepare_s1.positive_or_negative
GO

CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_s1.positive_or_negative (
@long DECIMAL(9,6)
)
RETURNS CHAR(4) AS
BEGIN
DECLARE @return_value CHAR(10);
SET @return_value = 'zero';
    IF (@long > 0.00) SET @return_value = 'positive';
    IF (@long < 0.00) SET @return_value = 'negative';

    RETURN @return_value
END;
GO

DROP FUNCTION IF EXISTS babel_sp_sproc_columns_vu_prepare_net
GO
CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_net(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END
GO

DROP FUNCTION IF EXISTS babel_sp_sproc_columns_vu_prepare_no_param_name
GO
CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_no_param_name(
    @ INT
)
RETURNS INT
AS 
BEGIN
    RETURN @
END
GO

DROP FUNCTION IF EXISTS babel_sp_sproc_columns_vu_prepare_table_value_func
GO
CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_table_value_func (
    @num INT
)
RETURNS TABLE
AS 
RETURN
SELECT a as b FROM babel_sp_sproc_columns_vu_prepare_t1 WHERE a > @num
GO

CREATE TYPE babel_sp_sproc_columns_vu_prepare_eyedees FROM int not NULL
go
CREATE TYPE babel_sp_sproc_columns_vu_prepare_Phone_Num FROM varchar(11) NOT NULL
go

CREATE PROCEDURE babel_sp_sproc_columns_vu_prepare_eyedees_proc @id babel_sp_sproc_columns_vu_prepare_eyedees
AS
SELECT  1
GO

CREATE PROCEDURE babel_sp_sproc_columns_vu_prepare_Phone_Num_proc @num babel_sp_sproc_columns_vu_prepare_Phone_Num
AS
SELECT  1
GO

CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_eyedees_func (
    @id babel_sp_sproc_columns_vu_prepare_eyedees
)
RETURNS babel_sp_sproc_columns_vu_prepare_eyedees AS
BEGIN
return @id
END
GO

CREATE FUNCTION babel_sp_sproc_columns_vu_prepare_PhoneNum_func (
    @Pn babel_sp_sproc_columns_vu_prepare_Phone_Num
)
RETURNS babel_sp_sproc_columns_vu_prepare_Phone_Num AS
BEGIN
return @Pn
END
GO