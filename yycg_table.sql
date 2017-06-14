------------------------------------------------
-- Export file for user YYCG                  --
-- Created by Thinkpad on 2014/5/18, 20:20:18 --
------------------------------------------------

set define off
spool oracle_yycg20140518.log

prompt
prompt Creating table AREA_BACKUP
prompt ==========================
prompt
create table AREA_BACKUP
(
  areaid       VARCHAR2(128) not null,
  areacode     VARCHAR2(128),
  areaname     VARCHAR2(128) not null,
  arealevel    CHAR(1) not null,
  areafullname VARCHAR2(200),
  parentid     VARCHAR2(128) not null,
  vchar1       VARCHAR2(32),
  vchar2       VARCHAR2(32),
  vchar3       VARCHAR2(32),
  isused       CHAR(1) default 1
)
;
comment on column AREA_BACKUP.areaid
  is '????id';
comment on column AREA_BACKUP.areacode
  is '?????????????';
comment on column AREA_BACKUP.areaname
  is '????????';
comment on column AREA_BACKUP.arealevel
  is '?????1???????2???м???3??????';
comment on column AREA_BACKUP.areafullname
  is '???????';
comment on column AREA_BACKUP.parentid
  is '????????id';
comment on column AREA_BACKUP.isused
  is '???????1??????0???????';
alter table AREA_BACKUP
  add constraint PK_AREA primary key (AREAID);

prompt
prompt Creating table BASICINFO
prompt ========================
prompt
create table BASICINFO
(
  id      VARCHAR2(32) not null,
  name    VARCHAR2(200) not null,
  value   VARCHAR2(512) not null,
  type    VARCHAR2(20) not null,
  tag     VARCHAR2(30),
  isalive CHAR(1) not null,
  vchar1  VARCHAR2(32),
  vchar3  VARCHAR2(60),
  vchar2  VARCHAR2(32)
)
;
comment on table BASICINFO
  is '?????????????';
alter table BASICINFO
  add constraint PK_BASICINFO primary key (ID);

prompt
prompt Creating table BSS_SYS_AREA
prompt ===========================
prompt
create table BSS_SYS_AREA
(
  areaid       VARCHAR2(32) not null,
  areaname     VARCHAR2(128) not null,
  arealevel    NUMBER(8) not null,
  areafullname VARCHAR2(200),
  parentid     VARCHAR2(32),
  shortname    VARCHAR2(32),
  isunit       CHAR(1),
  lastupdate   VARCHAR2(14),
  yzcode       VARCHAR2(32),
  vchar1       VARCHAR2(300),
  vchar2       VARCHAR2(300),
  vchar3       VARCHAR2(300),
  vchar4       VARCHAR2(300),
  vchar5       VARCHAR2(300),
  vchar6       VARCHAR2(500)
)
;
alter table BSS_SYS_AREA
  add primary key (AREAID);

prompt
prompt Creating table BSS_SYS_DEPLOYNODE
prompt =================================
prompt
create table BSS_SYS_DEPLOYNODE
(
  nodeid    VARCHAR2(32) not null,
  name      VARCHAR2(200) not null,
  sysid     VARCHAR2(32) not null,
  url       VARCHAR2(200) not null,
  icon      VARCHAR2(500),
  showorder NUMBER(8) not null,
  vchar1    VARCHAR2(200),
  vchar6    VARCHAR2(500),
  vchar2    VARCHAR2(200),
  vchar3    VARCHAR2(200),
  vchar4    VARCHAR2(300),
  vchar5    VARCHAR2(300)
)
;
alter table BSS_SYS_DEPLOYNODE
  add primary key (NODEID);

prompt
prompt Creating table BSS_SYS_LOG
prompt ==========================
prompt
create table BSS_SYS_LOG
(
  logid       VARCHAR2(32) not null,
  username    VARCHAR2(64) not null,
  truename    VARCHAR2(20) not null,
  clientip    VARCHAR2(32),
  opertype    VARCHAR2(32) not null,
  modulename  VARCHAR2(32) not null,
  opercontent VARCHAR2(600),
  operdate    VARCHAR2(14) not null,
  vchar1      VARCHAR2(300),
  vchar2      VARCHAR2(300),
  vchar3      VARCHAR2(300),
  vchar4      VARCHAR2(300),
  vchar5      VARCHAR2(300),
  vchar6      VARCHAR2(500)
)
;
alter table BSS_SYS_LOG
  add primary key (LOGID);

prompt
prompt Creating table BSS_SYS_MODULE
prompt =============================
prompt
create table BSS_SYS_MODULE
(
  moduleid  VARCHAR2(32) not null,
  sysid     VARCHAR2(32) not null,
  name      VARCHAR2(64) not null,
  parentid  VARCHAR2(32) not null,
  url       VARCHAR2(200),
  icon      VARCHAR2(500),
  showorder NUMBER(8) not null,
  isused    CHAR(1) not null,
  vchar1    VARCHAR2(300),
  vchar2    VARCHAR2(300),
  vchar3    VARCHAR2(300),
  vchar4    VARCHAR2(300),
  vchar5    VARCHAR2(300),
  vchar6    VARCHAR2(500)
)
;
alter table BSS_SYS_MODULE
  add primary key (MODULEID);

prompt
prompt Creating table BSS_SYS_OPERATE
prompt ==============================
prompt
create table BSS_SYS_OPERATE
(
  operateid   VARCHAR2(32) not null,
  operatename VARCHAR2(100) not null,
  operatecode VARCHAR2(64),
  method      VARCHAR2(200),
  moduleid    VARCHAR2(32),
  icon        VARCHAR2(500),
  showorder   NUMBER(8) not null,
  vchar1      VARCHAR2(300),
  vchar2      VARCHAR2(300),
  vchar3      VARCHAR2(300),
  vchar4      VARCHAR2(300),
  vchar5      VARCHAR2(300),
  vchar6      VARCHAR2(500)
)
;
alter table BSS_SYS_OPERATE
  add primary key (OPERATEID);

prompt
prompt Creating table BSS_SYS_ROLE
prompt ===========================
prompt
create table BSS_SYS_ROLE
(
  roleid   VARCHAR2(32) not null,
  rolename VARCHAR2(128) not null,
  roledes  VARCHAR2(200),
  vchar1   VARCHAR2(300),
  vchar2   VARCHAR2(300),
  vchar3   VARCHAR2(300),
  vchar4   VARCHAR2(300),
  vchar5   VARCHAR2(300),
  vchar6   VARCHAR2(500)
)
;
alter table BSS_SYS_ROLE
  add primary key (ROLEID);

prompt
prompt Creating table BSS_SYS_ROLEMODULE
prompt =================================
prompt
create table BSS_SYS_ROLEMODULE
(
  rmid     VARCHAR2(32) not null,
  rnid     VARCHAR2(32) not null,
  moduleid VARCHAR2(32) not null,
  vchar1   VARCHAR2(100),
  vchar2   VARCHAR2(100),
  vchar3   VARCHAR2(200),
  vchar4   VARCHAR2(200)
)
;
alter table BSS_SYS_ROLEMODULE
  add primary key (RMID);

prompt
prompt Creating table BSS_SYS_ROLENODE
prompt ===============================
prompt
create table BSS_SYS_ROLENODE
(
  rnid   VARCHAR2(32) not null,
  rsid   VARCHAR2(32) not null,
  nodeid VARCHAR2(32) not null,
  vchar1 VARCHAR2(100),
  vchar2 VARCHAR2(100),
  vchar3 VARCHAR2(200),
  vchar4 VARCHAR2(200)
)
;
alter table BSS_SYS_ROLENODE
  add primary key (RNID);

prompt
prompt Creating table BSS_SYS_ROLEOPERATE
prompt ==================================
prompt
create table BSS_SYS_ROLEOPERATE
(
  roid      VARCHAR2(32) not null,
  rmid      VARCHAR2(32) not null,
  operateid VARCHAR2(32) not null,
  vchar1    VARCHAR2(100),
  vchar2    VARCHAR2(100),
  vchar3    VARCHAR2(200),
  vchar4    VARCHAR2(200)
)
;
alter table BSS_SYS_ROLEOPERATE
  add primary key (ROID);

prompt
prompt Creating table BSS_SYS_ROLESYS
prompt ==============================
prompt
create table BSS_SYS_ROLESYS
(
  rsid   VARCHAR2(32) not null,
  roleid VARCHAR2(32) not null,
  sysid  VARCHAR2(32) not null,
  vchar1 VARCHAR2(100),
  vchar2 VARCHAR2(100),
  vchar3 VARCHAR2(200),
  vchar4 VARCHAR2(200)
)
;
alter table BSS_SYS_ROLESYS
  add primary key (RSID);

prompt
prompt Creating table BSS_SYS_SYSTEM
prompt =============================
prompt
create table BSS_SYS_SYSTEM
(
  sysid     VARCHAR2(32) not null,
  sysname   VARCHAR2(64) not null,
  url       VARCHAR2(200),
  icon      VARCHAR2(500) not null,
  showorder NUMBER(8),
  vchar1    VARCHAR2(300),
  vchar2    VARCHAR2(300),
  vchar3    VARCHAR2(300),
  vchar4    VARCHAR2(300),
  vchar5    VARCHAR2(300),
  vchar6    VARCHAR2(500)
)
;
alter table BSS_SYS_SYSTEM
  add primary key (SYSID);

prompt
prompt Creating table DICTINFO
prompt =======================
prompt
create table DICTINFO
(
  id         VARCHAR2(32) not null,
  dictcode   VARCHAR2(32),
  typecode   VARCHAR2(32) not null,
  info       VARCHAR2(64) not null,
  remark     VARCHAR2(256),
  updatetime VARCHAR2(16),
  dictsort   INTEGER,
  isenable   VARCHAR2(1) default '1' not null,
  valuetype  VARCHAR2(1)
)
;
comment on column DICTINFO.dictcode
  is '??????';
comment on column DICTINFO.typecode
  is '??????????';
comment on column DICTINFO.info
  is '??????';
comment on column DICTINFO.remark
  is '???';
comment on column DICTINFO.updatetime
  is '??????';
comment on column DICTINFO.dictsort
  is '????';
comment on column DICTINFO.isenable
  is '??????á?1?????0???';
alter table DICTINFO
  add constraint PK_DICTINFO primary key (ID);
alter table DICTINFO
  add constraint FK_TYPECODE foreign key (TYPECODE)
  references DICTTYPE (TYPECODE);

prompt
prompt Creating table DICTTYPE
prompt =======================
prompt
create table DICTTYPE
(
  typecode   VARCHAR2(32) not null,
  typename   VARCHAR2(64) not null,
  remark     VARCHAR2(256),
  typesort   INTEGER,
  codelength VARCHAR2(32)
)
;
comment on column DICTTYPE.typecode
  is '??????????';
comment on column DICTTYPE.typename
  is '???????????';
comment on column DICTTYPE.remark
  is '???';
comment on column DICTTYPE.typesort
  is '????';
comment on column DICTTYPE.codelength
  is 'dictcode?????????';
alter table DICTTYPE
  add constraint PK_DICTTYPE primary key (TYPECODE);

prompt
prompt Creating table ERROR_TASK_BACKUP
prompt ================================
prompt
create table ERROR_TASK_BACKUP
(
  taskid      VARCHAR2(32),
  wsurl       VARCHAR2(400),
  wsmethod    VARCHAR2(100),
  wsnamespace VARCHAR2(300),
  vchar1      VARCHAR2(300),
  vchar2      VARCHAR2(300),
  vchar3      VARCHAR2(300)
)
;

prompt
prompt Creating table YPXX
prompt ===================
prompt
create table YPXX
(
  id        VARCHAR2(32) not null,
  bm        VARCHAR2(32) not null,
  scqymc    VARCHAR2(128) not null,
  spmc      VARCHAR2(64) not null,
  zbjg      FLOAT not null,
  zpdz      VARCHAR2(128),
  pzwh      VARCHAR2(64),
  pzwhyxq   DATE,
  jky       CHAR(1),
  bzcz      VARCHAR2(64),
  bzdw      VARCHAR2(64),
  lsjg      FLOAT,
  lsjgcc    VARCHAR2(64),
  zlcc      VARCHAR2(32),
  zlccsm    VARCHAR2(200),
  ypjybg    CHAR(1),
  ypjybgbm  VARCHAR2(128),
  ypjybgyxq DATE,
  cpsm      CLOB,
  jyzt      CHAR(1) not null,
  vchar1    VARCHAR2(128),
  vchar2    VARCHAR2(128),
  vchar3    VARCHAR2(128),
  dw        VARCHAR2(32),
  mc        VARCHAR2(128),
  jx        VARCHAR2(32),
  gg        VARCHAR2(128),
  zhxs      VARCHAR2(16),
  pinyin    VARCHAR2(768),
  lb        VARCHAR2(32)
)
;
comment on column YPXX.bm
  is '???????';
comment on column YPXX.scqymc
  is '???????????';
comment on column YPXX.spmc
  is '?????';
comment on column YPXX.zbjg
  is '?б??';
comment on column YPXX.zpdz
  is '??????';
comment on column YPXX.pzwh
  is '??????';
comment on column YPXX.pzwhyxq
  is '????????Ч??';
comment on column YPXX.jky
  is '???????';
comment on column YPXX.bzcz
  is '???????';
comment on column YPXX.bzdw
  is '?????λ';
comment on column YPXX.lsjg
  is '?????????';
comment on column YPXX.lsjgcc
  is '????????';
comment on column YPXX.zlcc
  is '???????';
comment on column YPXX.zlccsm
  is '??????????';
comment on column YPXX.ypjybg
  is '?????????鱨??';
comment on column YPXX.ypjybgbm
  is '?????鱨????';
comment on column YPXX.ypjybgyxq
  is '?????鱨????Ч??';
comment on column YPXX.cpsm
  is '??????';
comment on column YPXX.jyzt
  is '????????';
comment on column YPXX.dw
  is '??λ';
comment on column YPXX.mc
  is '?????';
comment on column YPXX.jx
  is '????';
comment on column YPXX.gg
  is '???';
comment on column YPXX.zhxs
  is '??????';
comment on column YPXX.pinyin
  is '????????';
comment on column YPXX.lb
  is '?????';
alter table YPXX
  add constraint PK_YPXX primary key (ID);
alter table YPXX
  add constraint AK_YYXX_NEWINDEX1_YPXX unique (BM);
alter table YPXX
  add constraint AK_YYXX_NEWINDEX2_YPXX unique (SCQYMC, SPMC, MC, JX, GG, ZHXS);

prompt
prompt Creating table GYSYPML
prompt ======================
prompt
create table GYSYPML
(
  id        VARCHAR2(32) not null,
  ypxxid    VARCHAR2(32) not null,
  usergysid VARCHAR2(64) not null,
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64)
)
;
comment on table GYSYPML
  is '?????????';
comment on column GYSYPML.ypxxid
  is '?????id';
comment on column GYSYPML.usergysid
  is '?????id';
create unique index AK_GYSYPML_NEWINDEX1_GYSYPML on GYSYPML (YPXXID, USERGYSID);
alter table GYSYPML
  add constraint PK_GYSYPML primary key (ID);
alter table GYSYPML
  add constraint UNI_GYSYPML unique (YPXXID, USERGYSID);
alter table GYSYPML
  add constraint FK_GYSYPML foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table GYSYPML_CONTROL
prompt ==============================
prompt
create table GYSYPML_CONTROL
(
  id        VARCHAR2(32) not null,
  ypxxid    VARCHAR2(32) not null,
  usergysid VARCHAR2(64) not null,
  control   CHAR(1) not null,
  advice    VARCHAR2(128),
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64)
)
;
comment on table GYSYPML_CONTROL
  is '??????????????';
comment on column GYSYPML_CONTROL.ypxxid
  is '?????id';
comment on column GYSYPML_CONTROL.usergysid
  is '?????id';
comment on column GYSYPML_CONTROL.control
  is '????????????(1?????? ,2?????)';
comment on column GYSYPML_CONTROL.advice
  is '?????????';
create unique index AK_GYSYPMLCONTROL on GYSYPML_CONTROL (YPXXID, USERGYSID);
alter table GYSYPML_CONTROL
  add constraint PK_GYSYPMLCONTROL primary key (ID);
alter table GYSYPML_CONTROL
  add constraint UNI_GYSYPMLCONTROL unique (YPXXID, USERGYSID);
alter table GYSYPML_CONTROL
  add constraint FK_GYSYPMLCONTROL foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table SYSLOG
prompt =====================
prompt
create table SYSLOG
(
  id          VARCHAR2(64) not null,
  userid      VARCHAR2(32),
  operatedate DATE,
  userip      VARCHAR2(20),
  username    VARCHAR2(64),
  logtype     CHAR(1),
  messages    VARCHAR2(200)
)
;
comment on table SYSLOG
  is '????????????';
comment on column SYSLOG.userid
  is '??????';
comment on column SYSLOG.operatedate
  is '???????';
comment on column SYSLOG.userip
  is '???ip';
comment on column SYSLOG.username
  is '???????';
comment on column SYSLOG.logtype
  is '???????1:????????????2????????????';
comment on column SYSLOG.messages
  is '??????';
alter table SYSLOG
  add constraint PK_SYSLOG primary key (ID);

prompt
prompt Creating table SYSMODULE
prompt ========================
prompt
create table SYSMODULE
(
  moduleid   VARCHAR2(32) not null,
  modulename VARCHAR2(64) not null,
  parentid   VARCHAR2(32) not null,
  url        VARCHAR2(200),
  icon       VARCHAR2(128),
  showorder  NUMBER(8) not null,
  isused     CHAR(1) not null,
  vchar1     VARCHAR2(300),
  vchar2     VARCHAR2(300),
  vchar3     VARCHAR2(300),
  vchar4     VARCHAR2(300),
  vchar5     VARCHAR2(300),
  vchar6     VARCHAR2(500)
)
;
comment on column SYSMODULE.moduleid
  is '???id';
comment on column SYSMODULE.modulename
  is '???????';
comment on column SYSMODULE.parentid
  is '?????id';
comment on column SYSMODULE.url
  is '???url????????';
comment on column SYSMODULE.icon
  is '??????';
comment on column SYSMODULE.showorder
  is '???????????????????';
comment on column SYSMODULE.isused
  is '?????? 1:???? 2????????';
alter table SYSMODULE
  add constraint PK_SYSMODULE primary key (MODULEID);

prompt
prompt Creating table SYSOPERATION
prompt ===========================
prompt
create table SYSOPERATION
(
  operateid   VARCHAR2(32) not null,
  operatename VARCHAR2(64) not null,
  url         VARCHAR2(200),
  moduleid    VARCHAR2(32),
  icon        VARCHAR2(128),
  showorder   NUMBER(8) not null,
  vchar1      VARCHAR2(300),
  vchar2      VARCHAR2(300),
  vchar3      VARCHAR2(300),
  vchar4      VARCHAR2(300),
  vchar5      VARCHAR2(300),
  vchar6      VARCHAR2(500)
)
;
comment on table SYSOPERATION
  is '??????????';
comment on column SYSOPERATION.operateid
  is '????id';
comment on column SYSOPERATION.operatename
  is '????????';
comment on column SYSOPERATION.url
  is '??????';
comment on column SYSOPERATION.moduleid
  is '???????id';
comment on column SYSOPERATION.icon
  is '???';
comment on column SYSOPERATION.showorder
  is '??????';
alter table SYSOPERATION
  add constraint PK_SYSOPERTION primary key (OPERATEID);
alter table SYSOPERATION
  add constraint FK_SYSOPERA_REFERENCE_SYSMODUL foreign key (MODULEID)
  references SYSMODULE (MODULEID);

prompt
prompt Creating table SYSROLE
prompt ======================
prompt
create table SYSROLE
(
  id       VARCHAR2(32) not null,
  rolename VARCHAR2(64) not null,
  groupid  CHAR(1) not null,
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64)
)
;
comment on column SYSROLE.id
  is '???id';
comment on column SYSROLE.rolename
  is '???????';
comment on column SYSROLE.groupid
  is '???????????';
comment on column SYSROLE.vchar1
  is '????';
comment on column SYSROLE.vchar2
  is '????';
comment on column SYSROLE.vchar3
  is '????';
alter table SYSROLE
  add constraint PK_SYSROLE primary key (ID);

prompt
prompt Creating table SYSROLEMODULE
prompt ============================
prompt
create table SYSROLEMODULE
(
  roleid   VARCHAR2(32) not null,
  moduleid VARCHAR2(32) not null
)
;
comment on table SYSROLEMODULE
  is '???????????????';
comment on column SYSROLEMODULE.roleid
  is '???id??????????????';
comment on column SYSROLEMODULE.moduleid
  is '???id?????????????';
alter table SYSROLEMODULE
  add constraint PK_SYSROLEMODULE primary key (ROLEID, MODULEID);
alter table SYSROLEMODULE
  add constraint FK_SYSROLEM_REFERENCE_SYSMODUL foreign key (MODULEID)
  references SYSMODULE (MODULEID);

prompt
prompt Creating table SYSUSER
prompt ======================
prompt
create table SYSUSER
(
  id         VARCHAR2(32) not null,
  userid     VARCHAR2(20) not null,
  username   VARCHAR2(128) not null,
  groupid    CHAR(1) not null,
  pwd        VARCHAR2(64) not null,
  contact    VARCHAR2(128),
  addr       VARCHAR2(256),
  email      VARCHAR2(64),
  userstate  CHAR(1) default 1 not null,
  remark     VARCHAR2(256),
  createtime TIMESTAMP(6) default sysdate,
  sex        VARCHAR2(4),
  phone      VARCHAR2(20),
  movephone  VARCHAR2(11),
  fax        VARCHAR2(20),
  lastupdate VARCHAR2(14),
  vchar1     VARCHAR2(300),
  vchar2     VARCHAR2(300),
  vchar3     VARCHAR2(300),
  vchar4     VARCHAR2(300),
  vchar5     VARCHAR2(300),
  sysid      VARCHAR2(64)
)
;
comment on table SYSUSER
  is '?????';
comment on column SYSUSER.id
  is '????';
comment on column SYSUSER.userid
  is '??????';
comment on column SYSUSER.username
  is '???????';
comment on column SYSUSER.groupid
  is '?????? 0:???????,1???????? 2:????? 3???????? 4:??????';
comment on column SYSUSER.pwd
  is '????';
comment on column SYSUSER.contact
  is '??????';
comment on column SYSUSER.addr
  is '???';
comment on column SYSUSER.email
  is '???????';
comment on column SYSUSER.userstate
  is '???????1??????0???';
comment on column SYSUSER.remark
  is '???';
comment on column SYSUSER.createtime
  is '???????';
comment on column SYSUSER.sex
  is '???';
comment on column SYSUSER.phone
  is '?绰';
comment on column SYSUSER.movephone
  is '????绰';
comment on column SYSUSER.fax
  is '????';
comment on column SYSUSER.lastupdate
  is '?????????';
comment on column SYSUSER.sysid
  is '??λid';
alter table SYSUSER
  add constraint PK_SYSUSER primary key (ID);
alter table SYSUSER
  add constraint INDEX_UNIQUE_USERID unique (USERID);

prompt
prompt Creating table USERAREA
prompt =======================
prompt
create table USERAREA
(
  userid VARCHAR2(32) not null,
  areaid VARCHAR2(32) not null,
  vchar1 VARCHAR2(64),
  vchar2 VARCHAR2(64),
  vchar3 VARCHAR2(64)
)
;
comment on table USERAREA
  is '????????';
alter table USERAREA
  add constraint PK_USERAREA primary key (USERID, AREAID);
alter table USERAREA
  add constraint FK_USERAREA_REFERENCE_SYSUSER foreign key (USERID)
  references SYSUSER (ID);

prompt
prompt Creating table USERGYS
prompt ======================
prompt
create table USERGYS
(
  id      VARCHAR2(64) not null,
  mc      VARCHAR2(128) not null,
  lb      VARCHAR2(32),
  xkz     VARCHAR2(128),
  xkzyxq  VARCHAR2(128),
  lxr     VARCHAR2(64),
  dh      VARCHAR2(64),
  jyfw    VARCHAR2(256),
  zcdz    VARCHAR2(128),
  lxdz    VARCHAR2(128),
  yzbm    VARCHAR2(32),
  zzc     VARCHAR2(32),
  cz      VARCHAR2(64),
  frmc    VARCHAR2(16),
  frsfz   VARCHAR2(64),
  zczj    VARCHAR2(32),
  xse     VARCHAR2(32),
  dzyx    VARCHAR2(128),
  wz      VARCHAR2(256),
  dmzh    VARCHAR2(128),
  dmzhyxq VARCHAR2(128),
  yyzz    VARCHAR2(64),
  yyzzyxq VARCHAR2(128),
  xyz     CHAR(1),
  xyzbm   VARCHAR2(64),
  xyzyxq  VARCHAR2(128),
  gdzc    VARCHAR2(32),
  jj      CLOB,
  bz      VARCHAR2(200),
  vchar1  VARCHAR2(128),
  vchar2  VARCHAR2(128),
  vchar3  VARCHAR2(128),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128)
)
;
comment on column USERGYS.mc
  is '???????(????)';
comment on column USERGYS.lb
  is '??????';
comment on column USERGYS.xkz
  is '(???????)????';
comment on column USERGYS.xkzyxq
  is '???????????(??????)';
comment on column USERGYS.lxr
  is '????????';
comment on column USERGYS.dh
  is '???????绰';
comment on column USERGYS.jyfw
  is '?????Χ';
comment on column USERGYS.zcdz
  is '?????(????)';
comment on column USERGYS.lxdz
  is '??????';
comment on column USERGYS.yzbm
  is '????????';
comment on column USERGYS.zzc
  is '?????(???)';
comment on column USERGYS.cz
  is '???????';
comment on column USERGYS.frmc
  is '???????????';
comment on column USERGYS.frsfz
  is '????????';
comment on column USERGYS.zczj
  is '?????????(???)';
comment on column USERGYS.xse
  is '???????????(???)';
comment on column USERGYS.dzyx
  is '????????';
comment on column USERGYS.wz
  is '???';
comment on column USERGYS.dmzh
  is '??????????';
comment on column USERGYS.dmzhyxq
  is '?????????Ч??';
comment on column USERGYS.yyzz
  is '?????';
comment on column USERGYS.yyzzyxq
  is '???????Ч??';
comment on column USERGYS.xyz
  is '?????????????';
comment on column USERGYS.xyzbm
  is '???????';
comment on column USERGYS.xyzyxq
  is '???????Ч??';
comment on column USERGYS.gdzc
  is '?????????????';
comment on column USERGYS.jj
  is '??????(????)';
comment on column USERGYS.bz
  is '???';
alter table USERGYS
  add constraint PK_USERGYS primary key (ID);
alter table USERGYS
  add constraint AK_USERGYS_NEWINDEX2_USERGYS unique (MC);

prompt
prompt Creating table USERGYSAREA
prompt ==========================
prompt
create table USERGYSAREA
(
  usergysid VARCHAR2(64) not null,
  areaid    VARCHAR2(32) not null,
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64)
)
;
comment on table USERGYSAREA
  is '?????????????';
alter table USERGYSAREA
  add constraint PK_USERGYSAREA primary key (USERGYSID, AREAID);
alter table USERGYSAREA
  add constraint FK_USERGYSAREA_REF_USERGYS foreign key (USERGYSID)
  references USERGYS (ID);

prompt
prompt Creating table USERJD
prompt =====================
prompt
create table USERJD
(
  id     VARCHAR2(64) not null,
  mc     VARCHAR2(128) not null,
  dz     VARCHAR2(256),
  yzbm   VARCHAR2(32),
  xlr    VARCHAR2(64),
  dh     VARCHAR2(64),
  cz     VARCHAR2(64),
  dzyx   VARCHAR2(128),
  wz     VARCHAR2(128),
  vchar1 VARCHAR2(128),
  vchar2 VARCHAR2(128),
  vchar3 VARCHAR2(128),
  dq     VARCHAR2(1024)
)
;
comment on column USERJD.mc
  is '????????';
comment on column USERJD.dz
  is '??????';
comment on column USERJD.yzbm
  is '????????';
comment on column USERJD.xlr
  is '?????';
comment on column USERJD.dh
  is '????绰';
comment on column USERJD.cz
  is '????';
comment on column USERJD.dzyx
  is 'email';
comment on column USERJD.wz
  is '???';
comment on column USERJD.dq
  is '????????';
alter table USERJD
  add constraint PK_USERJD primary key (ID);
alter table USERJD
  add constraint AK_USERJD_NEWINDEX2_USERJD unique (MC);

prompt
prompt Creating table USERROLE
prompt =======================
prompt
create table USERROLE
(
  userid   VARCHAR2(32) not null,
  userrole VARCHAR2(32) not null,
  vchar1   VARCHAR2(64)
)
;
comment on table USERROLE
  is '????????';
comment on column USERROLE.userid
  is '???id??????????????';
comment on column USERROLE.userrole
  is '??????id??????????????';
alter table USERROLE
  add constraint PK_USERROLE primary key (USERID, USERROLE);
alter table USERROLE
  add constraint FK_USERROLE_REFERENCE_SYSROLE foreign key (USERROLE)
  references SYSROLE (ID);

prompt
prompt Creating table USERYY
prompt =====================
prompt
create table USERYY
(
  id     VARCHAR2(64) not null,
  mc     VARCHAR2(128) not null,
  dz     VARCHAR2(256),
  yzbm   VARCHAR2(32),
  dq     VARCHAR2(128),
  jb     VARCHAR2(32),
  cws    VARCHAR2(64),
  fyljg  CHAR(1),
  dh     VARCHAR2(64),
  yjkdh  VARCHAR2(64),
  lb     VARCHAR2(64),
  ypsr   VARCHAR2(32),
  ywsr   VARCHAR2(32),
  cz     VARCHAR2(64),
  vchar1 VARCHAR2(128),
  vchar2 VARCHAR2(128),
  vchar3 VARCHAR2(128),
  vchar4 VARCHAR2(128),
  vchar5 VARCHAR2(128)
)
;
comment on column USERYY.mc
  is '??????';
comment on column USERYY.dz
  is '?????';
comment on column USERYY.yzbm
  is '????????';
comment on column USERYY.dq
  is '????????id';
comment on column USERYY.jb
  is '??????';
comment on column USERYY.cws
  is '??λ??';
comment on column USERYY.fyljg
  is '???????????????';
comment on column USERYY.dh
  is '???绰';
comment on column USERYY.yjkdh
  is '?????绰';
comment on column USERYY.lb
  is '??????';
comment on column USERYY.ypsr
  is '???????????';
comment on column USERYY.ywsr
  is '????????????';
comment on column USERYY.cz
  is '?????';
alter table USERYY
  add constraint PK_USERYY primary key (ID);
alter table USERYY
  add constraint AK_USERYY_MC_NEWINDEX_USERYY unique (MC);

prompt
prompt Creating table YPPMBACKUP
prompt =========================
prompt
create table YPPMBACKUP
(
  id     VARCHAR2(32) not null,
  bm     VARCHAR2(10) not null,
  mc     VARCHAR2(128) not null,
  jx     VARCHAR2(32) not null,
  dw     VARCHAR2(64),
  zhxs   VARCHAR2(16) not null,
  lb     VARCHAR2(32),
  zt     CHAR(1),
  zl     VARCHAR2(16),
  hl     VARCHAR2(16),
  yb     CHAR(1),
  ybbm   VARCHAR2(128),
  bz     VARCHAR2(200),
  vchar1 VARCHAR2(768),
  vchar2 VARCHAR2(128),
  vchar3 VARCHAR2(128),
  gg     VARCHAR2(128)
)
;
comment on column YPPMBACKUP.id
  is '????';
comment on column YPPMBACKUP.bm
  is '??????';
comment on column YPPMBACKUP.mc
  is '?????';
comment on column YPPMBACKUP.jx
  is '????';
comment on column YPPMBACKUP.dw
  is '??λ';
comment on column YPPMBACKUP.zhxs
  is '??????';
comment on column YPPMBACKUP.lb
  is '?????';
comment on column YPPMBACKUP.zt
  is '??';
comment on column YPPMBACKUP.zl
  is '???';
comment on column YPPMBACKUP.hl
  is '????';
comment on column YPPMBACKUP.yb
  is '??????';
comment on column YPPMBACKUP.ybbm
  is '???????';
comment on column YPPMBACKUP.bz
  is '???';
comment on column YPPMBACKUP.gg
  is '???';
alter table YPPMBACKUP
  add constraint PK_YPPM primary key (ID);
alter table YPPMBACKUP
  add constraint AK_YYPM_NEWINDEX1_YPPM unique (BM);
alter table YPPMBACKUP
  add constraint AK_YYPM_NEWINDEX2_YPPM unique (ZHXS, GG, MC, JX);

prompt
prompt Creating table YPXX_BACKUP
prompt ==========================
prompt
create table YPXX_BACKUP
(
  id        VARCHAR2(32) not null,
  bm        VARCHAR2(32) not null,
  scqymc    VARCHAR2(128) not null,
  spmc      VARCHAR2(64) not null,
  zbjg      FLOAT not null,
  zpdz      VARCHAR2(128),
  pzwh      VARCHAR2(64),
  pzwhyxq   DATE,
  jky       CHAR(1),
  bzcz      VARCHAR2(64),
  bzdw      VARCHAR2(64),
  lsjg      FLOAT,
  lsjgcc    VARCHAR2(64),
  zlcc      VARCHAR2(32),
  zlccsm    VARCHAR2(200),
  ypjybg    CHAR(1),
  ypjybgbm  VARCHAR2(128),
  ypjybgyxq DATE,
  jyzt      CHAR(1) not null,
  vchar1    VARCHAR2(128),
  vchar2    VARCHAR2(128),
  vchar3    VARCHAR2(128),
  dw        VARCHAR2(32),
  mc        VARCHAR2(128),
  jx        VARCHAR2(32),
  gg        VARCHAR2(128),
  zhxs      VARCHAR2(16),
  pinyin    VARCHAR2(768),
  lb        VARCHAR2(32)
)
;

prompt
prompt Creating table YYBUSINESS
prompt =========================
prompt
create table YYBUSINESS
(
  id        VARCHAR2(32) not null,
  yycgdid   VARCHAR2(32) not null,
  useryyid  VARCHAR2(64) not null,
  ypxxid    VARCHAR2(32) not null,
  zbjg      FLOAT not null,
  jyjg      FLOAT not null,
  cgl       INTEGER not null,
  cgje      FLOAT not null,
  cgzt      CHAR(1) not null,
  rkl       INTEGER,
  rkje      FLOAT,
  rkdh      VARCHAR2(32),
  ypph      VARCHAR2(32),
  ypyxq     FLOAT,
  rktime    TIMESTAMP(6),
  fhtime    TIMESTAMP(6),
  yythdid   VARCHAR2(32),
  thl       VARCHAR2(32),
  thje      FLOAT,
  thzt      CHAR(1),
  thyy      VARCHAR2(100),
  yyjsdid   VARCHAR2(32),
  jsl       INTEGER,
  jsje      FLOAT,
  jszt      CHAR(1),
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64),
  usergysid VARCHAR2(64)
)
;
comment on table YYBUSINESS
  is '???????????(????????????)';
comment on column YYBUSINESS.yycgdid
  is '?????id';
comment on column YYBUSINESS.useryyid
  is '??id';
comment on column YYBUSINESS.ypxxid
  is '?????id';
comment on column YYBUSINESS.zbjg
  is '?б??';
comment on column YYBUSINESS.jyjg
  is '?????';
comment on column YYBUSINESS.cgl
  is '?????';
comment on column YYBUSINESS.cgje
  is '??????';
comment on column YYBUSINESS.cgzt
  is '?洢???????1??δ??????  2?????????3???????';
comment on column YYBUSINESS.rkl
  is '?????';
comment on column YYBUSINESS.rkje
  is '?????';
comment on column YYBUSINESS.rkdh
  is '???????????';
comment on column YYBUSINESS.ypph
  is '??????';
comment on column YYBUSINESS.ypyxq
  is '????Ч??(??)';
comment on column YYBUSINESS.rktime
  is '?????????????????';
comment on column YYBUSINESS.fhtime
  is '??????????????????';
comment on column YYBUSINESS.yythdid
  is '?????id';
comment on column YYBUSINESS.thl
  is '?????';
comment on column YYBUSINESS.thje
  is '??????';
comment on column YYBUSINESS.thzt
  is '????? 1??δ?????? 2??????????';
comment on column YYBUSINESS.thyy
  is '??????';
comment on column YYBUSINESS.yyjsdid
  is '????id';
comment on column YYBUSINESS.jsl
  is '??????';
comment on column YYBUSINESS.jsje
  is '??????';
comment on column YYBUSINESS.jszt
  is '??????1??δ?????? 2??????????';
comment on column YYBUSINESS.usergysid
  is '??????id';
create index INDEX_YYBUSINESS_1 on YYBUSINESS (CGZT, THZT, YYCGDID, YYJSDID, USERGYSID, YYTHDID, JSZT);
alter table YYBUSINESS
  add constraint PK_YYBUSINESS primary key (ID);
alter table YYBUSINESS
  add constraint UNI_YYBUSINESS unique (YYCGDID, YPXXID);
alter table YYBUSINESS
  add constraint FK_YYBUSINESS_2 foreign key (USERYYID)
  references USERYY (ID);
alter table YYBUSINESS
  add constraint FK_YYBUSINESS_3 foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table YYBUSINESS2014
prompt =============================
prompt
create table YYBUSINESS2014
(
  id        VARCHAR2(32) not null,
  yycgdid   VARCHAR2(32) not null,
  useryyid  VARCHAR2(64) not null,
  ypxxid    VARCHAR2(32) not null,
  zbjg      FLOAT not null,
  jyjg      FLOAT not null,
  cgl       INTEGER not null,
  cgje      FLOAT not null,
  cgzt      CHAR(1) not null,
  rkl       INTEGER,
  rkje      FLOAT,
  rkdh      VARCHAR2(32),
  ypph      VARCHAR2(32),
  ypyxq     FLOAT,
  rktime    TIMESTAMP(6),
  fhtime    TIMESTAMP(6),
  yythdid   VARCHAR2(32),
  thl       VARCHAR2(32),
  thje      FLOAT,
  thzt      CHAR(1),
  thyy      VARCHAR2(100),
  yyjsdid   VARCHAR2(32),
  jsl       INTEGER,
  jsje      FLOAT,
  jszt      CHAR(1),
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64),
  usergysid VARCHAR2(64)
)
;
create index INDEX_YYBUSINESS2014_1 on YYBUSINESS2014 (CGZT, THZT, YYCGDID, YYJSDID, USERGYSID, YYTHDID, JSZT);
alter table YYBUSINESS2014
  add constraint PK_YYBUSINESS2014 primary key (ID);
alter table YYBUSINESS2014
  add constraint UNI_YYBUSINESS2014 unique (YYCGDID, YPXXID);
alter table YYBUSINESS2014
  add constraint FK_YYBUSINESS2014_2 foreign key (USERYYID)
  references USERYY (ID);
alter table YYBUSINESS2014
  add constraint FK_YYBUSINESS2014_3 foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table YYBUSINESS2015
prompt =============================
prompt
create table YYBUSINESS2015
(
  id        VARCHAR2(32) not null,
  yycgdid   VARCHAR2(32) not null,
  useryyid  VARCHAR2(64) not null,
  ypxxid    VARCHAR2(32) not null,
  zbjg      FLOAT not null,
  jyjg      FLOAT not null,
  cgl       INTEGER not null,
  cgje      FLOAT not null,
  cgzt      CHAR(1) not null,
  rkl       INTEGER,
  rkje      FLOAT,
  rkdh      VARCHAR2(32),
  ypph      VARCHAR2(32),
  ypyxq     FLOAT,
  rktime    TIMESTAMP(6),
  fhtime    TIMESTAMP(6),
  yythdid   VARCHAR2(32),
  thl       VARCHAR2(32),
  thje      FLOAT,
  thzt      CHAR(1),
  thyy      VARCHAR2(100),
  yyjsdid   VARCHAR2(32),
  jsl       INTEGER,
  jsje      FLOAT,
  jszt      CHAR(1),
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64),
  usergysid VARCHAR2(64)
)
;
create index INDEX_YYBUSINESS2015_1 on YYBUSINESS2015 (CGZT, THZT, YYCGDID, YYJSDID, USERGYSID, YYTHDID, JSZT);
alter table YYBUSINESS2015
  add constraint PK_YYBUSINESS2015 primary key (ID);
alter table YYBUSINESS2015
  add constraint UNI_YYBUSINESS2015 unique (YYCGDID, YPXXID);
alter table YYBUSINESS2015
  add constraint FK_YYBUSINESS2015_2 foreign key (USERYYID)
  references USERYY (ID);
alter table YYBUSINESS2015
  add constraint FK_YYBUSINESS2015_3 foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table YYCGD
prompt ====================
prompt
create table YYCGD
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10) not null,
  mc       VARCHAR2(128) not null,
  useryyid VARCHAR2(64) not null,
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6) default SYSDATE not null,
  tjtime   TIMESTAMP(6),
  bz       VARCHAR2(256),
  zt       CHAR(1) not null,
  shyj     VARCHAR2(256),
  shtime   TIMESTAMP(6),
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64),
  vchar4   VARCHAR2(128),
  vchar5   VARCHAR2(128),
  xgtime   TIMESTAMP(6)
)
;
comment on table YYCGD
  is '?????????';
comment on column YYCGD.bm
  is '????????';
comment on column YYCGD.mc
  is '?????????';
comment on column YYCGD.useryyid
  is '??id';
comment on column YYCGD.lxr
  is '?????';
comment on column YYCGD.lxdh
  is '????绰';
comment on column YYCGD.cjr
  is '??????';
comment on column YYCGD.cjtime
  is '???????(???????????)';
comment on column YYCGD.tjtime
  is '?????(???????????)';
comment on column YYCGD.bz
  is '???';
comment on column YYCGD.zt
  is '???????(?洢???????1??δ????2??????δ????3??????????4?????????)';
comment on column YYCGD.shyj
  is '??????';
comment on column YYCGD.shtime
  is '??????(???????????)';
comment on column YYCGD.xgtime
  is '?????????';
create index INDEX_YYCGD_1 on YYCGD (USERYYID, ZT);
alter table YYCGD
  add constraint PK_YYCGD primary key (ID);
alter table YYCGD
  add constraint UNI_YYCGD unique (BM);
alter table YYCGD
  add constraint FK_YYCGD_USERYYID foreign key (USERYYID)
  references USERYY (ID);

prompt
prompt Creating table YYCGD2014
prompt ========================
prompt
create table YYCGD2014
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10) not null,
  mc       VARCHAR2(128) not null,
  useryyid VARCHAR2(64) not null,
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6) not null,
  tjtime   TIMESTAMP(6),
  xgtime   TIMESTAMP(6),
  bz       VARCHAR2(256),
  ksghdate DATE,
  jsghdate DATE,
  zt       CHAR(1) not null,
  shyj     VARCHAR2(256),
  shtime   TIMESTAMP(6),
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64),
  vchar4   VARCHAR2(128),
  vchar5   VARCHAR2(128)
)
;
create index INDEX_YYCGD2014_1 on YYCGD2014 (USERYYID, ZT);
create index INDEX_YYCGD2014_2 on YYCGD2014 (CJTIME);
alter table YYCGD2014
  add constraint PK_YYCGD2014 primary key (ID);
alter table YYCGD2014
  add constraint UNI_YYCGD2014 unique (BM);

prompt
prompt Creating table YYCGDMX
prompt ======================
prompt
create table YYCGDMX
(
  id        VARCHAR2(32) not null,
  yycgdid   VARCHAR2(32) not null,
  ypxxid    VARCHAR2(32) not null,
  usergysid VARCHAR2(64) not null,
  zbjg      FLOAT,
  jyjg      FLOAT,
  cgl       INTEGER,
  cgje      FLOAT,
  cgzt      CHAR(1),
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64),
  vchar4    VARCHAR2(128),
  vchar5    VARCHAR2(128)
)
;
comment on table YYCGDMX
  is '????????????';
comment on column YYCGDMX.yycgdid
  is '?????id';
comment on column YYCGDMX.ypxxid
  is '?????id';
comment on column YYCGDMX.usergysid
  is '???????id';
comment on column YYCGDMX.zbjg
  is '?б??';
comment on column YYCGDMX.jyjg
  is '?????';
comment on column YYCGDMX.cgl
  is '?????';
comment on column YYCGDMX.cgje
  is '??????';
comment on column YYCGDMX.cgzt
  is '?洢???????1??δ??????  2?????????3???????4???????';
alter table YYCGDMX
  add constraint PK_YYCGDMX primary key (ID);
alter table YYCGDMX
  add constraint AK_YYCGDMX_NEWINDEX1_YYCGDMX unique (YYCGDID, YPXXID);
alter table YYCGDMX
  add constraint FK_YYCGDMX_USERGYSID foreign key (USERGYSID)
  references USERGYS (ID);
alter table YYCGDMX
  add constraint FK_YYCGDMX_YYXID foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table YYCGDMX2014
prompt ==========================
prompt
create table YYCGDMX2014
(
  id        VARCHAR2(32) not null,
  yycgdid   VARCHAR2(32) not null,
  usergysid VARCHAR2(64) not null,
  ypxxid    VARCHAR2(32) not null,
  zbjg      FLOAT not null,
  jyjg      FLOAT,
  cgl       INTEGER,
  cgje      FLOAT,
  cgzt      CHAR(1) not null,
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64),
  vchar3    VARCHAR2(64),
  vchar4    VARCHAR2(128),
  vchar5    VARCHAR2(128)
)
;
alter table YYCGDMX2014
  add constraint PK_YYCGDMX2014 primary key (ID);
alter table YYCGDMX2014
  add constraint UNI_YYCGDMX2014 unique (YYCGDID, YPXXID);
alter table YYCGDMX2014
  add constraint FK_YYCGDMX2014_1 foreign key (YYCGDID)
  references YYCGD2014 (ID);
alter table YYCGDMX2014
  add constraint FK_YYCGDMX2014_3 foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating table YYCGDRK
prompt ======================
prompt
create table YYCGDRK
(
  id      VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128),
  rkl     INTEGER not null,
  rkje    FLOAT not null,
  rkdh    VARCHAR2(32) not null,
  ypph    VARCHAR2(32) not null,
  ypyxq   FLOAT not null,
  rktime  TIMESTAMP(6) default SYSDATE not null,
  cgzt    CHAR(1)
)
;
comment on table YYCGDRK
  is '??????????????';
comment on column YYCGDRK.yycgdid
  is '?????id';
comment on column YYCGDRK.ypxxid
  is '?????id';
comment on column YYCGDRK.rkl
  is '?????';
comment on column YYCGDRK.rkje
  is '?????';
comment on column YYCGDRK.rkdh
  is '???????????';
comment on column YYCGDRK.ypph
  is '??????';
comment on column YYCGDRK.ypyxq
  is '????Ч??(??)';
comment on column YYCGDRK.rktime
  is '?????????????????';
comment on column YYCGDRK.cgzt
  is '?????,?????';
create unique index AK_YYCGDRK_NEWINDEX1_YYCGDRK on YYCGDRK (YYCGDID, YPXXID);
create unique index PK_YYCGDRK on YYCGDRK (ID);
alter table YYCGDRK
  add constraint PK_YYBUSINESSCGDRK primary key (ID);
alter table YYCGDRK
  add constraint UNI_YYBUSINESSCGDRK unique (YYCGDID, YPXXID);

prompt
prompt Creating table YYCGDRK2014
prompt ==========================
prompt
create table YYCGDRK2014
(
  id      VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128),
  rkl     INTEGER not null,
  cgzt    CHAR(1) not null,
  rkje    FLOAT not null,
  rkdh    VARCHAR2(32) not null,
  ypph    VARCHAR2(32) not null,
  ypyxq   FLOAT not null,
  rktime  TIMESTAMP(6) default SYSDATE not null
)
;
alter table YYCGDRK2014
  add constraint PK_YYCGDRK2014 primary key (ID);
alter table YYCGDRK2014
  add constraint UNI_YYCGDRK2014 unique (YYCGDID, YPXXID);

prompt
prompt Creating table YYJSD
prompt ====================
prompt
create table YYJSD
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10) not null,
  mc       VARCHAR2(128) not null,
  useryyid VARCHAR2(64) not null,
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6) not null,
  xgtime   TIMESTAMP(6),
  tjtime   TIMESTAMP(6) not null,
  bz       VARCHAR2(256),
  zt       CHAR(1),
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64)
)
;
comment on table YYJSD
  is '???????????(????????????)';
comment on column YYJSD.id
  is '????id';
comment on column YYJSD.bm
  is '???????';
comment on column YYJSD.mc
  is '????????';
comment on column YYJSD.useryyid
  is '??id';
comment on column YYJSD.lxr
  is '?????';
comment on column YYJSD.lxdh
  is '????绰';
comment on column YYJSD.cjr
  is '??????';
comment on column YYJSD.cjtime
  is '???????(???????????)';
comment on column YYJSD.xgtime
  is '?????????';
comment on column YYJSD.tjtime
  is '?????(???????????)';
comment on column YYJSD.bz
  is '???';
comment on column YYJSD.zt
  is '?洢???????1??δ????2??????????????';
create index INDEX_YYBUSINESSJSD_1 on YYJSD (USERYYID);
alter table YYJSD
  add constraint PK_YYBUSINESSJSD primary key (ID);
alter table YYJSD
  add constraint UNI_YYBUSSINESSJSD unique (BM);

prompt
prompt Creating table YYJSD2014
prompt ========================
prompt
create table YYJSD2014
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10) not null,
  mc       VARCHAR2(128) not null,
  useryyid VARCHAR2(64) not null,
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6) not null,
  tjtime   TIMESTAMP(6),
  xgtime   TIMESTAMP(6),
  bz       VARCHAR2(256),
  zt       CHAR(1) not null,
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64)
)
;
create index INDEX_YYJSD2014_1 on YYJSD2014 (USERYYID);
alter table YYJSD2014
  add constraint PK_YYJSD2014 primary key (ID);
alter table YYJSD2014
  add constraint UNI_YYJSD2014 unique (BM);

prompt
prompt Creating table YYJSDMX
prompt ======================
prompt
create table YYJSDMX
(
  id      VARCHAR2(32) not null,
  yyjsdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  jsl     INTEGER not null,
  jsje    FLOAT not null,
  jszt    CHAR(1) not null,
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128)
)
;
comment on column YYJSDMX.yyjsdid
  is '????id';
comment on column YYJSDMX.ypxxid
  is '?????id';
comment on column YYJSDMX.yycgdid
  is '?????id';
comment on column YYJSDMX.jsl
  is '??????';
comment on column YYJSDMX.jsje
  is '??????';
comment on column YYJSDMX.jszt
  is '??????1??δ?????? 2??????????';
alter table YYJSDMX
  add constraint PK_YYBUSINESSJSDMX primary key (ID);
alter table YYJSDMX
  add constraint UNI_YYBUSINESSJSDMX unique (YPXXID, YYCGDID);

prompt
prompt Creating table YYJSDMX2014
prompt ==========================
prompt
create table YYJSDMX2014
(
  id      VARCHAR2(32) not null,
  yyjsdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  jsl     INTEGER not null,
  jsje    FLOAT not null,
  jszt    CHAR(1) not null,
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128)
)
;
alter table YYJSDMX2014
  add constraint PK_YYJSDMX2014 primary key (ID);
alter table YYJSDMX2014
  add constraint UNI_YYJSDMX2014 unique (YPXXID, YYCGDID);

prompt
prompt Creating table YYTHD
prompt ====================
prompt
create table YYTHD
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10),
  mc       VARCHAR2(128),
  useryyid VARCHAR2(64),
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6),
  xgtime   TIMESTAMP(6),
  tjtime   TIMESTAMP(6),
  bz       VARCHAR2(256),
  zt       CHAR(1),
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64)
)
;
comment on table YYTHD
  is '?????????????(????????????)';
comment on column YYTHD.id
  is '?????id';
comment on column YYTHD.bm
  is '????????';
comment on column YYTHD.mc
  is '?????????';
comment on column YYTHD.useryyid
  is '??id';
comment on column YYTHD.lxr
  is '?????';
comment on column YYTHD.lxdh
  is '????绰';
comment on column YYTHD.cjr
  is '??????';
comment on column YYTHD.cjtime
  is '???????(???????????)';
comment on column YYTHD.xgtime
  is '??????';
comment on column YYTHD.tjtime
  is '?????(???????????)';
comment on column YYTHD.bz
  is '???';
comment on column YYTHD.zt
  is '?洢???????1??δ????2??????????????';
create index INDEX_YYBUSSINESSTHD_1 on YYTHD (USERYYID);
alter table YYTHD
  add constraint PK_YYBUSSINESSTHD primary key (ID);
alter table YYTHD
  add constraint UNI_YYBUSSINESSTHD unique (BM);

prompt
prompt Creating table YYTHD2014
prompt ========================
prompt
create table YYTHD2014
(
  id       VARCHAR2(32) not null,
  bm       VARCHAR2(10) not null,
  mc       VARCHAR2(128) not null,
  useryyid VARCHAR2(64) not null,
  lxr      VARCHAR2(64),
  lxdh     VARCHAR2(64),
  cjr      VARCHAR2(64),
  cjtime   TIMESTAMP(6) not null,
  tjtime   TIMESTAMP(6),
  xgtime   TIMESTAMP(6),
  bz       VARCHAR2(256),
  zt       CHAR(1) not null,
  vchar1   VARCHAR2(64),
  vchar2   VARCHAR2(64),
  vchar3   VARCHAR2(64)
)
;
create index INDEX_YYTHD2014_1 on YYTHD2014 (USERYYID);
alter table YYTHD2014
  add constraint PK_YYTHD2014 primary key (ID);
alter table YYTHD2014
  add constraint UNI_YYTHD2014 unique (BM);

prompt
prompt Creating table YYTHDMX
prompt ======================
prompt
create table YYTHDMX
(
  id      VARCHAR2(32) not null,
  yythdid VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  thl     INTEGER not null,
  thje    FLOAT not null,
  thzt    CHAR(1) not null,
  thyy    VARCHAR2(100),
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128)
)
;
comment on column YYTHDMX.yythdid
  is '?????id';
comment on column YYTHDMX.yycgdid
  is '?????id';
comment on column YYTHDMX.ypxxid
  is '?????id';
comment on column YYTHDMX.thl
  is '?????';
comment on column YYTHDMX.thje
  is '??????';
comment on column YYTHDMX.thzt
  is '????? 1??δ?????? 2??????????';
comment on column YYTHDMX.thyy
  is '??????';
alter table YYTHDMX
  add constraint PK_YYBUSINESSTHDM primary key (ID);
alter table YYTHDMX
  add constraint UNI_YYBUSINESSTHDM unique (YYCGDID, YPXXID);

prompt
prompt Creating table YYTHDMX2014
prompt ==========================
prompt
create table YYTHDMX2014
(
  id      VARCHAR2(32) not null,
  yythdid VARCHAR2(32) not null,
  ypxxid  VARCHAR2(32) not null,
  yycgdid VARCHAR2(32) not null,
  thl     INTEGER not null,
  thje    FLOAT not null,
  thzt    CHAR(1) not null,
  thyy    VARCHAR2(100),
  vchar1  VARCHAR2(64),
  vchar2  VARCHAR2(64),
  vchar3  VARCHAR2(64),
  vchar4  VARCHAR2(128),
  vchar5  VARCHAR2(128)
)
;
alter table YYTHDMX2014
  add constraint PK_YYTHDMX2014 primary key (ID);
alter table YYTHDMX2014
  add constraint UNI_YYTHDMX2014 unique (YPXXID, YYCGDID);

prompt
prompt Creating table YYYPML
prompt =====================
prompt
create table YYYPML
(
  id        VARCHAR2(32) not null,
  useryyid  VARCHAR2(64) not null,
  ypxxid    VARCHAR2(32) not null,
  usergysid VARCHAR2(64) not null,
  vchar1    VARCHAR2(64),
  vchar2    VARCHAR2(64)
)
;
comment on table YYYPML
  is '????????';
comment on column YYYPML.useryyid
  is '??id';
comment on column YYYPML.ypxxid
  is '?????id';
comment on column YYYPML.usergysid
  is '?????????id';
alter table YYYPML
  add constraint PK_YYYPML primary key (ID);
alter table YYYPML
  add constraint AK_YYYPML_NEWINDEX1 unique (USERYYID, YPXXID, USERGYSID);
alter table YYYPML
  add constraint FK_YYYPML foreign key (YPXXID)
  references YPXX (ID);

prompt
prompt Creating sequence SEQ_SYS_LOG
prompt =============================
prompt
create sequence SEQ_SYS_LOG
minvalue 1
maxvalue 999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_MODULE
prompt ================================
prompt
create sequence SEQ_SYS_MODULE
minvalue 1
maxvalue 999999999999999999999999999
start with 20000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_OPERATION
prompt ===================================
prompt
create sequence SEQ_SYS_OPERATION
minvalue 1
maxvalue 999999999999999999999999999
start with 20000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ROLE
prompt ==============================
prompt
create sequence SEQ_SYS_ROLE
minvalue 1
maxvalue 999999999999999999999999999
start with 20000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_USER
prompt ==============================
prompt
create sequence SEQ_SYS_USER
minvalue 1
maxvalue 999999999999999999999999999
start with 20000
increment by 1
cache 20;

prompt
prompt Creating sequence YPXXBM
prompt ========================
prompt
create sequence YPXXBM
minvalue 200000
maxvalue 999999999999
start with 200000
increment by 1
cache 20;

prompt
prompt Creating sequence YYCGDBM
prompt =========================
prompt
create sequence YYCGDBM
minvalue 1
maxvalue 9999999
start with 1000100
increment by 1
cache 20;

prompt
prompt Creating sequence YYCGDBM2014
prompt =============================
prompt
create sequence YYCGDBM2014
minvalue 1
maxvalue 999999
start with 100020
increment by 1
cache 20;

prompt
prompt Creating sequence YYJSDBM
prompt =========================
prompt
create sequence YYJSDBM
minvalue 1
maxvalue 9999999
start with 1000000
increment by 1
cache 20;

prompt
prompt Creating sequence YYJSDBM2014
prompt =============================
prompt
create sequence YYJSDBM2014
minvalue 1
maxvalue 999999
start with 100000
increment by 1
cache 20;

prompt
prompt Creating sequence YYTHDBM
prompt =========================
prompt
create sequence YYTHDBM
minvalue 1
maxvalue 9999999
start with 1000040
increment by 1
cache 20;

prompt
prompt Creating sequence YYTHDBM2014
prompt =============================
prompt
create sequence YYTHDBM2014
minvalue 1
maxvalue 999999
start with 100000
increment by 1
cache 20;

prompt
prompt Creating view ROLE_AUTH
prompt =======================
prompt
CREATE OR REPLACE FORCE VIEW ROLE_AUTH AS
SELECT bss_sys_role.ROLEID,
       bss_sys_rolesys.SYSID,
       bss_sys_rolenode.NODEID,
       bss_sys_rolemodule.MODULEID,
       bss_sys_roleoperate.operateid
  FROM bss_sys_role, bss_sys_rolesys, bss_sys_rolenode, bss_sys_rolemodule,bss_sys_roleoperate
 WHERE bss_sys_role.ROLEID = bss_sys_rolesys.ROLEID
   AND bss_sys_rolesys.RSID = bss_sys_rolenode.RSID
   AND bss_sys_rolenode.RNID = bss_sys_rolemodule.RNID
   and bss_sys_rolemodule.rmid = bss_sys_roleoperate.rmid;

prompt
prompt Creating procedure CREATE_BUSINESS
prompt ==================================
prompt
create or replace procedure create_business(year in varchar2) Authid Current_User as

  v_tab_sl number;
  business varchar2(100);
  businesscgd varchar2(100);
  str varchar2(1000);
begin

        -- ??????
        businesscgd := 'Yybusinesscgd' || year;
        business := 'Yybusiness' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(business);
        if v_tab_sl = 0 then


        str := 'create table ' || business ||
               '(ID            VARCHAR2(32) not null,' ||
                'yycgdid   VARCHAR2(32) not null,' ||
                'useryyid  VARCHAR2(64) not null,' ||
                'ypxxid    VARCHAR2(32) not null,' ||
                'zbjg      FLOAT not null,' ||
                'jyjg      FLOAT not null,' ||
                'cgl       INTEGER not null,' ||
                'cgje      FLOAT not null,' ||
                'cgzt      CHAR(1) not null,' ||
                'rkl       INTEGER,' ||
                'rkje      FLOAT,' ||
                'rkdh      VARCHAR2(32),' ||
                'ypph      VARCHAR2(32),' ||
                'ypyxq     FLOAT,' ||
                'rktime    TIMESTAMP(6),' ||
                'fhtime    TIMESTAMP(6),' ||
                'yythdid   VARCHAR2(32),' ||
                'thl       VARCHAR2(32),' ||
                'thje      FLOAT,' ||
                'thzt      CHAR(1),' ||
                'thyy      VARCHAR2(100),' ||
                'yyjsdid   VARCHAR2(32),' ||
                'jsl       INTEGER,' ||
                'jsje      FLOAT,' ||
                'jszt      CHAR(1),' ||
                'vchar1    VARCHAR2(64),' ||
                'vchar2    VARCHAR2(64),' ||
                'vchar3    VARCHAR2(64),' ||
                'usergysid VARCHAR2(64)' ||
                               
               ')';
        execute immediate str;
 str := 'create index INDEX_'||business||'_1 on '||business||' (CGZT, THZT, YYCGDID, YYJSDID, USERGYSID, YYTHDID, JSZT)';
 execute immediate str;
str := 'alter table '||business||' add constraint PK_'||business||' primary key (ID)';
execute immediate str;
str := 'alter table '||business||' add constraint UNI_'||business||' unique (YYCGDID, YPXXID)';
execute immediate str;
str := 'alter table '||business||' add constraint FK_'||business||'_1 foreign key (YYCGDID) references '||businesscgd||' (ID)';
execute immediate str;
str := 'alter table '||business||'  add constraint FK_'||business||'_2 foreign key (USERYYID)  references USERYY (ID)';
execute immediate str;
str := 'alter table '||business||'  add constraint FK_'||business||'_3 foreign key (YPXXID)  references YPXX (ID)';
execute immediate str;
        end if;

end create_business;
/

prompt
prompt Creating procedure CREATE_BUSINESSCGD
prompt =====================================
prompt
create or replace procedure create_businesscgd(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yycgd varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yycgd := 'yycgd' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yycgd);
        if v_tab_sl = 0 then


        str := 'create table ' || yycgd ||
               '(ID            VARCHAR2(32) not null,' ||
    'bm       VARCHAR2(10) not null,' ||
    'mc       VARCHAR2(128) not null,' ||
    'useryyid VARCHAR2(64) not null,' ||
    'lxr      VARCHAR2(64),' ||
    'lxdh     VARCHAR2(64),' ||
    'cjr      VARCHAR2(64),' ||
    'cjtime   TIMESTAMP(6) not null,' ||
    'tjtime   TIMESTAMP(6),' ||
    'xgtime   TIMESTAMP(6),' ||
    'bz       VARCHAR2(256),' ||
    'ksghdate DATE,' ||
    'jsghdate DATE,' ||
    'zt       CHAR(1) not null,' ||
    'shyj     VARCHAR2(256),' ||
    'shtime   TIMESTAMP(6),' ||
    'vchar1   VARCHAR2(64),' ||
    'vchar2   VARCHAR2(64),' ||
    'vchar3   VARCHAR2(64),' ||
    'vchar4   VARCHAR2(128),' ||
    'vchar5   VARCHAR2(128)' ||
                               
               ')';
        execute immediate str;
 str := 'create index INDEX_'||yycgd||'_1 on '||yycgd||' (USERYYID, ZT)';
 execute immediate str;
str := 'create index INDEX_'||yycgd||'_2 on '||yycgd||' (CJTIME)';
execute immediate str;
str := 'alter table '||yycgd||'  add constraint PK_'||yycgd||' primary key (ID)';
execute immediate str;
str := 'alter table '||yycgd||'  add constraint UNI_'||yycgd||' unique (BM)';
execute immediate str;

str := 'create sequence YYCGDBM'||year ||
' minvalue 1 '||
' maxvalue 999999 '||
' start with 100000 '||
' increment by 1 '||
' cache 20';
execute immediate str;
        end if;

end create_businesscgd;
/

prompt
prompt Creating procedure CREATE_BUSINESSCGDMX
prompt =======================================
prompt
create or replace procedure create_businesscgdmx(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yycgdmx varchar2(100);
  yycgd varchar2(100);
  business varchar2(100);
  str varchar2(1000);
begin

        -- ??????
        yycgd := 'yycgd' || year;
        yycgdmx := 'yycgdmx' || year;
        business :='yybusiness'||year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yycgdmx);
        if v_tab_sl = 0 then


        str := 'create table ' || yycgdmx ||
               '(ID            VARCHAR2(32) not null,' ||
                'yycgdid   VARCHAR2(32) not null,' ||
                'usergysid VARCHAR2(64) not null,' ||
                'ypxxid    VARCHAR2(32) not null,' ||
                'zbjg      FLOAT not null,' ||
                'jyjg      FLOAT ,' ||
                'cgl       INTEGER ,' ||
                'cgje      FLOAT ,' ||
                'cgzt      CHAR(1) not null,' ||
               
                'vchar1    VARCHAR2(64),' ||
                'vchar2    VARCHAR2(64),' ||
                'vchar3    VARCHAR2(64),' ||
                'vchar4    VARCHAR2(128),' ||
                'vchar5    VARCHAR2(128)' ||
                               
               ')';
        execute immediate str;

str := 'alter table '||yycgdmx||' add constraint PK_'||yycgdmx||' primary key (ID)';
execute immediate str;
str := 'alter table '||yycgdmx||' add constraint UNI_'||yycgdmx||' unique (YYCGDID, YPXXID)';
execute immediate str;
str := 'alter table '||yycgdmx||' add constraint FK_'||yycgdmx||'_1 foreign key (YYCGDID) references '||yycgd||' (ID)';
execute immediate str;
str := 'alter table '||yycgdmx||'  add constraint FK_'||yycgdmx||'_3 foreign key (YPXXID)  references YPXX (ID)';
execute immediate str;

 str :='create or replace trigger '||yycgdmx||'_update ' ||
  ' after update on ' || yycgdmx ||
  ' for each row ' ||
'declare ' ||
'begin ' ||
  'update '||business||' t ' ||
     'set ' ||
         't.zbjg    = :new.zbjg,' ||
         't.jyjg   = :new.jyjg,' ||
          't.cgzt   = :new.cgzt,' ||
         't.cgl   = :new.cgl ' ||
         ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
'end '||yycgdmx||'_update ;';

execute immediate str;


        end if;

end create_businesscgdmx;
/

prompt
prompt Creating procedure CREATE_BUSINESSCGDRK
prompt =======================================
prompt
create or replace procedure create_businesscgdrk(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yycgdrk varchar2(100);
  business varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yycgdrk := 'yycgdrk' || year;
         business:= 'Yybusiness' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yycgdrk);
        if v_tab_sl = 0 then


        str := 'create table ' || yycgdrk ||
               '(ID            VARCHAR2(32) not null,' ||
      'yycgdid VARCHAR2(32) not null,' ||
      'ypxxid  VARCHAR2(32) not null,' ||
      'vchar1  VARCHAR2(64),' ||
      'vchar2  VARCHAR2(64),' ||
      'vchar3  VARCHAR2(64),' ||
      'vchar4  VARCHAR2(128),' ||
      'vchar5  VARCHAR2(128),' ||
      'rkl     INTEGER not null,' ||
      'cgzt     CHAR(1) not null,' ||
      'rkje    FLOAT not null,' ||
      'rkdh    VARCHAR2(32) not null,' ||
      'ypph    VARCHAR2(32) not null,' ||
      'ypyxq   FLOAT not null,' ||
      'rktime  TIMESTAMP(6) default SYSDATE not null' ||
                               
               ')';
        execute immediate str;
 str := 'alter table '||yycgdrk||' add constraint PK_'||yycgdrk||' primary key (ID)';
 execute immediate str;
str := 'alter table '||yycgdrk||' add constraint UNI_'||yycgdrk||' unique (YYCGDID, YPXXID)';
execute immediate str;

 str :='create or replace trigger '||yycgdrk||'_insert' ||
  ' after insert on ' || yycgdrk ||
  ' for each row ' ||
' declare' ||
' begin '||
  ' update '||business||' t' ||
     ' set t.rkl    = :new.rkl,' ||
         't.rkje   = :new.rkje,' ||
         't.ypph   = :new.ypph,' ||
         't.cgzt   = :new.cgzt,' ||
         't.rkdh   = :new.rkdh,' ||
         't.ypyxq  = :new.ypyxq,' ||
         't.rktime = :new.rktime'||
         ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
' end '||yycgdrk||'_insert;'; 

execute immediate str;
        end if;

end create_businesscgdrk;
/

prompt
prompt Creating procedure CREATE_BUSINESSJSD
prompt =====================================
prompt
create or replace procedure create_businessjsd(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yyjsd varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yyjsd := 'yyjsd' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yyjsd);
        if v_tab_sl = 0 then


        str := 'create table ' || yyjsd ||
               '(ID            VARCHAR2(32) not null,' ||
    'bm       VARCHAR2(10) not null,' ||
    'mc       VARCHAR2(128) not null,' ||
    'useryyid VARCHAR2(64) not null,' ||
    'lxr      VARCHAR2(64),' ||
    'lxdh     VARCHAR2(64),' ||
    'cjr      VARCHAR2(64),' ||
    'cjtime   TIMESTAMP(6) not null,' ||
    'tjtime   TIMESTAMP(6),' ||
    'xgtime   TIMESTAMP(6),' ||
    'bz       VARCHAR2(256),' ||
    'zt       CHAR(1) not null,' ||
    'vchar1   VARCHAR2(64),' ||
    'vchar2   VARCHAR2(64),' ||
    'vchar3   VARCHAR2(64)' ||
                               
               ')';
        execute immediate str;
 str := 'create index INDEX_'||yyjsd||'_1 on '||yyjsd||' (USERYYID)';
 execute immediate str;
str := 'alter table '||yyjsd||' add constraint PK_'||yyjsd||' primary key (ID)';
execute immediate str;
str := 'alter table '||yyjsd||' add constraint UNI_'||yyjsd||' unique (BM)';
execute immediate str;


str := 'create sequence YYJSDBM'||year ||
' minvalue 1 '||
' maxvalue 999999 '||
' start with 100000 '||
' increment by 1 '||
' cache 20';
execute immediate str;

        end if;

end create_businessjsd;
/

prompt
prompt Creating procedure CREATE_BUSINESSJSDMX
prompt =======================================
prompt
create or replace procedure create_businessjsdmx(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yyjsdmx varchar2(100);
  business varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yyjsdmx := 'yyjsdmx' || year;
        business :='yybusiness' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yyjsdmx);
        if v_tab_sl = 0 then


        str := 'create table ' || yyjsdmx ||
               '(ID            VARCHAR2(32) not null,' ||
		'yyjsdid VARCHAR2(32) not null,' ||
		'ypxxid  VARCHAR2(32) not null,' ||
		'yycgdid VARCHAR2(32) not null,' ||
		'jsl     INTEGER not null,' ||
		'jsje    FLOAT not null,' ||
		'jszt    CHAR(1) not null,' ||
		'vchar1  VARCHAR2(64),' ||
		'vchar2  VARCHAR2(64),' ||
		'vchar3  VARCHAR2(64),' ||
		'vchar4  VARCHAR2(128),' ||
		'vchar5  VARCHAR2(128)' ||
                               
               ')';
        execute immediate str;
 str := 'alter table '||yyjsdmx||'  add constraint PK_'||yyjsdmx||' primary key (ID)';
 execute immediate str;
str := 'alter table '||yyjsdmx||' add constraint UNI_'||yyjsdmx||' unique (YPXXID, YYCGDID)';
execute immediate str;

 str :='create or replace trigger '||yyjsdmx||'_insert ' ||
  ' after insert on ' || yyjsdmx ||
  ' for each row ' ||
'declare ' ||
'begin ' ||
  'update '||business||' t ' ||
     'set t.yyjsdid = :new.id,' ||
         't.jsl    = :new.jsl,' ||
         't.jszt   = :new.jszt,' ||
         't.jsje   = :new.jsje ' ||
         ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
'end '||yyjsdmx||'_insert ;';

execute immediate str;


 str :='create or replace trigger '||yyjsdmx||'_update ' ||
  ' after update on ' || yyjsdmx ||
  ' for each row ' ||
'declare ' ||
'begin ' ||
  'update '||business||' t ' ||
     'set t.yyjsdid = :new.id,' ||
         't.jsl    = :new.jsl,' ||
         't.jszt   = :new.jszt,' ||
         't.jsje   = :new.jsje ' ||
          ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
'end '||yyjsdmx||'_insert ;';
execute immediate str;
        end if;

end create_businessjsdmx;
/

prompt
prompt Creating procedure CREATE_BUSINESSTHD
prompt =====================================
prompt
create or replace procedure create_businessthd(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yythd varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yythd := 'yythd' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yythd);
        if v_tab_sl = 0 then


        str := 'create table ' || yythd ||
               '(ID            VARCHAR2(32) not null,' ||
    'bm       VARCHAR2(10) not null,' ||
    'mc       VARCHAR2(128) not null,' ||
    'useryyid VARCHAR2(64) not null,' ||
    'lxr      VARCHAR2(64),' ||
    'lxdh     VARCHAR2(64),' ||
    'cjr      VARCHAR2(64),' ||
    'cjtime   TIMESTAMP(6) not null,' ||
    'tjtime   TIMESTAMP(6),' ||
    'xgtime   TIMESTAMP(6),' ||
    'bz       VARCHAR2(256),' ||
    'zt       CHAR(1) not null,' ||
    'vchar1   VARCHAR2(64),' ||
    'vchar2   VARCHAR2(64),' ||
    'vchar3   VARCHAR2(64)' ||
                               
               ')';
        execute immediate str;
 str := 'create index INDEX_'||yythd||'_1 on '||yythd||' (USERYYID)';
 execute immediate str;
str := 'alter table '||yythd||' add constraint PK_'||yythd||' primary key (ID)';
execute immediate str;
str := 'alter table '||yythd||' add constraint UNI_'||yythd||' unique (BM)';
execute immediate str;


str := 'create sequence YYTHDBM'||year ||
' minvalue 1 '||
' maxvalue 999999 '||
' start with 100000 '||
' increment by 1 '||
' cache 20';
execute immediate str;

        end if;

end create_businessthd;
/

prompt
prompt Creating procedure CREATE_BUSINESSTHDMX
prompt =======================================
prompt
create or replace procedure create_businessthdmx(year in varchar2) Authid Current_User as

  v_tab_sl number;
  yythdmx varchar2(100);
  business varchar2(100);
  str varchar2(1000);
begin
 -- ??????
        yythdmx := 'yythdmx' || year;
        business:= 'Yybusiness' || year;
        -- ???????????
        select count(1) into v_tab_sl from user_tables where table_name=upper(yythdmx);
        if v_tab_sl = 0 then


        str := 'create table ' || yythdmx ||
               '(ID            VARCHAR2(32) not null,' ||
		'yythdid VARCHAR2(32) not null,' ||
		'ypxxid  VARCHAR2(32) not null,' ||
		'yycgdid VARCHAR2(32) not null,' ||
		'thl     INTEGER not null,' ||
		'thje    FLOAT not null,' ||
		'thzt    CHAR(1) not null,' ||
    'thyy    VARCHAR2(100),' ||
		'vchar1  VARCHAR2(64),' ||
		'vchar2  VARCHAR2(64),' ||
		'vchar3  VARCHAR2(64),' ||
		'vchar4  VARCHAR2(128),' ||
		'vchar5  VARCHAR2(128)' ||
                               
               ')';
        execute immediate str;
 str := 'alter table '||yythdmx||'  add constraint PK_'||yythdmx||' primary key (ID)';
 execute immediate str;
str := 'alter table '||yythdmx||' add constraint UNI_'||yythdmx||' unique (YPXXID, YYCGDID)';
execute immediate str;

 str :='create or replace trigger '||yythdmx||'_insert ' ||
  ' after insert on ' || yythdmx ||
  ' for each row ' ||
'declare ' ||
'begin ' ||
  'update '||business||' t ' ||
     'set t.yythdid = :new.id,' ||
         't.thl    = :new.thl,' ||
         't.thje   = :new.thje,' ||
         't.thzt   = :new.thzt ' ||
         ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
'end '||yythdmx||'_insert ;';

execute immediate str;


 str :='create or replace trigger '||yythdmx||'_update ' ||
  ' after update on ' || yythdmx ||
  ' for each row ' ||
'declare ' ||
'begin ' ||
  'update '||business||' t ' ||
     'set t.yythdid = :new.id,' ||
         't.thl    = :new.thl,' ||
         't.thje   = :new.thje,' ||
         't.thzt   = :new.thzt ' ||
          ' where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;'||
'end '||yythdmx||'_insert ;';

execute immediate str;

        end if;

end create_businessthdmx;
/

prompt
prompt Creating procedure CREATE_BUSINESSTABLE
prompt =======================================
prompt
create or replace procedure create_businesstable(year in varchar2) Authid Current_User as


begin

      create_business(year);
      create_businesscgd(year);
      create_businesscgdmx(year);
      create_businesscgdrk(year);
      create_businessthd(year);
      create_businessthdmx(year);
      create_businessjsd(year);
      create_businessjsdmx(year);

end create_businesstable;
/

prompt
prompt Creating procedure CREATE_TABLEJOB
prompt ==================================
prompt
create or replace procedure create_tableJob Authid Current_User as
   year1 varchar2(4);
   year2 varchar2(4);
begin
  select to_char(sysdate,'yyyy')into year1 from dual;

  select to_char(to_char(sysdate,'yyyy')+1)into year2 from dual;
   
  create_businesstable(year1);
  create_businesstable(year2);
   
end create_tableJob;
/

prompt
prompt Creating trigger GENERATOR_YPXXBM
prompt =================================
prompt
create or replace trigger generator_ypxxbm
  before insert on ypxx
  for each row
declare
  -- local variables here
begin
   select ypxxbm.nextval into :new.bm from dual;
end generator_ypxxbm;
/

prompt
prompt Creating trigger YYCGDMX2014_UPDATE
prompt ===================================
prompt
create or replace trigger yycgdmx2014_update  after update on yycgdmx2014 for each row 
declare begin update yybusiness2014 t set t.zbjg    = :new.zbjg,t.jyjg   = :new.jyjg,t.cgzt   = :new.cgzt,t.cgl   = :new.cgl  where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;end yycgdmx2014_update ;
/

prompt
prompt Creating trigger YYCGDRK2014_INSERT
prompt ===================================
prompt
create or replace trigger yycgdrk2014_insert after insert on yycgdrk2014 for each row  
declare begin  update Yybusiness2014 t set t.rkl    = :new.rkl,t.rkje   = :new.rkje,t.ypph   = :new.ypph,t.cgzt   = :new.cgzt,t.rkdh   = :new.rkdh,t.ypyxq  = :new.ypyxq,t.rktime = :new.rktime where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid; end yycgdrk2014_insert;
/

prompt
prompt Creating trigger YYJSDMX2014_INSERT
prompt ===================================
prompt
create or replace trigger yyjsdmx2014_insert  after insert on yyjsdmx2014 for each row 
declare begin update yybusiness2014 t set t.yyjsdid = :new.id,t.jsl    = :new.jsl,t.jszt   = :new.jszt,t.jsje   = :new.jsje  where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;end yyjsdmx2014_insert ;
/

prompt
prompt Creating trigger YYJSDMX2014_UPDATE
prompt ===================================
prompt
create or replace trigger yyjsdmx2014_update  after update on yyjsdmx2014 for each row 
declare begin update yybusiness2014 t set t.yyjsdid = :new.id,t.jsl    = :new.jsl,t.jszt   = :new.jszt,t.jsje   = :new.jsje  where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;end yyjsdmx2014_insert ;
/

prompt
prompt Creating trigger YYTHDMX2014_INSERT
prompt ===================================
prompt
create or replace trigger yythdmx2014_insert  after insert on yythdmx2014 for each row 
declare begin update Yybusiness2014 t set t.yythdid = :new.id,t.thl    = :new.thl,t.thje   = :new.thje,t.thzt   = :new.thzt  where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;end yythdmx2014_insert ;
/

prompt
prompt Creating trigger YYTHDMX2014_UPDATE
prompt ===================================
prompt
create or replace trigger yythdmx2014_update  after update on yythdmx2014 for each row 
declare begin update Yybusiness2014 t set t.yythdid = :new.id,t.thl    = :new.thl,t.thje   = :new.thje,t.thzt   = :new.thzt  where t.yycgdid = :new.yycgdid and t.ypxxid = :new.ypxxid;end yythdmx2014_insert ;
/


spool off
