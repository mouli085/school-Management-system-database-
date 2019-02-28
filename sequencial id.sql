drop sequence seq1;

CREATE SEQUENCE SEQ1
start with 11001
increment by 1
nocache
nocycle;


CREATE OR REPLACE TRIGGER AUTOid
BEFORE INSERT ON teacher
FOR EACH ROW
BEGIN
SELECT SEQ1.NEXTVAL
INTO :NEW.id FROM DUAL;
END;
/