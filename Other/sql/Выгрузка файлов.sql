/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT 'COPY \\SKY-SP-SQL1.STG.LAN\ArchiveScanFiles$\complect\archive\'+[file]+' D:\13\'
  FROM [Archive].[dbo].[complect_docversion]
  where main = 1 and id_archive in (  1,
2,
3,
12,
22,
24,
28,
32,
35,
38,
40,
42,
102,
103,
104,
105,
106,
207,
227,
230,
260,
261,
262,
263,
264,
265,
266,
267,
268,
271
) 