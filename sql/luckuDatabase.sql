/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019\1\2 星期三 21:18:17                        */
/*==============================================================*/


/*==============================================================*/
/* Table: allot                                                 */
/*==============================================================*/
CREATE TABLE allot
(
   allotNo              VARCHAR(10) NOT NULL,
   employeeNo           VARCHAR(10),
   allotState           INT,
   allotData            DATETIME,
   allotReceipts        VARCHAR(16),
   allotWarenterNo      VARCHAR(10),
   allotWarcomeNo       VARCHAR(10),
   PRIMARY KEY (allotNo)
);

/*==============================================================*/
/* Table: allotdetail                                           */
/*==============================================================*/
CREATE TABLE allotdetail
(
   allotDetailNo        VARCHAR(10) NOT NULL,
   allotNo              VARCHAR(10),
   productNo            VARCHAR(10),
   allotNumber          INT,
   PRIMARY KEY (allotDetailNo)
);

/*==============================================================*/
/* Table: clientinfo                                            */
/*==============================================================*/
CREATE TABLE clientinfo
(
   clientNo             VARCHAR(10) NOT NULL,
   clientName           VARCHAR(10),
   clientSex            INT,
   clientPhone          VARCHAR(11),
   clientEmail          VARCHAR(20),
   clientHeadImg        VARCHAR(50),
   clientState          INT,
   clientCard           VARCHAR(18),
   clientAddress        VARCHAR(100),
   clientData           DATETIME,
   clientExplain        VARCHAR(100),
   clientContext        VARCHAR(100),
   PRIMARY KEY (clientNo)
);

/*==============================================================*/
/* Table: clientorder                                           */
/*==============================================================*/
CREATE TABLE clientorder
(
   cleorderNo           VARCHAR(10) NOT NULL,
   clientNo             VARCHAR(10),
   cleorderDate         DATETIME,
   celorderState        INT,
   PRIMARY KEY (cleorderNo)
);

/*==============================================================*/
/* Table: clientorderdetail                                     */
/*==============================================================*/
CREATE TABLE clientorderdetail
(
   cleorderDetailNo     VARCHAR(10) NOT NULL,
   cleorderNo           VARCHAR(10),
   productNo            VARCHAR(10),
   cleorderNumber       INT,
   PRIMARY KEY (cleorderDetailNo)
);

/*==============================================================*/
/* Table: company                                               */
/*==============================================================*/
CREATE TABLE company
(
   comNo                VARCHAR(10) NOT NULL,
   comName              VARCHAR(20),
   comAddress           VARCHAR(50),
   comPhone             VARCHAR(11),
   comCotext            VARCHAR(100),
   PRIMARY KEY (comNo)
);

/*==============================================================*/
/* Table: deparetment                                           */
/*==============================================================*/
CREATE TABLE deparetment
(
   deparetmentNo        VARCHAR(10) NOT NULL,
   deparetmentName      VARCHAR(20),
   comNo                VARCHAR(10),
   PRIMARY KEY (deparetmentNo)
);

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
CREATE TABLE employee
(
   employeeNo           VARCHAR(10) NOT NULL,
   deparetmentNo        VARCHAR(10),
   roleNo               VARCHAR(10),
   jobNo                VARCHAR(10),
   employeeName         VARCHAR(10),
   employeeEmail        VARCHAR(20),
   employeePhone        VARCHAR(11),
   employeeSalary       DECIMAL(10,2),
   employeeManagerNo    VARCHAR(10),
   employeeDate         DATETIME,
   PRIMARY KEY (employeeNo)
);

/*==============================================================*/
/* Table: job                                                   */
/*==============================================================*/
CREATE TABLE job
(
   jobNo                VARCHAR(10) NOT NULL,
   jobName              VARCHAR(20),
   remark               VARCHAR(100),
   PRIMARY KEY (jobNo)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
CREATE TABLE menu
(
   menuNo               VARCHAR(10) NOT NULL,
   menuRoleNo           VARCHAR(10),
   menuName             VARCHAR(20),
   menuTopNo            VARCHAR(10),
   menuImg              VARCHAR(100),
   menuUrl              VARCHAR(50),
   PRIMARY KEY (menuNo)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
CREATE TABLE product
(
   productNo            VARCHAR(10) NOT NULL,
   productName          VARCHAR(20),
   proInPrice           CHAR(10),
   proOutPrice          DECIMAL(10,2),
   proEmployeeNo        VARCHAR(10),
   proData              DATETIME,
   PRIMARY KEY (productNo)
);

/*==============================================================*/
/* Table: productclass                                          */
/*==============================================================*/
CREATE TABLE productclass
(
   productClassNo       VARCHAR(10) NOT NULL,
   employeeNo           VARCHAR(10),
   productNo            VARCHAR(10),
   proName              VARCHAR(10),
   proData              DATETIME,
   PRIMARY KEY (productClassNo)
);

/*==============================================================*/
/* Table: productlist                                           */
/*==============================================================*/
CREATE TABLE productlist
(
   productListNo        VARCHAR(10) NOT NULL,
   productClassNo       VARCHAR(10),
   employeeNo           VARCHAR(10),
   productNo            VARCHAR(10),
   productListName      VARCHAR(10),
   productData          DATETIME,
   PRIMARY KEY (productListNo)
);

/*==============================================================*/
/* Table: productspec                                           */
/*==============================================================*/
CREATE TABLE productspec
(
   productSpecNo        VARCHAR(10) NOT NULL,
   employeeNo           VARCHAR(10),
   productNo            VARCHAR(10),
   productName          VARCHAR(20),
   productEmployeeNo    VARCHAR(10),
   productData          DATETIME,
   productRemark        VARCHAR(50),
   PRIMARY KEY (productSpecNo)
);

/*==============================================================*/
/* Table: purchase                                              */
/*==============================================================*/
CREATE TABLE purchase
(
   purNo                VARCHAR(20) NOT NULL COMMENT '采购编号',
   employeeNo           VARCHAR(10),
   supplierNo           VARCHAR(10),
   InvoiceNo            VARCHAR(16),
   deparetmentNo        VARCHAR(10),
   warhouseNo           VARCHAR(20),
   purData              DATETIME,
   purRemark            VARCHAR(50),
   PRIMARY KEY (purNo)
);

/*==============================================================*/
/* Table: purchasedetail                                        */
/*==============================================================*/
CREATE TABLE purchasedetail
(
   purDetailNo          VARCHAR(10) NOT NULL,
   purNo                VARCHAR(20) COMMENT '采购编号',
   productNo            VARCHAR(10),
   purNumber            INT,
   purState             INT,
   PRIMARY KEY (purDetailNo)
);

/*==============================================================*/
/* Table: purchasein                                            */
/*==============================================================*/
CREATE TABLE purchasein
(
   purinNo              VARCHAR(10) NOT NULL,
   warhouseNo           VARCHAR(10),
   purinOrderNo         VARCHAR(16),
   purinData            DATETIME,
   employeeNo           VARCHAR(10),
   PRIMARY KEY (purinNo)
);

/*==============================================================*/
/* Table: purindetail                                           */
/*==============================================================*/
CREATE TABLE purindetail
(
   purinDetailNo        VARCHAR(10) NOT NULL,
   purinNo              VARCHAR(10),
   productNo            VARCHAR(10),
   purInNumber          INT,
   PRIMARY KEY (purinDetailNo)
);

/*==============================================================*/
/* Table: quality                                               */
/*==============================================================*/
CREATE TABLE quality
(
   quaNo                VARCHAR(10) NOT NULL,
   quaType              VARCHAR(5),
   quaUserNo            VARCHAR(10),
   quaData              DATETIME,
   InvoiceNo            VARCHAR(16),
   quaRemark            VARCHAR(50),
   PRIMARY KEY (quaNo)
);

/*==============================================================*/
/* Table: qualitydetail                                         */
/*==============================================================*/
CREATE TABLE qualitydetail
(
   quaNo                VARCHAR(10),
   quaDetailNo          VARCHAR(10) NOT NULL,
   productNo            VARCHAR(10),
   quaDetailNumber      INT,
   quaState             INT,
   PRIMARY KEY (quaDetailNo)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
CREATE TABLE role
(
   roleNo               VARCHAR(10) NOT NULL,
   menuNo               VARCHAR(10),
   roleName             VARCHAR(20),
   roleEmployeeNo       VARCHAR(10),
   roleDesc             VARCHAR(50),
   PRIMARY KEY (roleNo)
);

/*==============================================================*/
/* Table: sales                                                 */
/*==============================================================*/
CREATE TABLE sales
(
   salesNo              VARCHAR(10) NOT NULL,
   emp_employeeNo       VARCHAR(10),
   salesData            DATETIME,
   salesClientNo        VARCHAR(10),
   salesCause           VARCHAR(100),
   employeeNo           CHAR(10),
   PRIMARY KEY (salesNo)
);

/*==============================================================*/
/* Table: salesdetail                                           */
/*==============================================================*/
CREATE TABLE salesdetail
(
   salesDetailNo        VARCHAR(10) NOT NULL,
   salesNo              VARCHAR(10),
   productNo            VARCHAR(10),
   salesCareNumber      INT,
   PRIMARY KEY (salesDetailNo)
);

/*==============================================================*/
/* Table: sellorder                                             */
/*==============================================================*/
CREATE TABLE sellorder
(
   orderNo              VARCHAR(10) NOT NULL,
   orderNoNumber        VARCHAR(16),
   orderState           INT,
   ordermark            VARCHAR(10),
   orderClient          VARCHAR(10),
   employeeNo           VARCHAR(10),
   deparetmentNo        VARCHAR(10),
   orderData            DATETIME,
   PRIMARY KEY (orderNo)
);

/*==============================================================*/
/* Table: sellorderdetail                                       */
/*==============================================================*/
CREATE TABLE sellorderdetail
(
   orderDetailNo        VARCHAR(10) NOT NULL,
   orderNo              VARCHAR(10),
   productNo            VARCHAR(10),
   orderNumber          INT,
   purState             INT,
   PRIMARY KEY (orderDetailNo)
);

/*==============================================================*/
/* Table: sellout                                               */
/*==============================================================*/
CREATE TABLE sellout
(
   selloutNo            VARCHAR(10) NOT NULL,
   warhouseNo           VARCHAR(10),
   selloutOrderNo       VARCHAR(16),
   selloutData          DATETIME,
   employeeNo           VARCHAR(10),
   PRIMARY KEY (selloutNo)
);

/*==============================================================*/
/* Table: selloutdetail                                         */
/*==============================================================*/
CREATE TABLE selloutdetail
(
   selloutDetailNo      VARCHAR(10) NOT NULL,
   selloutNo            VARCHAR(10),
   productNo            VARCHAR(10),
   selloutNumber        INT,
   PRIMARY KEY (selloutDetailNo)
);

/*==============================================================*/
/* Table: stockpile                                             */
/*==============================================================*/
CREATE TABLE stockpile
(
   stockPileNo          VARCHAR(10) NOT NULL,
   deparetmentNo        VARCHAR(10),
   PRIMARY KEY (stockPileNo)
);

/*==============================================================*/
/* Table: stockpiledetail                                       */
/*==============================================================*/
CREATE TABLE stockpiledetail
(
   stockPileDetailNo    VARCHAR(10) NOT NULL,
   stockPileNo          VARCHAR(10),
   productNo            VARCHAR(10),
   spdNumber            INT,
   PRIMARY KEY (stockPileDetailNo)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
CREATE TABLE supplier
(
   supplierNo           VARCHAR(10) NOT NULL,
   supName              VARCHAR(20),
   supAddress           VARCHAR(50),
   supPhone             VARCHAR(11),
   supPostalCode        VARCHAR(6),
   supConstactPerson    VARCHAR(10),
   PRIMARY KEY (supplierNo)
);

/*==============================================================*/
/* Table: supply                                                */
/*==============================================================*/
CREATE TABLE supply
(
   supNo                VARCHAR(10) NOT NULL,
   supplierNo           VARCHAR(10),
   warhouseNo           VARCHAR(10),
   supdepartNo          VARCHAR(10),
   InvoiceNo            VARCHAR(16),
   supData              DATETIME,
   supShipmentData      DATETIME,
   supUserNo            VARCHAR(10),
   supRemark            VARCHAR(50),
   PRIMARY KEY (supNo)
);

/*==============================================================*/
/* Table: supplyDetail                                          */
/*==============================================================*/
CREATE TABLE supplyDetail
(
   sellappearNo         VARCHAR(10) NOT NULL,
   supNo                VARCHAR(10),
   productNo            VARCHAR(10),
   supNumber            INT,
   PRIMARY KEY (sellappearNo)
);

/*==============================================================*/
/* Table: warehouse                                             */
/*==============================================================*/
CREATE TABLE warehouse
(
   warhouseNo           VARCHAR(10) NOT NULL,
   stockPileNo          VARCHAR(10),
   warAddress           VARCHAR(50),
   warPhone             VARCHAR(11),
   warMaxNumber         INT,
   warName              varchar(20),
   PRIMARY KEY (warhouseNo)
);

/*==============================================================*/
/* Table: warehousedetail                                       */
/*==============================================================*/
CREATE TABLE warehousedetail
(
   warehousedetailNo    VARCHAR(10) NOT NULL,
   warhouseNo           VARCHAR(10),
   productNo            VARCHAR(10),
   wdConding            VARCHAR(10),
   wdbeyondNumber       INT,
   wdkNumber            INT,
   wdbeyondMoney        DECIMAL(10,2),
   wdMoney              DECIMAL(10,2),
   wdPrice              DECIMAL(10,2),
   wdData               DATETIME,
   PRIMARY KEY (warehousedetailNo)
);

ALTER TABLE allot ADD CONSTRAINT FK_Reference_30 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE allotdetail ADD CONSTRAINT FK_Reference_28 FOREIGN KEY (allotNo)
      REFERENCES allot (allotNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientorder ADD CONSTRAINT FK_Reference_11 FOREIGN KEY (clientNo)
      REFERENCES clientinfo (clientNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientorderdetail ADD CONSTRAINT FK_Reference_10 FOREIGN KEY (cleorderNo)
      REFERENCES clientorder (cleorderNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientorderdetail ADD CONSTRAINT FK_Reference_38 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE deparetment ADD CONSTRAINT FK_Reference_3 FOREIGN KEY (comNo)
      REFERENCES company (comNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE employee ADD CONSTRAINT FK_Reference_40 FOREIGN KEY (jobNo)
      REFERENCES job (jobNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE employee ADD CONSTRAINT FK_Reference_43 FOREIGN KEY (deparetmentNo)
      REFERENCES deparetment (deparetmentNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE employee ADD CONSTRAINT FK_Reference_48 FOREIGN KEY (roleNo)
      REFERENCES role (roleNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productclass ADD CONSTRAINT FK_Reference_36 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productclass ADD CONSTRAINT FK_Reference_42 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productlist ADD CONSTRAINT FK_Reference_34 FOREIGN KEY (productClassNo)
      REFERENCES productclass (productClassNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productlist ADD CONSTRAINT FK_Reference_35 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productlist ADD CONSTRAINT FK_Reference_41 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productspec ADD CONSTRAINT FK_Reference_33 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productspec ADD CONSTRAINT FK_Reference_39 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchase ADD CONSTRAINT FK_Reference_18 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchase ADD CONSTRAINT FK_Reference_21 FOREIGN KEY (supplierNo)
      REFERENCES supplier (supplierNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchase ADD CONSTRAINT FK_Reference_22 FOREIGN KEY (deparetmentNo)
      REFERENCES deparetment (deparetmentNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchasedetail ADD CONSTRAINT FK_Reference_23 FOREIGN KEY (purNo)
      REFERENCES purchase (purNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchasein ADD CONSTRAINT FK_Reference_26 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchasein ADD CONSTRAINT FK_Reference_31 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purindetail ADD CONSTRAINT FK_Reference_15 FOREIGN KEY (purinNo)
      REFERENCES purchasein (purinNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE qualitydetail ADD CONSTRAINT FK_Reference_13 FOREIGN KEY (quaNo)
      REFERENCES quality (quaNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE role ADD CONSTRAINT FK_Reference_46 FOREIGN KEY (menuNo)
      REFERENCES menu (menuNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sales ADD CONSTRAINT FK_Reference_45 FOREIGN KEY (emp_employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE salesdetail ADD CONSTRAINT FK_Reference_14 FOREIGN KEY (salesNo)
      REFERENCES sales (salesNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE salesdetail ADD CONSTRAINT FK_Reference_44 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellorderdetail ADD CONSTRAINT FK_Reference_17 FOREIGN KEY (orderNo)
      REFERENCES sellorder (orderNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellorderdetail ADD CONSTRAINT FK_Reference_37 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellout ADD CONSTRAINT FK_Reference_27 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellout ADD CONSTRAINT FK_Reference_29 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE selloutdetail ADD CONSTRAINT FK_Reference_16 FOREIGN KEY (selloutNo)
      REFERENCES sellout (selloutNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE stockpile ADD CONSTRAINT FK_Reference_19 FOREIGN KEY (deparetmentNo)
      REFERENCES deparetment (deparetmentNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE stockpiledetail ADD CONSTRAINT FK_Reference_12 FOREIGN KEY (stockPileNo)
      REFERENCES stockpile (stockPileNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply ADD CONSTRAINT FK_Reference_25 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply ADD CONSTRAINT FK_Reference_6 FOREIGN KEY (supplierNo)
      REFERENCES supplier (supplierNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supplyDetail ADD CONSTRAINT FK_Reference_5 FOREIGN KEY (supNo)
      REFERENCES supply (supNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE warehouse ADD CONSTRAINT FK_Reference_32 FOREIGN KEY (stockPileNo)
      REFERENCES stockpile (stockPileNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE warehousedetail ADD CONSTRAINT FK_Reference_4 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE purchasedetail ADD CONSTRAINT FK_Reference_48 FOREIGN KEY (productNo)
      REFERENCES product (productNo) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE purchase ADD CONSTRAINT FK_Reference_47 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

