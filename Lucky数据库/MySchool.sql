/*==============================================================*/
/* Table: allot                                                 */
/*==============================================================*/
CREATE TABLE allot
(
   allotNo              VARCHAR(10) NOT NULL COMMENT '调拨单编号',
   stockNo              VARCHAR(10) COMMENT '仓库详细编号',
   employeeNo           VARCHAR(5) COMMENT '员工编号',
   allotState           INT COMMENT '单据状态',
   allotNumber          VARCHAR(20) COMMENT '单据号',
   allotData            DATETIME COMMENT '单据日期',
   allotUserNo          VARCHAR(5) COMMENT '经手人',
   allotDepartNo        VARCHAR(5) COMMENT '经手部门',
   allotWarenterNo      VARCHAR(5) COMMENT '入库仓库',
   allotWarcomeNo       VARCHAR(5) COMMENT '出库仓库',
   allotUserName        VARCHAR(10) COMMENT '制单人',
   allotAuditName       VARCHAR(10) COMMENT '审核人',
   allotCancelName      VARCHAR(10) COMMENT '作废人',
   PRIMARY KEY (allotNo)
);

/*==============================================================*/
/* Table: clientInfo                                            */
/*==============================================================*/
CREATE TABLE clientInfo
(
   clientNo             VARCHAR(5) NOT NULL COMMENT '客户编号',
   cleorderNo           VARCHAR(10) COMMENT '客户订单编号',
   salesNo              VARCHAR(10) COMMENT '退货单编号',
   clientName           VARCHAR(10) COMMENT '客户名称',
   clientSex            INT COMMENT '性别',
   clientDuty           VARCHAR(20) COMMENT '职务',
   clientPhone          VARCHAR(11) COMMENT '手机号码',
   clientEmail          VARCHAR(18) COMMENT '邮箱',
   clientContext        VARCHAR(100) COMMENT '备注',
   clientExplain        VARCHAR(100) COMMENT '个人说明',
   clientHeadImg        VARCHAR(50) COMMENT '客户头像',
   clientState          INT COMMENT '客户状态',
   clientCard           VARCHAR(18) COMMENT '证件号码',
   clientAddress        VARCHAR(100) COMMENT '家庭住址',
   clientData           DATETIME COMMENT '创建时间',
   PRIMARY KEY (clientNo)
);

/*==============================================================*/
/* Table: clientOrde                                            */
/*==============================================================*/
CREATE TABLE clientOrde
(
   SaleID               VARCHAR NOT NULL COMMENT ' 销售编号',
   productClassNo       VARCHAR(10) COMMENT '商品总分类编号',
   saleProductID        VARCHAR COMMENT '商品编号',
   saleNumber           INT COMMENT '数量',
   saleMoney            declmal COMMENT '价格',
   PRIMARY KEY (SaleID)
);

/*==============================================================*/
/* Table: clientOrder                                           */
/*==============================================================*/
CREATE TABLE clientOrder
(
   cleorderNo           VARCHAR(10) NOT NULL COMMENT '客户订单编号',
   productClassNo       VARCHAR(10) COMMENT '商品总分类编号',
   cleorderClientNo     VARCHAR(5) COMMENT '客户编号',
   cleorderProductNo    VARCHAR(5) COMMENT '商品编号',
   cleorderNumber       INT COMMENT '商品数量',
   cleorderDate         DATETIME COMMENT '订单日期',
   celorderState        INT COMMENT '订单状态',
   PRIMARY KEY (cleorderNo)
);

/*==============================================================*/
/* Table: clientsignfor                                         */
/*==============================================================*/
CREATE TABLE clientsignfor
(
   clientsignNo         VARCHAR(10) NOT NULL COMMENT '签收编号',
   cleorderNo           VARCHAR(10) COMMENT '客户订单编号',
   clientsignGoods      VARCHAR(20) COMMENT '签收物品名称',
   clientsignName       VARCHAR(10) COMMENT '签收人',
   clientsignData       DATETIME COMMENT '签收日期',
   clientsignNumber     INT COMMENT '数量',
   Remark               VARCHAR(50) COMMENT '备注',
   PRIMARY KEY (clientsignNo)
);

/*==============================================================*/
/* Table: company                                               */
/*==============================================================*/
CREATE TABLE company
(
   comNo                VARCHAR(5) NOT NULL COMMENT '公司编号',
   comName              VARCHAR(20) COMMENT '公司名称',
   comAddress           VARCHAR(50) COMMENT '公司地址',
   comPhone             VARCHAR(11) COMMENT '公司电话',
   comCotext            VARCHAR(50) COMMENT '公司备注',
   Column_6             CHAR(10),
   PRIMARY KEY (comNo)
);

/*==============================================================*/
/* Table: deparetment                                           */
/*==============================================================*/
CREATE TABLE deparetment
(
   deparetmentNo        VARCHAR(5) NOT NULL COMMENT '部门编号',
   comNo                VARCHAR(5) COMMENT '公司编号',
   deparetmentName      VARCHAR(20) COMMENT '部门名称',
   depareComNo          VARCHAR(5) COMMENT '所属公司',
   PRIMARY KEY (deparetmentNo)
);

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
CREATE TABLE employee
(
   employeeNo           VARCHAR(5) NOT NULL COMMENT '员工编号',
   deparetmentNo        VARCHAR(5) COMMENT '部门编号',
   employeeName         VARCHAR(20) COMMENT '员工姓名',
   employeeEmail        VARCHAR(18) COMMENT '员工邮箱',
   employeePhone        VARCHAR(11) COMMENT '员工联系方式',
   employeeSalary       DECIMAL COMMENT '员工工资',
   employeeJobNo        VARCHAR(5) COMMENT '员工工种编号',
   employeeCommissionPct DECIMAL COMMENT '奖金率',
   employeeManagerNo    VARCHAR(5) COMMENT '上级编号',
   employeeDeparetNo    VARCHAR(5) COMMENT '部门编号',
   employeeDate         DATETIME COMMENT '日期',
   PRIMARY KEY (employeeNo)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
CREATE TABLE product
(
   productListNo        VARCHAR(10) NOT NULL COMMENT '商品细分类编号',
   pro_productSpecNo    VARCHAR(10) COMMENT '商品规格编号',
   productNo            VARCHAR(10) COMMENT '商品名称编号',
   productName          VARCHAR(20) COMMENT '商品名称',
   productSpecNo        VARCHAR(20) COMMENT '商品规格',
   proPrice             DECIMAL COMMENT '参考价格',
   proEmployeeNo        VARCHAR(20) COMMENT '操作员',
   proData              DATETIME COMMENT '创建时间',
   PRIMARY KEY (productListNo)
);

/*==============================================================*/
/* Table: productClass                                          */
/*==============================================================*/
CREATE TABLE productClass
(
   productClassID       VARCHAR(10) NOT NULL COMMENT '商品总分类编号',
   proName              VARCHAR(10) COMMENT '商品分类名称',
   proEmployeesName     VARCHAR(10) COMMENT '分类人员',
   proData              DATETIME COMMENT '分类时间',
   PRIMARY KEY (productClassID)
);

/*==============================================================*/
/* Table: productList                                           */
/*==============================================================*/
CREATE TABLE productList
(
   productClassNo       VARCHAR(10) NOT NULL COMMENT '商品总分类编号',
   pro_productListNo    VARCHAR(10) COMMENT '商品细分类编号',
   productListNo        VARCHAR(10) COMMENT '细分类编号',
   productName          VARCHAR(20) COMMENT '商品名称',
   productEmployeeNo    VARCHAR(20) COMMENT '操作员',
   productData          DATETIME COMMENT '创建时间',
   PRIMARY KEY (productClassNo)
);

/*==============================================================*/
/* Table: productSpec                                           */
/*==============================================================*/
CREATE TABLE productSpec
(
   productSpecNo        VARCHAR(10) NOT NULL COMMENT '商品规格编号',
   productClassID       VARCHAR(10) COMMENT '商品总分类编号',
   productName          VARCHAR(20) COMMENT '商品规格名称',
   productEmployeeNo    VARCHAR(5) COMMENT '操作员',
   productData          DATETIME COMMENT '创建时间',
   productRemark        VARCHAR(50) COMMENT '备注说明',
   PRIMARY KEY (productSpecNo)
);

/*==============================================================*/
/* Table: purchase                                              */
/*==============================================================*/
CREATE TABLE purchase
(
   purNo                VARCHAR(20) NOT NULL COMMENT '采购编号',
   supNo                VARCHAR(10) COMMENT '供货编号',
   purGoods             VARCHAR(20) COMMENT '采购物品',
   purNumber            INT COMMENT '采购数量',
   purdepartNo          VARCHAR(10) COMMENT '采购部门编号',
   purUserName          VARCHAR(10) COMMENT '采购人员',
   purPrice             DECIMAL COMMENT '单价',
   purWarehouseNo       VARCHAR(20) COMMENT '仓库编号',
   purRemark            VARCHAR(50) COMMENT '备注',
   purData              DATETIME COMMENT '采购日期',
   purState             INT COMMENT '订单状态',
   purMerchantNo        VARCHAR(10) COMMENT '供货商',
   purReceiptsNo        VARCHAR(30) COMMENT '单据号',
   purOrderCoding       VARCHAR(30) COMMENT '采购订单编码',
   PRIMARY KEY (purNo)
);

/*==============================================================*/
/* Table: quality                                               */
/*==============================================================*/
CREATE TABLE quality
(
   quaNo                VARCHAR(10) NOT NULL COMMENT '质检部门编号',
   warhouseNo           VARCHAR(10) COMMENT '仓库编号',
   quaType              VARCHAR(5) COMMENT '质检类型',
   quaUserNo            VARCHAR(10) COMMENT '质检人员',
   quaRemark            VARCHAR(50) COMMENT '备注',
   quaData              DATETIME COMMENT '质检日期',
   quaNumber            VARCHAR(30) COMMENT '单据号',
   PRIMARY KEY (quaNo)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
CREATE TABLE role
(
   roleNo               VARCHAR(5) NOT NULL COMMENT '角色编号',
   employeeNo           VARCHAR(5) COMMENT '员工编号',
   roleName             VARCHAR(20) COMMENT '角色名称',
   roleEmployeeNo       VARCHAR(5) COMMENT '员工编号',
   roleDesc             VARCHAR(50) COMMENT '角色备注',
   PRIMARY KEY (roleNo)
);

/*==============================================================*/
/* Table: sales                                                 */
/*==============================================================*/
CREATE TABLE sales
(
   salesNo              VARCHAR(10) NOT NULL COMMENT '退货单编号',
   productListNo        VARCHAR(10) COMMENT '商品细分类编号',
   salesData            DATETIME COMMENT '退货日期',
   salesClientNo        VARCHAR(5) COMMENT '退货人',
   salesCause           VARCHAR(200) COMMENT '退货原因',
   salesCareProductNo   VARCHAR(5) COMMENT '退货商品名称',
   salesCareNumber      INT COMMENT '退货数量',
   salesCareMoney       DECIMAL COMMENT '退货价格',
   PRIMARY KEY (salesNo)
);

/*==============================================================*/
/* Table: sellOrder                                             */
/*==============================================================*/
CREATE TABLE sellOrder
(
   orderNo              VARCHAR(10) NOT NULL COMMENT '销售编号',
   employeeNo           VARCHAR(5) COMMENT '员工编号',
   SaleID               VARCHAR(10) COMMENT ' 销售编号',
   sellenterNo          VARCHAR(10) COMMENT '销售入库单编号',
   orderState           INT COMMENT '单据状态',
   ordermark            VARCHAR(10) COMMENT '退货标志',
   orderData            DATETIME COMMENT '单据日期',
   orderClient          VARCHAR(10) COMMENT '客户',
   orderDepartNo        VARCHAR(5) COMMENT '销售部门',
   orderUserNo          VARCHAR(5) COMMENT '销售员',
   orderMoney           DECIMAL COMMENT '销售单价',
   orderCreateName      VARCHAR(10) COMMENT '制单人',
   orderCancel          VARCHAR(10) COMMENT '作废人',
   orderNoNumber        VARCHAR(50) COMMENT '销售订单编号',
   PRIMARY KEY (orderNo)
);

/*==============================================================*/
/* Table: sellappearwarehouse                                   */
/*==============================================================*/
CREATE TABLE sellappearwarehouse
(
   sellappearNo         VARCHAR(10) NOT NULL COMMENT '销售出库单编号',
   orderNo              VARCHAR(10) COMMENT '销售编号',
   sellappearEncoding   VARCHAR(10) COMMENT '仓库编码',
   sellWar              VARCHAR(10) COMMENT '仓库',
   sellappearData       DATETIME COMMENT '出库日期',
   sellappearOrderNo    VARCHAR(10) COMMENT '出库单号',
   sellappearType       VARCHAR(20) COMMENT '出库类别',
   sellappearDeparetNo  VARCHAR(5) COMMENT '销售部门',
   sellappearName       VARCHAR(10) COMMENT '业务员',
   PRIMARY KEY (sellappearNo)
);

/*==============================================================*/
/* Table: sellenterwarehouse                                    */
/*==============================================================*/
CREATE TABLE sellenterwarehouse
(
   sellenterNo          VARCHAR(10) NOT NULL COMMENT '销售入库单编号',
   stockNo              VARCHAR(10) COMMENT '仓库详细编号',
   sellenterNumber      INT COMMENT '入库数量',
   sellenterData        DATETIME COMMENT '入库时间',
   sellenterName        VARCHAR(10) COMMENT '经手人',
   sellenterPrice       DECIMAL COMMENT '销售单价',
   sellenterSum         DECIMAL COMMENT '入库总金额',
   sellenterGoods       VARCHAR(10) COMMENT '商品物品',
   PRIMARY KEY (sellenterNo)
);

/*==============================================================*/
/* Table: signfor                                               */
/*==============================================================*/
CREATE TABLE signfor
(
   signNo               VARCHAR(10) NOT NULL COMMENT '签收编号',
   quaNo                VARCHAR(10) COMMENT '质检部门编号',
   signGoods            VARCHAR(20) COMMENT '签收物品名称',
   signEmployeeNo       VARCHAR(5) COMMENT '签收人',
   signDepaNo           VARCHAR(5) COMMENT '签收部门',
   clientsignData       DATETIME COMMENT '签收日期',
   clientsignNumber     INT COMMENT '数量',
   Remark               VARCHAR(5) COMMENT '备注',
   PRIMARY KEY (signNo)
);

/*==============================================================*/
/* Table: stockDetail                                           */
/*==============================================================*/
CREATE TABLE stockDetail
(
   stockNo              VARCHAR(10) NOT NULL COMMENT '仓库详细编号',
   sellappearNo         VARCHAR(10) COMMENT '销售出库单编号',
   warhouseNo           VARCHAR(10) COMMENT '仓库编号',
   stockCommodityNo     VARCHAR(10) COMMENT '商品编号',
   stockNoId            VARCHAR(10) COMMENT '存货编码',
   stockbeyondNumber    INT COMMENT '超出数量',
   stockNumber          INT COMMENT '现存数量',
   stockbeyondMoney     INT COMMENT '超出成本',
   stockMoney           INT COMMENT '现存成本',
   stockPrice           INT COMMENT '单位成本',
   stockhouseNo         VARCHAR(5) COMMENT '仓库编号',
   stockData            DATETIME COMMENT '商品入库时间',
   stokMinNumber        INT COMMENT '低于数量',
   PRIMARY KEY (stockNo)
);

/*==============================================================*/
/* Table: stockPile                                             */
/*==============================================================*/
CREATE TABLE stockPile
(
   warhouseNo           VARCHAR(10) COMMENT '仓库编号',
   StockPile_ID         VARCHAR(5) COMMENT '库存编号',
   Dept_ID              VARCHAR(5) COMMENT '商品所属部门',
   StoreHouse_ID        VARCHAR(5) COMMENT '所在仓库',
   Product_ID           VARCHAR(10) COMMENT '商品编号',
   FirstEnterDate       DATETIME COMMENT '此种商品第一次入库时间',
   Quantity             INT COMMENT '所存数量'
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
CREATE TABLE supplier
(
   supplierNo        VARCHAR(5) NOT NULL COMMENT '供应商编号  ',
   supName              VARCHAR(20) COMMENT '供应商名称 ',
   supAddress           VARCHAR(50) COMMENT '地址',
   supPhone             VARCHAR(11) COMMENT '电话',
   supPostalCode        VARCHAR(6) COMMENT '邮编 ',
   supConstactPerson    VARCHAR(20) COMMENT ' 联系人',
   PRIMARY KEY (supplierNo)
);

/*==============================================================*/
/* Table: supply                                                */
/*==============================================================*/
CREATE TABLE supply
(
   supNo                VARCHAR(10) NOT NULL COMMENT '供货编号',
   warhouseNo           VARCHAR(10) COMMENT '仓库编号',
   supsupNo            VARCHAR(10) COMMENT '供货编号',
   supsignNo               VARCHAR(10) COMMENT '签收编号',
   supGoods             VARCHAR(20) COMMENT '供货物品',
   supNumber            INT COMMENT '供货数量',
   supdepartNo          VARCHAR(10) COMMENT '购货部门编号',
   supUserNo            VARCHAR(10) COMMENT '供货人员',
   supPrice             DECIMAL COMMENT '供货单价',
   supWarehouseNo       VARCHAR(20) COMMENT '仓库编号',
   supRemark            VARCHAR(50) COMMENT '备注',
   supData              DATETIME COMMENT '供货日期',
   supReceiptsNo        VARCHAR(30) COMMENT '单据号',
   supShipmentData      DATETIME COMMENT '出货日期',
   PRIMARY KEY (supNo)
);

/*==============================================================*/
/* Table: userMenu                                              */
/*==============================================================*/
CREATE TABLE userMenu
(
   roleNo               VARCHAR(5) COMMENT '角色编号',
   menuNo               VARCHAR(5) COMMENT '菜单编号',
   menuRoleNo           VARCHAR(5) COMMENT '角色编号',
   menuName             VARCHAR(10) COMMENT '菜单名称',
   menuTopNo            VARCHAR(10) COMMENT '上级菜单编号',
   menuImg              VARCHAR(50) COMMENT '菜单图片',
   menuUrl              VARCHAR(20) COMMENT '菜单链接'
);

/*==============================================================*/
/* Table: warehouse                                             */
/*==============================================================*/
CREATE TABLE warehouse
(
   warhouseNo           VARCHAR(10) NOT NULL COMMENT '仓库编号',
   warAddress           DECIMAL COMMENT '仓库地址',
   warPhone             VARCHAR(11) COMMENT '仓库电话',
   warMaxNumber         INT COMMENT '最高限制',
   PRIMARY KEY (warhouseNo)
);

ALTER TABLE allot ADD CONSTRAINT FK_Reference_33 FOREIGN KEY (stockNo)
      REFERENCES stockDetail (stockNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE allot ADD CONSTRAINT FK_Reference_34 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientInfo ADD CONSTRAINT FK_Reference_25 FOREIGN KEY (cleorderNo)
      REFERENCES clientOrder (cleorderNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientInfo ADD CONSTRAINT FK_Reference_28 FOREIGN KEY (salesNo)
      REFERENCES sales (salesNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientOrde ADD CONSTRAINT FK_Reference_15 FOREIGN KEY (productClassNo)
      REFERENCES productList (productClassNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientOrder ADD CONSTRAINT FK_Reference_27 FOREIGN KEY (productClassNo)
      REFERENCES productList (productClassNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE clientsignfor ADD CONSTRAINT FK_Reference_26 FOREIGN KEY (cleorderNo)
      REFERENCES clientOrder (cleorderNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE deparetment ADD CONSTRAINT FK_Reference_10 FOREIGN KEY (comNo)
      REFERENCES company (comNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE employee ADD CONSTRAINT FK_Reference_11 FOREIGN KEY (deparetmentNo)
      REFERENCES deparetment (deparetmentNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE product ADD CONSTRAINT FK_Reference_16 FOREIGN KEY (pro_productSpecNo)
      REFERENCES productSpec (productSpecNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productList ADD CONSTRAINT FK_Reference_14 FOREIGN KEY (pro_productListNo)
      REFERENCES product (productListNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE productSpec ADD CONSTRAINT FK_Reference_31 FOREIGN KEY (productClassID)
      REFERENCES productClass (productClassID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchase ADD CONSTRAINT FK_Reference_9 FOREIGN KEY (supNo)
      REFERENCES supply (supNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE quality ADD CONSTRAINT FK_Reference_24 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE role ADD CONSTRAINT FK_Reference_30 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sales ADD CONSTRAINT FK_Reference_29 FOREIGN KEY (productListNo)
      REFERENCES product (productListNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellOrder ADD CONSTRAINT FK_Reference_12 FOREIGN KEY (employeeNo)
      REFERENCES employee (employeeNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellOrder ADD CONSTRAINT FK_Reference_13 FOREIGN KEY (SaleID)
      REFERENCES clientOrde (SaleID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellOrder ADD CONSTRAINT FK_Reference_18 FOREIGN KEY (sellenterNo)
      REFERENCES sellenterwarehouse (sellenterNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellappearwarehouse ADD CONSTRAINT FK_Reference_21 FOREIGN KEY (orderNo)
      REFERENCES sellOrder (orderNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE sellenterwarehouse ADD CONSTRAINT FK_Reference_19 FOREIGN KEY (stockNo)
      REFERENCES stockDetail (stockNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE signfor ADD CONSTRAINT FK_Reference_23 FOREIGN KEY (quaNo)
      REFERENCES quality (quaNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE stockDetail ADD CONSTRAINT FK_Reference_20 FOREIGN KEY (sellappearNo)
      REFERENCES sellappearwarehouse (sellappearNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE stockDetail ADD CONSTRAINT FK_Reference_32 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE stockPile ADD CONSTRAINT FK_Reference_36 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply ADD CONSTRAINT FK_Reference_22 FOREIGN KEY (signNo)
      REFERENCES signfor (signNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply ADD CONSTRAINT FK_Reference_4 FOREIGN KEY (warhouseNo)
      REFERENCES warehouse (warhouseNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply ADD CONSTRAINT FK_Reference_5 FOREIGN KEY (sup_supNo)
      REFERENCES supply (supNo) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE userMenu ADD CONSTRAINT FK_Reference_35 FOREIGN KEY (roleNo)
      REFERENCES role (roleNo) ON DELETE RESTRICT ON UPDATE RESTRICT;
