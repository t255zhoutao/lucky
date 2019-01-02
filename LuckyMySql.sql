/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019\1\2 星期三 8:58:25                         */
/*==============================================================*/


drop table if exists allot;

drop table if exists allotdetail;

drop table if exists client;

drop table if exists clientorder;

drop table if exists clientorderdetail;

drop table if exists company;

drop table if exists deparetment;

drop table if exists employee;

drop table if exists job;

drop table if exists menu;

drop table if exists product;

drop table if exists productclass;

drop table if exists productlist;

drop table if exists productspec;

drop table if exists purchase;

drop table if exists purchasedetail;

drop table if exists purchasein;

drop table if exists purindetail;

drop table if exists quality;

drop table if exists qualitydetail;

drop table if exists role;

drop table if exists sales;

drop table if exists salesdetail;

drop table if exists sellorder;

drop table if exists sellorderdetail;

drop table if exists sellout;

drop table if exists selloutdetail;

drop table if exists stockpile;

drop table if exists stockpiledetail;

drop table if exists supplier;

drop table if exists supply;

drop table if exists supplyDetail;

drop table if exists warehouse;

drop table if exists warehousedetail;

/*==============================================================*/
/* Table: allot                                                 */
/*==============================================================*/
create table allot
(
   allotNo              varchar(10) not null,
   employeeNo           varchar(10),
   allotState           int,
   allotData            datetime,
   allotReceipts        varchar(16),
   allotWarenterNo      varchar(10),
   allotWarcomeNo       varchar(10),
   primary key (allotNo)
);

/*==============================================================*/
/* Table: allotdetail                                           */
/*==============================================================*/
create table allotdetail
(
   allotDetailNo        varchar(10) not null,
   allotNo              varchar(10),
   productNo            varchar(10),
   allotNumber          int,
   primary key (allotDetailNo)
);

/*==============================================================*/
/* Table: client                                                */
/*==============================================================*/
create table client
(
   clientNo             varchar(10) not null,
   clientName           varchar(10),
   clientSex            int,
   clientPhone          varchar(11),
   clientEmail          varchar(20),
   clientHeadImg        varchar(50),
   clientState          int,
   clientCard           varchar(18),
   clientAddress        varchar(100),
   clientData           datetime,
   clientExplain        varchar(100),
   clientContext        varchar(100),
   primary key (clientNo)
);

/*==============================================================*/
/* Table: clientorder                                           */
/*==============================================================*/
create table clientorder
(
   cleorderNo           varchar(10) not null,
   clientNo             varchar(10),
   cleorderDate         datetime,
   celorderState        int,
   primary key (cleorderNo)
);

/*==============================================================*/
/* Table: clientorderdetail                                     */
/*==============================================================*/
create table clientorderdetail
(
   cleorderDetailNo     varchar(10) not null,
   cleorderNo           varchar(10),
   productNo            varchar(10),
   cleorderNumber       int,
   primary key (cleorderDetailNo)
);

/*==============================================================*/
/* Table: company                                               */
/*==============================================================*/
create table company
(
   comNo                varchar(10) not null,
   comName              varchar(20),
   comAddress           varchar(50),
   comPhone             varchar(11),
   comCotext            varchar(100),
   primary key (comNo)
);

/*==============================================================*/
/* Table: deparetment                                           */
/*==============================================================*/
create table deparetment
(
   deparetmentNo        varchar(10) not null,
   deparetmentName      varchar(20),
   comNo                varchar(10),
   primary key (deparetmentNo)
);

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   employeeNo           varchar(10) not null,
   deparetmentNo        varchar(10),
   roleNo               varchar(10),
   employeeName         varchar(10),
   employeeEmail        varchar(20),
   employeePhone        varchar(11),
   employeeSalary       decimal(10,2),
   employeeManagerNo    varchar(10),
   employeeDate         datetime,
   primary key (employeeNo)
);

/*==============================================================*/
/* Table: job                                                   */
/*==============================================================*/
create table job
(
   jobNo                varchar(10) not null,
   employeeNo           varchar(10),
   jobName              varchar(20),
   remark               varchar(100),
   primary key (jobNo)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   menuNo               varchar(10) not null,
   menuRoleNo           varchar(10),
   menuName             varchar(20),
   menuTopNo            varchar(10),
   menuImg              varchar(100),
   menuUrl              varchar(50),
   primary key (menuNo)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   productNo            varchar(10) not null,
   productName          varchar(20),
   proInPrice           char(10),
   proOutPrice          decimal(10,2),
   proEmployeeNo        varchar(10),
   proData              datetime,
   primary key (productNo)
);

/*==============================================================*/
/* Table: productclass                                          */
/*==============================================================*/
create table productclass
(
   productClassNo       varchar(10) not null,
   employeeNo           varchar(10),
   productNo            varchar(10),
   proName              varchar(10),
   proData              datetime,
   primary key (productClassNo)
);

/*==============================================================*/
/* Table: productlist                                           */
/*==============================================================*/
create table productlist
(
   productListNo        varchar(10) not null,
   productClassNo       varchar(10),
   employeeNo           varchar(10),
   productNo            varchar(10),
   productListName      varchar(10),
   productData          datetime,
   primary key (productListNo)
);

/*==============================================================*/
/* Table: productspec                                           */
/*==============================================================*/
create table productspec
(
   productSpecNo        varchar(10) not null,
   employeeNo           varchar(10),
   productNo            varchar(10),
   productName          varchar(20),
   productEmployeeNo    varchar(10),
   productData          datetime,
   productRemark        varchar(50),
   primary key (productSpecNo)
);

/*==============================================================*/
/* Table: purchase                                              */
/*==============================================================*/
create table purchase
(
   purNo                varchar(20) not null comment '采购编号',
   employeeNo           varchar(10),
   supplierNo           varchar(10),
   InvoiceNo            varchar(16),
   deparetmentNo        varchar(10),
   warhouseNo           varchar(20),
   purData              datetime,
   purRemark            varchar(50),
   primary key (purNo)
);

/*==============================================================*/
/* Table: purchasedetail                                        */
/*==============================================================*/
create table purchasedetail
(
   purDetailNo          varchar(10) not null,
   purNo                varchar(20) comment '采购编号',
   productNo            varchar(10),
   purNumber            int,
   purState             int,
   primary key (purDetailNo)
);

/*==============================================================*/
/* Table: purchasein                                            */
/*==============================================================*/
create table purchasein
(
   purinNo              varchar(10) not null,
   warhouseNo           varchar(10),
   purinOrderNo         varchar(16),
   purinData            datetime,
   employeeNo           varchar(10),
   primary key (purinNo)
);

/*==============================================================*/
/* Table: purindetail                                           */
/*==============================================================*/
create table purindetail
(
   purinDetailNo        varchar(10) not null,
   purinNo              varchar(10),
   productNo            varchar(10),
   purInNumber          int,
   primary key (purinDetailNo)
);

/*==============================================================*/
/* Table: quality                                               */
/*==============================================================*/
create table quality
(
   quaNo                varchar(10) not null,
   quaType              varchar(5),
   quaUserNo            varchar(10),
   quaData              datetime,
   InvoiceNo            varchar(16),
   quaRemark            varchar(50),
   primary key (quaNo)
);

/*==============================================================*/
/* Table: qualitydetail                                         */
/*==============================================================*/
create table qualitydetail
(
   quaNo                varchar(10),
   quaDetailNo          varchar(10) not null,
   productNo            varchar(10),
   quaDetailNumber      int,
   quaState             int,
   primary key (quaDetailNo)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   roleNo               varchar(10) not null,
   menuNo               varchar(10),
   roleName             varchar(20),
   roleEmployeeNo       varchar(10),
   roleDesc             varchar(50),
   primary key (roleNo)
);

/*==============================================================*/
/* Table: sales                                                 */
/*==============================================================*/
create table sales
(
   salesNo              varchar(10) not null,
   emp_employeeNo       varchar(10),
   salesData            datetime,
   salesClientNo        varchar(10),
   salesCause           varchar(100),
   employeeNo           char(10),
   primary key (salesNo)
);

/*==============================================================*/
/* Table: salesdetail                                           */
/*==============================================================*/
create table salesdetail
(
   salesDetailNo        varchar(10) not null,
   salesNo              varchar(10),
   productNo            varchar(10),
   salesCareNumber      int,
   primary key (salesDetailNo)
);

/*==============================================================*/
/* Table: sellorder                                             */
/*==============================================================*/
create table sellorder
(
   orderNo              varchar(10) not null,
   orderNoNumber        varchar(16),
   orderState           int,
   ordermark            varchar(10),
   orderClient          varchar(10),
   employeeNo           varchar(10),
   deparetmentNo        varchar(10),
   orderData            datetime,
   primary key (orderNo)
);

/*==============================================================*/
/* Table: sellorderdetail                                       */
/*==============================================================*/
create table sellorderdetail
(
   orderDetailNo        varchar(10) not null,
   orderNo              varchar(10),
   productNo            varchar(10),
   orderNumber          int,
   purState             int,
   primary key (orderDetailNo)
);

/*==============================================================*/
/* Table: sellout                                               */
/*==============================================================*/
create table sellout
(
   selloutNo            varchar(10) not null,
   warhouseNo           varchar(10),
   selloutOrderNo       varchar(16),
   selloutData          datetime,
   employeeNo           varchar(10),
   primary key (selloutNo)
);

/*==============================================================*/
/* Table: selloutdetail                                         */
/*==============================================================*/
create table selloutdetail
(
   selloutDetailNo      varchar(10) not null,
   selloutNo            varchar(10),
   productNo            varchar(10),
   selloutNumber        int,
   primary key (selloutDetailNo)
);

/*==============================================================*/
/* Table: stockpile                                             */
/*==============================================================*/
create table stockpile
(
   stockPileNo          varchar(10) not null,
   deparetmentNo        varchar(10),
   primary key (stockPileNo)
);

/*==============================================================*/
/* Table: stockpiledetail                                       */
/*==============================================================*/
create table stockpiledetail
(
   stockPileDetailNo    varchar(10) not null,
   stockPileNo          varchar(10),
   productNo            varchar(10),
   spdNumber            int,
   primary key (stockPileDetailNo)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
create table supplier
(
   supplierNo           varchar(10) not null,
   supName              varchar(20),
   supAddress           varchar(50),
   supPhone             varchar(11),
   supPostalCode        varchar(6),
   supConstactPerson    varchar(10),
   primary key (supplierNo)
);

/*==============================================================*/
/* Table: supply                                                */
/*==============================================================*/
create table supply
(
   supNo                varchar(10) not null,
   supplierNo           varchar(10),
   warhouseNo           varchar(10),
   supdepartNo          varchar(10),
   InvoiceNo            varchar(16),
   supData              datetime,
   supShipmentData      datetime,
   supUserNo            varchar(10),
   supRemark            varchar(50),
   primary key (supNo)
);

/*==============================================================*/
/* Table: supplyDetail                                          */
/*==============================================================*/
create table supplyDetail
(
   sellappearNo         varchar(10) not null,
   supNo                varchar(10),
   供货物品编号               varchar(10),
   供货数量                 int,
   primary key (sellappearNo)
);

/*==============================================================*/
/* Table: warehouse                                             */
/*==============================================================*/
create table warehouse
(
   warhouseNo           varchar(10) not null,
   stockPileNo          varchar(10),
   warAddress           varchar(50),
   warPhone             varchar(11),
   warMaxNumber         int,
   primary key (warhouseNo)
);

/*==============================================================*/
/* Table: warehousedetail                                       */
/*==============================================================*/
create table warehousedetail
(
   warehousedetailNo    varchar(10) not null,
   warhouseNo           varchar(10),
   productNo            varchar(10),
   wdConding            varchar(10),
   wdbeyondNumber       int,
   wdkNumber            int,
   wdbeyondMoney        decimal(10,2),
   wdMoney              decimal(10,2),
   wdPrice              decimal(10,2),
   wdData               datetime,
   primary key (warehousedetailNo)
);

alter table allot add constraint FK_Reference_30 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table allotdetail add constraint FK_Reference_28 foreign key (allotNo)
      references allot (allotNo) on delete restrict on update restrict;

alter table clientorder add constraint FK_Reference_11 foreign key (clientNo)
      references client (clientNo) on delete restrict on update restrict;

alter table clientorderdetail add constraint FK_Reference_10 foreign key (cleorderNo)
      references clientorder (cleorderNo) on delete restrict on update restrict;

alter table clientorderdetail add constraint FK_Reference_38 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table deparetment add constraint FK_Reference_3 foreign key (comNo)
      references company (comNo) on delete restrict on update restrict;

alter table employee add constraint FK_Reference_43 foreign key (deparetmentNo)
      references deparetment (deparetmentNo) on delete restrict on update restrict;

alter table employee add constraint FK_Reference_48 foreign key (roleNo)
      references role (roleNo) on delete restrict on update restrict;

alter table job add constraint FK_Reference_40 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table productclass add constraint FK_Reference_36 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table productclass add constraint FK_Reference_42 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table productlist add constraint FK_Reference_34 foreign key (productClassNo)
      references productclass (productClassNo) on delete restrict on update restrict;

alter table productlist add constraint FK_Reference_35 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table productlist add constraint FK_Reference_41 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table productspec add constraint FK_Reference_33 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table productspec add constraint FK_Reference_39 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table purchase add constraint FK_Reference_18 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table purchase add constraint FK_Reference_21 foreign key (supplierNo)
      references supplier (supplierNo) on delete restrict on update restrict;

alter table purchase add constraint FK_Reference_22 foreign key (deparetmentNo)
      references deparetment (deparetmentNo) on delete restrict on update restrict;

alter table purchasedetail add constraint FK_Reference_23 foreign key (purNo)
      references purchase (purNo) on delete restrict on update restrict;

alter table purchasein add constraint FK_Reference_26 foreign key (warhouseNo)
      references warehouse (warhouseNo) on delete restrict on update restrict;

alter table purchasein add constraint FK_Reference_31 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table purindetail add constraint FK_Reference_15 foreign key (purinNo)
      references purchasein (purinNo) on delete restrict on update restrict;

alter table qualitydetail add constraint FK_Reference_13 foreign key (quaNo)
      references quality (quaNo) on delete restrict on update restrict;

alter table role add constraint FK_Reference_46 foreign key (menuNo)
      references menu (menuNo) on delete restrict on update restrict;

alter table sales add constraint FK_Reference_45 foreign key (emp_employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table salesdetail add constraint FK_Reference_14 foreign key (salesNo)
      references sales (salesNo) on delete restrict on update restrict;

alter table salesdetail add constraint FK_Reference_44 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table sellorderdetail add constraint FK_Reference_17 foreign key (orderNo)
      references sellorder (orderNo) on delete restrict on update restrict;

alter table sellorderdetail add constraint FK_Reference_37 foreign key (productNo)
      references product (productNo) on delete restrict on update restrict;

alter table sellout add constraint FK_Reference_27 foreign key (warhouseNo)
      references warehouse (warhouseNo) on delete restrict on update restrict;

alter table sellout add constraint FK_Reference_29 foreign key (employeeNo)
      references employee (employeeNo) on delete restrict on update restrict;

alter table selloutdetail add constraint FK_Reference_16 foreign key (selloutNo)
      references sellout (selloutNo) on delete restrict on update restrict;

alter table stockpile add constraint FK_Reference_19 foreign key (deparetmentNo)
      references deparetment (deparetmentNo) on delete restrict on update restrict;

alter table stockpiledetail add constraint FK_Reference_12 foreign key (stockPileNo)
      references stockpile (stockPileNo) on delete restrict on update restrict;

alter table supply add constraint FK_Reference_25 foreign key (warhouseNo)
      references warehouse (warhouseNo) on delete restrict on update restrict;

alter table supply add constraint FK_Reference_6 foreign key (supplierNo)
      references supplier (supplierNo) on delete restrict on update restrict;

alter table supplyDetail add constraint FK_Reference_5 foreign key (supNo)
      references supply (supNo) on delete restrict on update restrict;

alter table warehouse add constraint FK_Reference_32 foreign key (stockPileNo)
      references stockpile (stockPileNo) on delete restrict on update restrict;

alter table warehousedetail add constraint FK_Reference_4 foreign key (warhouseNo)
      references warehouse (warhouseNo) on delete restrict on update restrict;

