DELIMITER //

CREATE PROCEDURE procedure_TestData(OUT output Boolean)
BEGIN

# 登録したデータを取得する
DECLARE  curDatas CURSOR FOR SELECT Id, row()   FROM  $table ORDER BY  id;
# 一時保持用のID
DECLARE insertId VARCHAR;
#
DECLARE cnt INT; SET cnt = 1;
# 更新予定レコード数
DECLARE recordCnt INT; SET recordCnt = 1;

WHILE cnt < recordCnt DO

  # INSERT SQL here.

  SET cnt = cnt + 1;

END LOOP;

/*
OPEN curDatas;

LOOP

  FETCH curDatas INTO insertId;

  INSERT INTO $table SELECT insertId, row(), CURRENT_TIMESTAMP() FROM dual;

END LOOP;

CLOSE curDatas;
*/

END;
//
DELIMITER;
