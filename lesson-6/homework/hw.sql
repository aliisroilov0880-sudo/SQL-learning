	 CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

     select * from InputTbl

	 select distinct
	      case when col1 < col2 then col1 else col2 end as col1,
	      case when col1 < col2 then col2 else col1 end as col2
	 from InputTbl
