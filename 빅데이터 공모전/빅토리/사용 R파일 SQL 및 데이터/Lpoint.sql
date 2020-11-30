/* 엑셀로 MASTER에서 건강식품만 필터링한 데이터와 PRODUCT에서 상품코드를 INNER JOIN 하여 구매한 건강식품 데이터 추출 과정 => HEALTH_BUY 테이블 생성 */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  HEALTHFOOD  H

ON P.PD_C=B.PD_C; 

/* HEALTH_BUY 테이블과 SESSION 테이블의 SESS_ID 값으로 조인하여 세션날짜와 총 페이지 조회수 */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN HEALTH_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (고객)들의 성별, 나이대 확인을 통하여 분석하기 위해 HEALTH_SESSION 과 CUSTOM 테이블 조인 */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN HEALTH_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/

/* 엑셀로 MASTER에서 퍼스널케어만 필터링한 데이터와 PRODUCT에서 상품코드를 INNER JOIN 하여 구매한 건강식품 데이터 추출 과정 => PERSONALCARE_BUY 테이블 생성 */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  PERSONALCARE  H

ON P.PD_C=B.PD_C; 

/* PERSONALCARE_BUY 테이블과 SESSION 테이블의 SESS_ID 값으로 조인하여 세션날짜와 총 페이지 조회수 => PERSONALCARE_SESSION 테이블 생성 */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN PERSONALCARE_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (고객)들의 성별, 나이대 확인을 통하여 분석하기 위해 PERSONALCARE_SESSION 과 CUSTOM 테이블 조인 */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN PERSONALCARE_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* 엑셀로 MASTER에서 애완용품만 필터링한 데이터와 PRODUCT에서 상품코드를 INNER JOIN 하여 구매한 건강식품 데이터 추출 과정 => PET_BUY 테이블 생성 */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  PET  H

ON P.PD_C=B.PD_C; 

/* PET_BUY 테이블과 SESSION 테이블의 SESS_ID 값으로 조인하여 세션날짜와 총 페이지 조회수 => PET_SESSION 테이블 생성*/
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN PET_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (고객)들의 성별, 나이대 확인을 통하여 분석하기 위해 PET_SESSION 과 CUSTOM 테이블 조인 */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN PET_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* 엑셀로 MASTER에서 냉동식품만 필터링한 데이터와 PRODUCT에서 상품코드를 INNER JOIN 하여 구매한 건강식품 데이터 추출 과정 => ICE_BUY 테이블 생성 */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN ICE  H

ON P.PD_C=B.PD_C; 

/* ICE_BUY 테이블과 SESSION 테이블의 SESS_ID 값으로 조인하여 세션날짜와 총 페이지 조회수  =>  ICE_SESSION 테이블 생성 */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN ICE_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (고객)들의 성별, 나이대 확인을 통하여 분석하기 위해 ICD_SESSION 과 CUSTOM 테이블 조인 */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT
FROM CUSTOM S INNER JOIN ICE_SESSION C
 ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
/* 엑셀로 MASTER에서 화장품/뷰티케어 만 필터링한 데이터와 PRODUCT에서 상품코드를 INNER JOIN 하여 구매한 건강식품 데이터 추출 과정 => BEAUTY_BUY 테이블 생성 */
SELECT  P.CLNT_ID, P.SESS_ID, P.PD_BUY_CT, H.PD_C, H.CLAC2_NM, H.CLAC3_NM

FROM PRODUCT P INNER JOIN  BEAUTY  H

ON P.PD_C=B.PD_C; 

/* BEAUTY_BUY 테이블과 SESSION 테이블의 SESS_ID 값으로 조인하여 세션날짜와 총 페이지 조회수 => BEAUTY_SESSION 테이블 생성 */
SELECT  S.SESS_DT, C.CLNT_ID, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, S.TOT_PAG_VIEW_CT

FROM SESSIONS S INNER JOIN BEAUTY_BUY C 

ON S.SESS_ID=C.SESS_ID;

/* CUSTOM (고객)들의 성별, 나이대 확인을 통하여 분석하기 위해 HEALTH_SESSION 과 CUSTOM 테이블 조인 */
SELECT  C.SESS_DT, C.CLNT_ID, S.CLNT_AGE, S.CLNT_GENDER, C.SESS_ID,  C.PD_C, C.CLAC2_NM, C.CLAC3_NM, C.PD_BUY_CT, C.TOT_PAG_VIEW_CT

FROM CUSTOM S INNER JOIN BEAUTY_SESSION C

ON S.CLNT_ID=C.CLNT_ID;
 
/*---------------------------------------------------------------------------------------------------------------------------------------*/
 




