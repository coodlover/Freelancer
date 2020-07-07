/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/7 10:52:06                            */
/*==============================================================*/


drop table if exists administrator;

drop table if exists do_works;

drop table if exists issue_work;

drop table if exists need_skill;

drop table if exists propose_work;

drop table if exists skills;

drop table if exists user;

drop table if exists user_skill;

drop table if exists work;

/*==============================================================*/
/* Table: administrator                                         */
/*==============================================================*/
create table administrator
(
   a_id                 int not null,
   name                 char(15) not null,
   password             char(20) not null,
   power_level        smallint not null,
   primary key (a_id)
);

/*==============================================================*/
/* Table: do_works                                              */
/*==============================================================*/
create table do_works
(
   u_id                 int not null,
   w_id                 int not null,
   start_time           timestamp not null,
   end_time             timestamp,
   payment              float not null,
   review               char(100) not null,
   primary key (u_id, w_id)
);

/*==============================================================*/
/* Table: issue_work                                            */
/*==============================================================*/
create table issue_work
(
   u_id                 int not null,
   w_id                 int not null,
   primary key (u_id, w_id)
);

/*==============================================================*/
/* Table: need_skill                                            */
/*==============================================================*/
create table need_skill
(
   w_id                 int not null,
   s_id                 int not null,
   type                 smallint,
   primary key (w_id, s_id)
);

alter table need_skill comment 'type 1��ʾ���룬0��ʾ��ѡ';

/*==============================================================*/
/* Table: propose_work                                          */
/*==============================================================*/
create table propose_work
(
   u_id                 int not null,
   w_id                 int not null,
   expect_payment       float not null,
   remark               char(200) not null,
   primary key (u_id, w_id)
);

/*==============================================================*/
/* Table: skills                                                */
/*==============================================================*/
create table skills
(
   s_id                 int not null,
   skill_name           char(30) not null,
   primary key (s_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   u_id                 int not null,
   name                 char(15) not null,
   password             char(20) not null,
   phone                char(15) not null,
   e_mail             char(25) not null,
   true_name            char(20) not null,
   credit_card          char(20) not null,
   type                 smallint not null,
   primary key (u_id)
);

/*==============================================================*/
/* Table: user_skill                                            */
/*==============================================================*/
create table user_skill
(
   u_id                 int not null,
   s_id                 int not null,
   primary key (u_id, s_id)
);

/*==============================================================*/
/* Table: work                                                  */
/*==============================================================*/
create table work
(
   w_id                 int not null,
   title                char(25) not null,
   payment_lower        float not null,
   payment_higher       Float  not null,
   bidding_dll          timestamp not null,
   finish_dll           timestamp not null,
   description          varchar(500) not null,
   status               smallint not null,
   primary key (w_id)
);

alter table do_works add constraint FK_do_works foreign key (u_id)
      references user (u_id) on delete restrict on update restrict;

alter table do_works add constraint FK_do_works2 foreign key (w_id)
      references work (w_id) on delete restrict on update restrict;

alter table issue_work add constraint FK_issue_work foreign key (u_id)
      references user (u_id) on delete restrict on update restrict;

alter table issue_work add constraint FK_issue_work2 foreign key (w_id)
      references work (w_id) on delete restrict on update restrict;

alter table need_skill add constraint FK_need_skill foreign key (w_id)
      references work (w_id) on delete restrict on update restrict;

alter table need_skill add constraint FK_need_skill2 foreign key (s_id)
      references skills (s_id) on delete restrict on update restrict;

alter table propose_work add constraint FK_propose_work foreign key (u_id)
      references user (u_id) on delete restrict on update restrict;

alter table propose_work add constraint FK_propose_work2 foreign key (w_id)
      references work (w_id) on delete restrict on update restrict;

alter table user_skill add constraint FK_user_skill foreign key (u_id)
      references user (u_id) on delete restrict on update restrict;

alter table user_skill add constraint FK_user_skill2 foreign key (s_id)
      references skills (s_id) on delete restrict on update restrict;


