/* 회원 */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* 호스트 */
DROP TABLE host 
	CASCADE CONSTRAINTS;

/* 컨택 */
DROP TABLE contact 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE cmt 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE notice 
	CASCADE CONSTRAINTS;

/* 매출액 */
DROP TABLE account 
	CASCADE CONSTRAINTS;

/* 찜 */
DROP TABLE bookmark 
	CASCADE CONSTRAINTS;

/* 입찰내역 */
DROP TABLE contact_history 
	CASCADE CONSTRAINTS;

/* 이메일인증 */
DROP TABLE email_auth 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE member (
	member_id NUMBER NOT NULL, /* 회원번호 */
	name VARCHAR2(10) NOT NULL, /* 이름 */
	email VARCHAR2(30) NOT NULL, /* 이메일 */
	password VARCHAR2(30) NOT NULL, /* 비밀번호 */
	tel NUMBER(30), /* 휴대폰번호 */
	auth NUMBER(1), /* 회원등급 */
	join_date DATE, /* 가입일자 */
	last_conn_date VARCHAR2(30) NOT NULL /* 최근접속일 */
);

/* 호스트 */
CREATE TABLE host (
	host_id NUMBER NOT NULL, /* 호스트번호 */
	host_pic VARCHAR2(30), /* 프로필사진 */
	company VARCHAR2(30), /* 회사 */
	uni VARCHAR2(30), /* 대학교 */
	host_value NUMBER, /* 수익 */
	write_date DATE, /* 신청일자 */
	auth_file VARCHAR2(30), /* 인증파일 */
	content VARCHAR2(2000), /* 소개 */
	result VARCHAR2(30) /* 결과 */
);

/* 컨택 */
CREATE TABLE contact (
	contact_id NUMBER NOT NULL, /* 컨택번호 */
	host_id NUMBER NOT NULL, /* 호스트번호 */
	guest_id NUMBER, /* 게스트번호 */
	regi_date VARCHAR2(30), /* 등록일 */
	contact_intro VARCHAR2(500), /* 컨택 소개 */
	store_name VARCHAR2(50) NOT NULL, /* 상호명 */
	location VARCHAR2(100) NOT NULL, /* 주소 */
	meeting_time VARCHAR2(30), /* 시간 */
	start_value NUMBER NOT NULL, /* 시작가 */
	last_value NUMBER NOT NULL, /* 최종가격 */
	qr_check NUMBER(1) /* 만남확인 */
);

/* 댓글 */
CREATE TABLE cmt (
	cmt_id NUMBER NOT NULL, /* 댓글번호 */
	host_id NUMBER NOT NULL, /* 호스트번호 */
	guest_id NUMBER NOT NULL, /* 회원번호 */
	write_date DATE, /* 등록일 */
	content VARCHAR2(200) /* 댓글내용 */
);

/* 공지사항 */
CREATE TABLE notice (
	notice_no NUMBER NOT NULL, /* 공지사항번호 */
	no_write_date DATE, /* 등록일 */
	subject VARCHAR2(50), /* 제목 */
	contents VARCHAR2(3000) /* 내용 */
);

/* 매출액 */
CREATE TABLE account (
	contact_id NUMBER NOT NULL, /* 컨택번호 */
	sales NUMBER /* 매출액 */
);

/* 찜 */
CREATE TABLE bookmark (
	host_id NUMBER NOT NULL, /* 호스트번호 */
	guest_id NUMBER /* 게스트번호 */
);

/* 입찰내역 */
CREATE TABLE contact_history (
	contact_id NUMBER NOT NULL, /* 컨택번호 */
	guest_id NUMBER, /* 게스트번호 */
	price NUMBER, /* 가격 */
	bid_time VARCHAR2(30) /* 입찰시간 */
);

/* 이메일인증 */
CREATE TABLE email_auth (
	email VARCHAR2(30) NOT NULL, /* 이메일 */
	auth_key VARCHAR2(30) NOT NULL, /* 인증키 */
	auth_status NUMBER(1) NOT NULL /* 상태 */
);

commit;

