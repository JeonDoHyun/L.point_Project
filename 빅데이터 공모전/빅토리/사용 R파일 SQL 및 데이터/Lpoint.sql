/* ������ MASTER���� �ǰ���ǰ�� ���͸��� �����Ϳ� PRODUCT���� ��ǰ�ڵ带 INNER JOIN �Ͽ� ������ �ǰ���ǰ ������ ���� ���� => HEALTH_BUY ���̺� ���� */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  HEALTHFOOD  H

ON P.PD_C=B.PD_C; 

/* HEALTH_BUY ���̺�� SESSION ���̺��� SESS_ID ������ �����Ͽ� ���ǳ�¥�� �� ������ ��ȸ�� */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN HEALTH_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (��)���� ����, ���̴� Ȯ���� ���Ͽ� �м��ϱ� ���� HEALTH_SESSION �� CUSTOM ���̺� ���� */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN HEALTH_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/

/* ������ MASTER���� �۽����ɾ ���͸��� �����Ϳ� PRODUCT���� ��ǰ�ڵ带 INNER JOIN �Ͽ� ������ �ǰ���ǰ ������ ���� ���� => PERSONALCARE_BUY ���̺� ���� */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  PERSONALCARE  H

ON P.PD_C=B.PD_C; 

/* PERSONALCARE_BUY ���̺�� SESSION ���̺��� SESS_ID ������ �����Ͽ� ���ǳ�¥�� �� ������ ��ȸ�� => PERSONALCARE_SESSION ���̺� ���� */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN PERSONALCARE_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (��)���� ����, ���̴� Ȯ���� ���Ͽ� �м��ϱ� ���� PERSONALCARE_SESSION �� CUSTOM ���̺� ���� */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN PERSONALCARE_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* ������ MASTER���� �ֿϿ�ǰ�� ���͸��� �����Ϳ� PRODUCT���� ��ǰ�ڵ带 INNER JOIN �Ͽ� ������ �ǰ���ǰ ������ ���� ���� => PET_BUY ���̺� ���� */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  PET  H

ON P.PD_C=B.PD_C; 

/* PET_BUY ���̺�� SESSION ���̺��� SESS_ID ������ �����Ͽ� ���ǳ�¥�� �� ������ ��ȸ�� => PET_SESSION ���̺� ����*/
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN PET_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (��)���� ����, ���̴� Ȯ���� ���Ͽ� �м��ϱ� ���� PET_SESSION �� CUSTOM ���̺� ���� */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN PET_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* ������ MASTER���� �õ���ǰ�� ���͸��� �����Ϳ� PRODUCT���� ��ǰ�ڵ带 INNER JOIN �Ͽ� ������ �ǰ���ǰ ������ ���� ���� => ICE_BUY ���̺� ���� */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN ICE  H

ON P.PD_C=B.PD_C; 

/* ICE_BUY ���̺�� SESSION ���̺��� SESS_ID ������ �����Ͽ� ���ǳ�¥�� �� ������ ��ȸ��  =>  ICE_SESSION ���̺� ���� */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN ICE_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (��)���� ����, ���̴� Ȯ���� ���Ͽ� �м��ϱ� ���� ICD_SESSION �� CUSTOM ���̺� ���� */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN ICE_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* ������ MASTER���� ȭ��ǰ/��Ƽ�ɾ� �� ���͸��� �����Ϳ� PRODUCT���� ��ǰ�ڵ带 INNER JOIN �Ͽ� ������ �ǰ���ǰ ������ ���� ���� => BEAUTY_BUY ���̺� ���� */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  BEAUTY  H

ON P.PD_C=B.PD_C; 

/* BEAUTY_BUY ���̺�� SESSION ���̺��� SESS_ID ������ �����Ͽ� ���ǳ�¥�� �� ������ ��ȸ�� => BEAUTY_SESSION ���̺� ���� */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN BEAUTY_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (��)���� ����, ���̴� Ȯ���� ���Ͽ� �м��ϱ� ���� HEALTH_SESSION �� CUSTOM ���̺� ���� */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT

FROM CUSTOM S INNER JOIN BEAUTY_SESSION C

ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
 




