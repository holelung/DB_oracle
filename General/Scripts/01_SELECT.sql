/* SELECT
 * 
 * - 지정된 테이블에서 원하는 데이터가 존재하는
 * 	 행, 열을 선택해서 조회하는 SQL(구조적 질의 언어)
 * 
 * - 선택된 데이터 == 조회 결과 묶음 == RESULT SET
 * 
 * - 조회 결과는 0행 이상
 *   (조건에 맞는 행이 없을 수 있다!)
 */

/* [SELECT 작성법 - 1]
 * 2) SELECT * || 컬럼명 , ....
 * 1) FROM 테이블명;
 * 
 * - 지정된 테이블의 모든 행에서
 *   특정 열(컬럼)만 조회하기
 * */

-- EMPLOYEE 테이블에서
-- 모든 행의 이름(EMP_NAME), 급여(SALARY) 컬럼 조회
-- 결과창 숨기기 (^ + T)
SELECT EMP_NAME, SALARY  FROM EMPLOYEE;

-- EMPLOYEE 테이블에서
-- 모든 행(== 모든 사원)의 사번, 이름, 급여, 입사일 조회
SELECT EMP_ID, EMP_NAME, SALARY, HIRE_DATE FROM EMPLOYEE;

-- EMPLOYEE 테이블의
-- 모든 행, 모든 열(컬럼) 조회
-- * (asterisk) : "모든", "포함"을 나타내는 기호
SELECT * FROM EMPLOYEE;

-- DEPARTMENT 테이블에서
-- 부서코드, 부서명 조회
SELECT DEPT_ID, DEPT_TITLE FROM DEPARTMENT;

-- EMPLOYEE 테이블에서
-- 이름, 이메일, 전화번호 조회
SELECT EMP_NAME, EMAIL, PHONE FROM EMPLOYEE; 

/* 컬럼 값 산술 연산 */

/* 걸럼 값 : 행과 열이 교차되는 한 칸에 작성된 값
 * 
 * - SELECT문 작성 시
 *  SELECT절 컬럼명에 산술 연산을 작성하면
 *  조회 결과(RESULT SET)에서
 *  모든 행에 산술 연산이 적용된 컬럼 값이 조회된다!
 * */

-- EMPLOYEE 테이블에서
-- 모든 사원의 이름, 급여, 급여 + 100만원 조회

SELECT EMP_NAME, SALARY, SALARY + 1000000 FROM EMPLOYEE;

-- 모든 사람의 이름, 급여, 연봉
SELECT EMP_NAME, SALARY, SALARY * 12 AS SALARY_YEAR
FROM EMPLOYEE;

 ----------------------------------------------


/* SYSDATE / CURRENT_DATE
 * SYSTIMESTAMP / CURRENT_TIMESTAMP */

/* * DB는 시간/날짜 관련 데이터를 다룰 수 있도록하는 자료형 제공
 * 
 * - DATE 타입 : 년,월,일,시,분,초,요일 저장
 * 
 * - TIMESTAMP 타입 : 년,월,일,시,분,초,요일, ms, 지역 저장
 * 
 * - SYS(시스템) : 시스템이 설정된 시간 기반
 * - CURRENT : 현재 접속한 세션(사용자)의 시간 기반
 * 
 * - SYSDATE : 현재 시스템 시간 얻어오기
 * - CURRENT_DATE :  현재 사용자 계정 기반 시간 얻어오기
 * 
 * * DATE =?> TIMESTAMP 바꾸면 ms단위 + 지역 정보를 추가로 얻어옴 
 */
SELECT SYSDATE , CURRENT_DATE 
FROM DUAL;


SELECT SYSTIMESTAMP, CURRENT_TIMESTAMP FROM DUAL;


/* DUAL(DUmmy tAbLe) 테이블
 * - 가짜 테이블(임시테이블)
 * - 조회하려는 데이터가 실제 테이블에 저장된 데이터가 아닌 경우
 *   사용하는 임시 테이블
 * 
 * 
 */



-- 오늘(2/19)부터 2/28 까지 남은 일수
SELECT 
	TO_DATE('2025-02-28','YYYY-MM-DD')
	-TO_DATE('2025-02-19','YYYY-MM-DD') AS Dday
FROM
	DUAL;

-- 종강일(7/17) 까지 남은 일수 = 148
SELECT 
	TO_DATE('2025-07-17','YYYY-MM-DD')
	-TO_DATE('2025-02-19','YYYY-MM-DD') AS Dday
FROM
	DUAL;

-- 집가는 시간까지 얼마나 남았나
SELECT 
	(TO_DATE('2025-02-19 17:50:00', 'YYYY-MM-DD HH24:MI:SS')
	- CURRENT_DATE) *24 *60
FROM
	DUAL;

-- EMPLOYEE 테이블에서
-- 모든 사원의
-- 사번, 이름, 입사일, 현재까지 근무 일수, 연차 조회

SELECT 
	EMP_ID,
	EMP_NAME,
	HIRE_DATE ,
	FLOOR(CURRENT_DATE - HIRE_DATE) AS day_of_work, -- 내림처리(FLOOR)
	CEIL((CURRENT_DATE - HIRE_DATE) / 365) AS year_of_work -- 올림처리
FROM EMPLOYEE ;

-------------------------------------

/* 컬럼명 별칭(Alias) 지정하기  
 * 
 * [지정 방법]
 * 1) 컬럼명 AS 별칭   : 문자 O, 띄어쓰기X, 특수문자X
 * 
 * 2) 컬럼영 AS "별칭" : 문자 O, 띄어쓰기O, 특수문자O
 * 
 * * AS 구문은 생략 가능
 * 
 * * ORACLE에서 ""의 의미
 * - "" 내부에 작성된 글자 모양 그대로를 인식하라
 * 
 * ex) 문자열			오라클 인식 
 *     abc   ->  ABC, abc (대소문자 구분X)
 * 		"abc"  ->		abc     ("" 내부 작성된 모양으로만 인식)
 * 
 * 
 * */

-- EMPLOYEE 테이블에서 모든 사원의
-- 사번 이름 입사일 근무일수 연차 조회
-- 단, 별칭 꼭 지정
SELECT 
	EMP_ID AS 사번,
	EMP_NAME AS 이름,
	HIRE_DATE  입사일 ,
	FLOOR(CURRENT_DATE - HIRE_DATE) AS day_of_work, -- 내림처리(FLOOR)
	CEIL((CURRENT_DATE - HIRE_DATE) / 365) AS year_of_work -- 올림처리
FROM EMPLOYEE ;


-- EMPLOYEE 테이블에서
-- 모든 사원의 사번, 이름, 급여(원), 연봉(급여 *12) 조회
--  단, 칼럼명은 모두 별칭 적용
SELECT 
	EMP_ID 사번 ,
	EMP_NAME 이름 ,
	SALARY 월급 ,
	( SALARY * 12 ) AS 연봉
FROM EMPLOYEE; 


---------------------------------------

/* 연결 연산자(||)
 * - 두 컬럼값 또는 리터럴을 하나의 문자열로 연결할 때 사용
 */

SELECT 
	EMP_ID , EMP_NAME ,
	EMP_ID || EMP_NAME 
FROM EMPLOYEE;

------------------------------------
/* 리터럴 : 값(DATA)을 표기하는 방식(문법)
 * - NUMBER 타입 : 20, 1.12, -44 (정수,실수 표기)
 * - CHAR, VARCHAR2 타입(문자열) : 'AB', '가나다' (''홑따옴표)
 * 
 * * SELECT절에 리터럴으 작성하면
 * 	 조회결과(RESULT SET) 모든 행에 리터럴이 추가된다!
 * 
 * 
 */

SELECT 
	SALARY||'원' AS "급여"
FROM EMPLOYEE;



------------------------------
/* DISTINCT(별개의, 전혀다른)
 * 
 * - 조회 결과 집합(RESULT SET)에서
 *   DISTINCT가 지정된 컬럼에 중복된 값이 존재할 경우
 *   중복을 제거하고 한 번만 표시할 때 사용
 * 
 *   (중복된 데이터를 가진 행을 제거)
 */

-- EMPLOYEE 테이블에서
-- 모든 사원의 부서 코드(DEPT_CODE) 조회
SELECT 
	DEPT_CODE
FROM
	EMPLOYEE; -- 23행 조회

-- 사원들이 속한 부서 코드 조회
	--> 사원이 있는 부서만 조회
SELECT 
	DISTINCT DEPT_CODE
FROM
	EMPLOYEE; -- 7행 조회

	


























