-- Function
-- Defaults at different positions
CREATE FUNCTION babel_2877_vu_prepare_func1 (@a int, @b varchar(10) = 'abc', @c money, @d float = 1.2)
RETURNS varchar(100) AS
BEGIN
	RETURN CAST(@a AS varchar(10)) + @b + CAST(@c AS varchar(10)) + CAST(@d AS varchar(10));
END
GO

-- All parameters with defaults
CREATE FUNCTION babel_2877_vu_prepare_func2 (@a int = 10, @b varchar(10) = 'abc', @c money = $5, @d float = 1.2)
RETURNS varchar(100) AS
BEGIN
	RETURN CAST(@a AS varchar(10)) + @b + CAST(@c AS varchar(10)) + CAST(@d AS varchar(10));
END
GO

-- No defaults
CREATE FUNCTION babel_2877_vu_prepare_func3 (@a int, @b varchar(10), @c money, @d float)
RETURNS varchar(100) AS
BEGIN
	RETURN CAST(@a AS varchar(10)) + @b + CAST(@c AS varchar(10)) + CAST(@d AS varchar(10));
END
GO

-- Procedure
-- Defaults at different positions
CREATE PROCEDURE babel_2877_vu_prepare_proc1 (@a int, @b varchar(10) = 'abc', @c money = $5, @d float)
AS
BEGIN
	SELECT @a, @b, @c, @d;
END
GO

-- All parameters with defaults
CREATE PROCEDURE babel_2877_vu_prepare_proc2 (@a int = 10, @b varchar(10) = 'abc', @c money = $5, @d float = 1.2)
AS
BEGIN
	SELECT @a, @b, @c, @d;
END
GO

-- No defaults
CREATE PROCEDURE babel_2877_vu_prepare_proc3 (@a int, @b varchar(10), @c money, @d float)
AS
BEGIN
	SELECT @a, @b, @c, @d;
END
GO

-- Views
CREATE VIEW babel_2877_vu_prepare_view1 AS SELECT babel_2877_vu_prepare_func1(20, 'def', $5);
GO

CREATE VIEW babel_2877_vu_prepare_view2 AS SELECT babel_2877_vu_prepare_func2();
GO

CREATE VIEW babel_2877_vu_prepare_view3 AS SELECT babel_2877_vu_prepare_func1(20, 'def', $10, 1.8);
GO