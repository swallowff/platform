drop table if exists article_info;

/*==============================================================*/
/* Table: article_info                                          */
/*==============================================================*/
create table article_info
(
   id                   varchar(64) not null,
   article_id           varchar(64),
   tittle               varchar(64),
   description          varchar(200),
   author               varchar(64),
   content_id           varchar(64),
   pic_id               varchar(64),
   like_count           varchar(64),
   view_count           varchar(64),
   status               int(5),
   create_by            varchar(64),
   create_time          datetime,
   update_by            varchar(64),
   update_time          datetime,
   remark               varchar(255),
   del_flag             char(1),
   PRIMARY KEY (`id`),
   KEY `Index_del_flag` (`del_flag`),
   KEY `article_id` (`article_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '文章信息';



drop table if exists content;

/*==============================================================*/
/* Table: content                                               */
/*==============================================================*/
create table content
(
    id                   varchar(64) not null,
    article_id           varchar(64),
    content              text,
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`),
    KEY `article_id` (`article_id`)
 )ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '文章详情';





drop table if exists comment;

/*==============================================================*/
/* Table: comment                                               */
/*==============================================================*/
create table comment
(
   id                   varchar(64) not null,
   article_id           varchar(64),
   parent_id            varchar(64),
   comment_type         varchar(64),
   comment_content      varchar(500),
   create_by            varchar(64),
   create_time          datetime,
   update_by            varchar(64),
   update_time          datetime,
   remark               varchar(255),
   del_flag             char(1),
   PRIMARY KEY (`id`),
   KEY `Index_del_flag` (`del_flag`),
   KEY `article_id` (`article_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '评论';




drop table if exists article_category;

/*==============================================================*/
/* Table: article_category                                      */
/*==============================================================*/
create table article_category
(
    id                   varchar(64) not null,
    category_name        varchar(64),
    description          varchar(255),
    parent_id            varchar(64),
    all_parent_ids       varchar(500),
    sort                 int(5),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '分类';




drop table if exists tag;

/*==============================================================*/
/* Table: tag                                                   */
/*==============================================================*/
create table tag
(
    id                   varchar(64) not null,
    tag_name             varchar(64),
    tag_color            varchar(64),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '标签';




drop table if exists category_mapping;

/*==============================================================*/
/* Table: category_mapping                                      */
/*==============================================================*/
create table category_mapping
(
    id                   varchar(64) not null,
    article_id           varchar(64),
    category_id          varchar(64),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`),
    KEY `article_id` (`article_id`),
    KEY `category_id` (`category_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '分类映射关系表';




drop table if exists tag_mapping;

/*==============================================================*/
/* Table: tag_mapping                                           */
/*==============================================================*/
create table tag_mapping
(
    id                   varchar(64) not null,
    article_id           varchar(64),
    tag_id               varchar(64),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`),
    KEY `article_id` (`article_id`),
    KEY `tag_id` (`tag_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '标签映射关系表';




drop table if exists pic_gallery;

/*==============================================================*/
/* Table: pic_gallery                                           */
/*==============================================================*/
create table pic_gallery
(
    id                   varchar(64) not null,
    pic_id               varchar(64),
    group_num            varchar(64),
    pic_name             varchar(64),
    pic_url              varchar(64),
    pic_size             varchar(64),
    pic_type             varchar(64),
    status               int(5),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`),
    KEY `pic_id` (`pic_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '图片资源库';





drop table if exists pic_group;

/*==============================================================*/
/* Table: pic_group                                             */
/*==============================================================*/
create table pic_group
(
    id                   varchar(64) not null,
    group_num            varchar(64),
    group_name           varchar(64),
    description          varchar(200),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `Index_del_flag` (`del_flag`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '图片资源分组';




drop table if exists user_info;

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
    id                   varchar(64) not null,
    user_id              varchar(64),
    real_name            varchar(64),
    age                  varchar(64),
    nickname             varchar(64),
    account              varchar(64),
    password             varchar(64),
    email                varchar(64),
    telephone            varchar(64),
    ip_address           varchar(64),
    head_pic             varchar(64),
    user_type            varchar(64),
    create_by            varchar(64),
    create_time          datetime,
    update_by            varchar(64),
    update_time          datetime,
    remark               varchar(255),
    del_flag             char(1),
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin comment '用户信息';


