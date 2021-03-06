USE archive;

IF OBJECT_ID(N'tempdb..#children__doctree_id_doctree ', N'U') IS NOT NULL
  DROP TABLE #children__doctree_id_doctree;

IF OBJECT_ID(N'tempdb..#tempo', N'U') IS NOT NULL
DROP TABLE #tempo;

CREATE TABLE #children__doctree_id_doctree (child int);

INSERT #children__doctree_id_doctree
VALUES (7),(15),(2),(56),(50),(60),(11),(5574),(-1);

WHILE @@ROWCOUNT > 0 BEGIN
INSERT #children__doctree_id_doctree
SELECT a.id
FROM _doctree a
JOIN #children__doctree_id_doctree c ON a.id_parent = c.child
WHERE NOT EXISTS
    (SELECT 1
     FROM #children__doctree_id_doctree
     WHERE child = a.id) END;

CREATE TABLE #tempo(row_num int identity(1, 1) NOT NULL, id int NOT NULL);

INSERT INTO #tempo (id)
SELECT a.id
FROM
  (SELECT a.*
   FROM [zao_stg_archive] a
   WHERE a.del=0
     AND (a.[id_doctree] IN
            (SELECT child
             FROM #children__doctree_id_doctree))
     AND a.[date_doc]>= CONVERT(DATETIME,'01.01.2015 00:00',104) and a.[date_doc]<= CONVERT(DATETIME,'01.01.2016 00:00',104)) a
ORDER BY a.[id] ASC
OFFSET 0 ROW FETCH NEXT 300000 ROWS ONLY;

SELECT a.[id] as КодЭА,
       a.[date_upd] as ДатаРед,
       _user.[name] AS Оператор,
       _doctree.[name] AS Документ,
       a.[num_doc] as НомерДокумента,
       a.[date_doc] as ДатаДокумента,
       _doctype.[name] AS ВидДокумента,
       frm1.[name] AS КонтрАгент,
       a.[summ] as Сумма,
       a.[docpack] as Пакет,
       _prjcode.[code_new] AS КодПроекта,
       a.[id_parent] as СтаршийДокументID,
       zao_stg_archive.[num_doc] AS СтаршийДокументНомДок,
       zao_stg_person.[name] AS Исполнитель,
       zao_stg_depart.[name] AS Получатель,
       _state.[name] AS Состояние,
	   yn2.[name] as ПринятКучету,
       a.del
FROM [zao_stg_archive] a
LEFT JOIN _user ON a.[id_user] = _user.[id]
AND _user.del=0
LEFT JOIN _doctree ON a.[id_doctree] = _doctree.[id]
AND _doctree.del=0
LEFT JOIN _doctype ON a.[id_doctype] = _doctype.[id]
AND _doctype.del=0
LEFT JOIN _frm AS frm1 ON a.[id_frm_contr] = frm1.[id]
AND frm1.del=0
LEFT JOIN _prjcode ON a.[id_prjcode] = _prjcode.[id]
AND _prjcode.del=0
LEFT JOIN zao_stg_archive ON a.[id_parent] = zao_stg_archive.[id]
AND zao_stg_archive.del=0
LEFT JOIN zao_stg_person ON a.[id_perf] = zao_stg_person.[id]
AND zao_stg_person.del=0
LEFT JOIN zao_stg_depart ON a.[id_depart] = zao_stg_depart.[id]
AND zao_stg_depart.del=0
LEFT JOIN _state ON a.[id_state] = _state.[id]
AND _state.del=0
LEFT JOIN _yesno AS yn1 ON a.[hidden] = yn1.[id]
AND yn1.del=0
LEFT JOIN _yesno AS yn2 ON a.[accept] = yn2.[id]
AND yn2.del=0
WHERE a.id IN
    (SELECT id
     FROM #tempo) 