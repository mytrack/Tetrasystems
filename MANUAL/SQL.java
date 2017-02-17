<<SRT_TO_MYSQL__OPERATION





1)
mysql -u root -p (mysql) .... @mysqlconf @mymysql @my-sql

-------------------------------------------------

DROP DATABASE test;
CREATE DATABASE test;

use test

DROP TABLE IF EXISTS toc;
CREATE TABLE toc (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 language_table    	 int,-- TOC 언어테이블
 content_index       int,-- TOC 컨텐트 인덱스
 content_recordsize  int,-- TOC 컨텐트 레코드크기
 totalrecord_index   int,-- 전체레코드 인덱스
 title              text,-- 제목
 category           text,-- 분류
 tag                text,-- 태그
 url	            text,-- youtube url
 filename           text -- srt 파일이름
);

DROP TABLE IF EXISTS srt_eng;
CREATE TABLE srt_eng (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 rec_index        int,-- 레코드 인덱스
 rec_start_time  text,-- 레코드 시작시간
 rec_end_time  	 text,-- 레코드 종료시간
 rec_text        text -- 레코드 텍스트
);

DROP TABLE IF EXISTS srt_kor;
CREATE TABLE srt_kor (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 rec_index        int,-- 레코드 인덱스
 rec_start_time  text,-- 레코드 시작시간
 rec_end_time  	 text,-- 레코드 종료시간
 rec_text        text -- 레코드 텍스트
);

-------------------------------------------------



여기까지 db생성 초기 수작업
이때 status 도 한번 보는 것도 좋다. latin -> utf8


2)
_www/FileUpload/uapp/app.py

이파일에서 테스트 or 정식 DB 설정한다. 

def insert_srt_to_mysql(): 
	#conn = pymysql.connect(host='localhost', user='root', password='root', db='srt', charset='utf8')

clean.sh -> launch.sh 후 파일 업로드









SRT_TO_MYSQL__OPERATION
