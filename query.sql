
n_id, id range, number of records, query:
-- 1: 6385978 - 6387547, 1383  => 1 
insert into mand_vagrant select * from mand wehre id = 6385978;
-- 2:  6048854 - 6386134, 4517  => 5 
insert into mand_vagrant select * from mand where id >= 6386130 AND id <= 6386134;
-- 3: 79570 - 12570467, 25657   => 200 
insert into mand_vagrant select * from mand where (id >= 79570 AND id < 79670); 
insert into mand_vagrant select * from mand where (id >= 12570367 AND id < 12570467);
-- 4 - nothing
-- 5 (pm): 35152 - 14240024, 5033688  => 3500 ==>
insert into mand_vagrant select * from mand where collection_id = 5 and document_category = 'PRIVILEGED' limit 800;
insert into mand_vagrant select * from mand where collection_id = 5 and document_category = 'CONFIDENTIAL' limit 1200;
insert into mand_vagrant select * from mand where collection_id = 5 and document_category = 'PUBLIC' limit 1500;

-- 6 (rj):52727 - 14240051, 2983128  ==> 1800 
insert into mand_vagrant select * from mand where collection_id = 6 and document_category = 'PRIVILEGED' limit 600;
insert into mand_vagrant select * from mand where collection_id = 6 and document_category = 'CONFIDENTIAL' limit 400;
insert into mand_vagrant select * from mand where collection_id = 6 and document_category = 'PUBLIC' limit 800;

-- 7 (ll): 70303 - 14240004, 882786 ==> 800
insert into mand_vagrant select * from mand where collection_id = 7 and document_category = 'PRIVILEGED' limit 250;
insert into mand_vagrant select * from mand where collection_id = 7 and document_category = 'CONFIDENTIAL' limit 250;
insert into mand_vagrant select * from mand where collection_id = 7 and document_category = 'PUBLIC' limit 300;

-- 8: (bw)112950 - 14239901, 864840  ==> 750
insert into mand_vagrant select * from mand where collection_id = 8 and document_category = 'PRIVILEGED' limit 200;
insert into mand_vagrant select * from mand where collection_id = 8 and document_category = 'CONFIDENTIAL' limit 200;
insert into mand_vagrant select * from mand where collection_id = 8 and document_category = 'PUBLIC' limit 350;

-- 9: (at)17576 - 14239860, 529085  ==> 500
insert into mand_vagrant select * from mand where collection_id = 9 and document_category = 'PRIVILEGED' limit 150;
insert into mand_vagrant select * from mand where collection_id = 9 and document_category = 'CONFIDENTIAL' limit 150;
insert into mand_vagrant select * from mand where collection_id = 9 and document_category = 'PUBLIC' limit 200;

-- 10(ti): 136241 = 9973688, 1507013 ==> 900
insert into mand_vagrant select * from mand where collection_id = 10 and document_category = 'PUBLIC' limit 900;

-- 11 (ct): 0 - 14236521      , 511836 ==> 512
insert into mand_vagrant select * from mand where collection_id = 11 and document_category = 'PUBLIC' limit 512;

-- 12 (mm): 48214 - 12998004  , 8974 ==> 7
insert into mand_vagrant select * from mand where collection_id = 12 and document_category = 'PRIVILEGED' limit 2;
insert into mand_vagrant select * from mand where collection_id = 12 and document_category = 'CONFIDENTIAL' limit 2;
insert into mand_vagrant select * from mand where collection_id = 12 and document_category = 'PUBLIC' limit 3;

-- 13 (lm): 447602 - 1859525  , 66649 ==> 50
insert into mand_vagrant select * from mand where collection_id = 13 and document_category = 'PUBLIC' limit 50;

-- 14 - nothing
-- 15 (ba)- 1701538 - 14080762 , 1607366 ==>1200
insert into mand_vagrant select * from mand where collection_id = 15 and document_category = 'PRIVILEGED' limit 400;
insert into mand_vagrant select * from mand where collection_id = 15 and document_category = 'CONFIDENTIAL' limit 400;
insert into mand_vagrant select * from mand where collection_id = 15 and document_category = 'PUBLIC' limit 400;

-- 16 (us)- 1859526 - 3069130  , 28582 ==> 20
insert into mand_vagrant select * from mand where collection_id = 16 and document_category = 'PUBLIC' limit 20;

-- 17 - 1727529 - 3290425  , 11442 ==> 9
insert into mand_vagrant select * from mand where collection_id = 17 and document_category = 'PUBLIC' limit 9;

-- 18 - 1777101 = 12564344 , 153146 => 100
insert into mand_vagrant select * from mand where collection_id = 18 and document_category = 'PUBLIC' limit 100;
-- 19 - 9798084 - 9801840  , 3757 ==> 3 
insert into mand_vagrant select * from mand where collection_id = 19 and document_category = 'PUBLIC' limit 3;
-- 20 - 12144724 - 12412887, 98 ==> 1
insert into mand_vagrant select * from mand where collection_id = 20 and document_category = 'PUBLIC' limit 1;
--21 - 12428717 - 12443665 , 12875 ==> 12
insert into mand_vagrant select * from mand where collection_id = 21 and document_category = 'PUBLIC' limit 8;
// 22 - nothing
