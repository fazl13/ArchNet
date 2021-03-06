/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
use [testbase];

select distinct a.id_structur1, b.name from (
SELECT [id_structur1] FROM [testbase].[dbo].[zao_stg_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_ag_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[asm_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_aps_east_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_aps_ngm_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_aps_north_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_aps_west_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_apvs_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_asm_archive] group by id_structur1
Union ALL 
SELECT [id_structur1] FROM [testbase].[dbo].[ooo_stg_autotrans_archive] group by id_structur1
) a Left join [testbase].[dbo].[zao_stg_structur] b ON a.id_structur1 = b.id

--order by id_structur1
