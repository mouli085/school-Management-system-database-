drop sequence seq;

CREATE SEQUENCE SEQ
start with 1001
increment by 1
nocache
nocycle;


CREATE OR REPLACE TRIGGER AUTONUMBER
BEFORE INSERT ON school
FOR EACH ROW
BEGIN
SELECT SEQ.NEXTVAL
INTO :NEW.id FROM DUAL;
END;
/