USE db1_sys_foreign_keys;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1_sys_foreign_keys') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

USE master;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_1_sys_foreign_keys') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_2_sys_foreign_keys');
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3_sys_foreign_keys') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

USE db1_sys_foreign_keys;
GO

select count(*) from sys.key_constraints where parent_object_id = object_id('fk_3_sys_foreign_keys') and type = 'PK';
GO

select count(*) from sys.foreign_keys where parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

select count(*) from sys.objects where type='F' and parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

select count(*) from sys.all_objects where type='F' and parent_object_id = object_id('fk_4_sys_foreign_keys');
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk1_pk1_id_fkey';
GO

SELECT key_index_id from sys.foreign_keys where name = 'fk1_pk1_id_fkey'
EXCEPT
SELECT index_id from sys.indexes where name = 'pk1_pkey'
GO

SELECT count(DISTINCT key_index_id) FROM sys.foreign_keys 
WHERE NAME = 'fk1_pk1_id_fkey'
AND key_index_id IN (SELECT index_id FROM sys.indexes WHERE NAME = 'pk1_pkey');
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk2_fk2_int_2_fkey';
GO

SELECT key_index_id from sys.foreign_keys where name = 'fk2_fk2_int_2_fkey'
EXCEPT 
SELECT index_id from sys.indexes where name = 'pk2_pk2_unique_int_1_key'
GO

SELECT count(DISTINCT key_index_id) FROM sys.foreign_keys 
WHERE NAME = 'fk2_fk2_int_2_fkey'
AND key_index_id IN (SELECT index_id FROM sys.indexes WHERE NAME = 'pk2_pk2_unique_int_1_key');
GO

SELECT COUNT(*) from sys.foreign_keys where name = 'fk3_pk3_int_1_pk3_int_2_fkey';
GO

SELECT key_index_id FROM sys.foreign_keys WHERE NAME = 'fk3_pk3_int_1_pk3_int_2_fkey'
EXCEPT
SELECT index_id FROM sys.indexes WHERE NAME = 'pk3_pkey'
GO

SELECT count(DISTINCT key_index_id) FROM sys.foreign_keys 
WHERE NAME = 'fk3_pk3_int_1_pk3_int_2_fkey'
AND key_index_id IN (SELECT index_id FROM sys.indexes WHERE NAME = 'pk3_pkey');
GO