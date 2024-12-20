-- 코드를 입력하세요
SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM ANIMAL_INS AS I JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE INSTR(I.SEX_UPON_INTAKE, "Intact") > 0
AND INSTR(O.SEX_UPON_OUTCOME, "Intact") = 0
ORDER BY 1;
