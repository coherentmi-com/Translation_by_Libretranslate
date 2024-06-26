-- CreateTable
CREATE TABLE `cmi_Custom_insights` (
    `cnewsid` INTEGER NOT NULL AUTO_INCREMENT,
    `title` TEXT NOT NULL,
    `CustomName` VARCHAR(300) NOT NULL,
    `CatId` INTEGER NOT NULL,
    `CreatedDate` DATE NOT NULL,
    `IsActive` INTEGER NOT NULL,
    `Price_SUL` VARCHAR(20) NOT NULL,
    `Price_Multi` VARCHAR(20) NOT NULL,
    `Price_CUL` VARCHAR(20) NOT NULL,

    INDEX `CatId`(`CatId`),
    INDEX `CustomName`(`CustomName`),
    INDEX `IsActive`(`IsActive`),
    INDEX `Price_CUL`(`Price_CUL`),
    INDEX `Price_Multi`(`Price_Multi`),
    INDEX `Price_SUL`(`Price_SUL`),
    PRIMARY KEY (`cnewsid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_admin` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `role` VARCHAR(20) NOT NULL,
    `FirstName` VARCHAR(50) NOT NULL,
    `LastName` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL DEFAULT '0',
    `status` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_alldatasfetchhj` (
    `sid` INTEGER NOT NULL AUTO_INCREMENT,
    `nameoffileds` VARCHAR(200) NOT NULL,
    `role` INTEGER NOT NULL,

    INDEX `nameoffileds`(`nameoffileds`),
    INDEX `role`(`role`),
    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_blockedemailsdomain` (
    `bid` INTEGER NOT NULL AUTO_INCREMENT,
    `emaildomain` VARCHAR(90) NOT NULL,
    `blockeddate` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    INDEX `emaildomain`(`emaildomain`),
    PRIMARY KEY (`bid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_blockedmails` (
    `eid` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(150) NOT NULL,
    `date` DATE NOT NULL,

    INDEX `email`(`email`),
    PRIMARY KEY (`eid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_blogs_categories` (
    `cbid` INTEGER NOT NULL AUTO_INCREMENT,
    `cattitle` VARCHAR(200) NOT NULL,
    `caturl` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`cbid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_blogsinsights` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authid` INTEGER NOT NULL DEFAULT 0,
    `pub_date` DATE NOT NULL DEFAULT ('0000-00-00'),
    `view_desc` LONGTEXT NOT NULL,
    `title` TEXT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `CatId` INTEGER NOT NULL,
    `newimg` VARCHAR(700) NULL,
    `blogthumb` VARCHAR(400) NULL,
    `CustomName` VARCHAR(200) NOT NULL DEFAULT '',
    `ModifiedDate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `createddate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `prmetatitle` VARCHAR(400) NULL,
    `prmetadesc` TEXT NULL,
    `prmetakeywords` TEXT NULL,
    `admin_id` INTEGER NOT NULL DEFAULT 0,
    `postview` INTEGER NOT NULL DEFAULT 0,

    INDEX `IsActive`(`IsActive`),
    INDEX `createddate`(`createddate`),
    INDEX `id`(`id`),
    INDEX `id_2`(`id`, `authid`, `CustomName`),
    INDEX `newsthumb`(`blogthumb`(333)),
    INDEX `pub_date`(`pub_date`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_category` (
    `catId` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER NOT NULL,
    `sort` INTEGER NOT NULL,
    `catName` VARCHAR(150) NOT NULL,
    `catDesc` TEXT NULL,
    `catDescSmall` TEXT NOT NULL,
    `CustomName` VARCHAR(200) NOT NULL,
    `IsActive` VARCHAR(5) NOT NULL DEFAULT '1',
    `CreatedDate` DATETIME(0) NULL,
    `ModifiedDate` DATETIME(0) NULL,
    `metatitle` VARCHAR(200) NULL,
    `metadesc` VARCHAR(250) NULL,
    `metakey` TEXT NULL,
    `CatImg` VARCHAR(150) NULL,
    `catcount` INTEGER NULL,
    `cat_icon` VARCHAR(100) NOT NULL,
    `cat_infoimg` VARCHAR(200) NOT NULL,
    `bestsellreport` VARCHAR(200) NULL,

    INDEX `CatImg`(`CatImg`),
    INDEX `CustomName`(`CustomName`),
    INDEX `IsActive`(`IsActive`),
    INDEX `bestsellreport`(`bestsellreport`),
    INDEX `catId`(`catId`),
    INDEX `catId_2`(`catId`, `parent_id`, `catName`, `CustomName`, `catcount`),
    INDEX `catName`(`catName`),
    INDEX `cat_icon`(`cat_icon`),
    INDEX `cat_infoimg`(`cat_infoimg`),
    INDEX `catcount`(`catcount`),
    INDEX `parent_id`(`parent_id`),
    PRIMARY KEY (`catId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_ccCollaterals` (
    `cid` INTEGER NOT NULL AUTO_INCREMENT,
    `cdates` DATE NOT NULL,
    `NCEditors` TEXT NULL,
    `NCPublishing` TEXT NULL,
    `CCEditors` TEXT NULL,
    `CCPublishing` TEXT NULL,
    `NAEditors` TEXT NULL,
    `NAPublishing` TEXT NULL,
    `UCEditors` TEXT NULL,
    `UCPublishing` TEXT NULL,
    `team` INTEGER NOT NULL,
    `EditerStatus` INTEGER NOT NULL DEFAULT 0,
    `PubStatus` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_cccolsalesusers` (
    `sid` INTEGER NOT NULL AUTO_INCREMENT,
    `uname` VARCHAR(100) NOT NULL,
    `upass` VARCHAR(100) NOT NULL,
    `team` INTEGER NOT NULL,

    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_ccsalesstats` (
    `ccsaleid` INTEGER NOT NULL AUTO_INCREMENT,
    `dateadded` DATE NOT NULL,
    `QueriesSales` BIGINT NOT NULL DEFAULT 0,
    `QueriesAddressed` BIGINT NOT NULL DEFAULT 0,
    `team` INTEGER NOT NULL,

    PRIMARY KEY (`ccsaleid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_cmi_newsletters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) NOT NULL,
    `status` INTEGER NOT NULL,
    `datesub` DATETIME(0) NOT NULL,

    INDEX `datesub`(`datesub`),
    INDEX `email`(`email`),
    INDEX `status`(`status`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_cmifaq` (
    `fid` INTEGER NOT NULL AUTO_INCREMENT,
    `rid` INTEGER NOT NULL,
    `q1` VARCHAR(800) NULL,
    `q2` VARCHAR(800) NULL,
    `q3` VARCHAR(800) NULL,
    `q4` VARCHAR(800) NULL,
    `q5` VARCHAR(800) NULL,
    `q6` VARCHAR(800) NULL,
    `a1` VARCHAR(800) NULL,
    `a2` VARCHAR(800) NULL,
    `a3` VARCHAR(800) NULL,
    `a4` VARCHAR(800) NULL,
    `a5` VARCHAR(800) NULL,
    `a6` VARCHAR(800) NULL,

    INDEX `a1`(`a1`),
    INDEX `a2`(`a2`),
    INDEX `a3`(`a3`),
    INDEX `a4`(`a4`),
    INDEX `a5`(`a5`),
    INDEX `a6`(`a6`),
    INDEX `q1`(`q1`),
    INDEX `q2`(`q2`),
    INDEX `q3`(`q3`),
    INDEX `q4`(`q4`),
    INDEX `q5`(`q5`),
    INDEX `q6`(`q6`),
    INDEX `rid`(`rid`),
    PRIMARY KEY (`fid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_consultinghelp` (
    `hid` INTEGER NOT NULL AUTO_INCREMENT,
    `ucomment` TEXT NOT NULL,
    `uemail` VARCHAR(150) NOT NULL,
    `udate` DATETIME(0) NOT NULL,

    PRIMARY KEY (`hid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_countries` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `regcode` VARCHAR(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `ccode` VARCHAR(3) NOT NULL DEFAULT '',
    `blocked` INTEGER NULL DEFAULT 0,
    `IsActive` INTEGER NOT NULL DEFAULT 1,

    INDEX `IsActive`(`IsActive`),
    INDEX `assignLead`(`blocked`),
    INDEX `id`(`id`, `name`, `ccode`),
    INDEX `name`(`name`),
    INDEX `regcode`(`regcode`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_countries_latest` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `regcode` VARCHAR(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL DEFAULT '',
    `ccode` VARCHAR(3) NOT NULL DEFAULT '',
    `IsActive` INTEGER NOT NULL DEFAULT 1,

    INDEX `id`(`id`, `name`, `ccode`),
    INDEX `name`(`name`),
    INDEX `regcode`(`regcode`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_covidtracker` (
    `imptid` INTEGER NOT NULL AUTO_INCREMENT,
    `pub_date` DATE NOT NULL,
    `image` VARCHAR(200) NOT NULL,
    `title` VARCHAR(500) NOT NULL,
    `cvddesc1` TEXT NOT NULL,
    `cvddesc2` TEXT NOT NULL,
    `expectrcry` TEXT NOT NULL,
    `exprtcornr` TEXT NOT NULL,
    `CustomName` VARCHAR(300) NULL,
    `metakey` TEXT NULL,
    `metadesc` TEXT NOT NULL,

    INDEX `CustomName`(`CustomName`),
    INDEX `image`(`image`),
    INDEX `pub_date`(`pub_date`),
    INDEX `title`(`title`),
    PRIMARY KEY (`imptid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_formdetails` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `report_id` INTEGER NULL,
    `email` VARCHAR(155) NOT NULL,
    `firstname` VARCHAR(155) NOT NULL,
    `lastname` VARCHAR(155) NULL,
    `password` VARCHAR(155) NULL,
    `price` INTEGER NULL,
    `company` VARCHAR(155) NOT NULL,
    `industry` VARCHAR(100) NULL,
    `phone` VARCHAR(155) NOT NULL,
    `address` VARCHAR(155) NULL,
    `city` VARCHAR(155) NULL,
    `state` VARCHAR(155) NULL,
    `zipcode` VARCHAR(55) NULL,
    `country` VARCHAR(155) NOT NULL,
    `continent` VARCHAR(10) NULL,
    `comments` TEXT NULL,
    `licence` VARCHAR(255) NULL,
    `formname` VARCHAR(50) NOT NULL,
    `designation` VARCHAR(50) NOT NULL,
    `subject` VARCHAR(100) NULL,
    `createddate` DATE NULL,
    `modified_date` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `assigned` INTEGER NULL,
    `payment_status` VARCHAR(20) NULL,
    `IPAddr` VARCHAR(80) NULL,

    INDEX `IPAddr`(`IPAddr`),
    INDEX `address`(`address`),
    INDEX `assigned`(`assigned`),
    INDEX `company`(`company`),
    INDEX `continent`(`continent`),
    INDEX `createddate`(`createddate`),
    INDEX `designation`(`designation`),
    INDEX `email`(`email`),
    INDEX `firstname`(`firstname`),
    INDEX `formname`(`formname`),
    INDEX `id`(`id`),
    INDEX `licence`(`licence`),
    INDEX `modified_date`(`modified_date`),
    INDEX `payment_status`(`payment_status`),
    INDEX `phone`(`phone`),
    INDEX `price`(`price`),
    INDEX `report_id`(`report_id`),
    INDEX `subject`(`subject`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_insigtanalysis` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) NOT NULL,
    `datesub` DATETIME(0) NOT NULL,

    INDEX `datesub`(`datesub`),
    INDEX `email`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_mediacovragetypt` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `pub_date` DATE NOT NULL,
    `ModifiedDate` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `view_desc` LONGTEXT NOT NULL,
    `title` TEXT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `newimg` VARCHAR(700) NULL,
    `CustomName` VARCHAR(800) NOT NULL,

    INDEX `CustomName`(`CustomName`),
    INDEX `IsActive`(`IsActive`),
    INDEX `newimg`(`newimg`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_metareportids` (
    `rid` INTEGER NOT NULL AUTO_INCREMENT,
    `rno` INTEGER NOT NULL,
    `title` VARCHAR(2000) NOT NULL,

    INDEX `rno`(`rno`),
    INDEX `title`(`title`(1024)),
    PRIMARY KEY (`rid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_mr_continents` (
    `cid` INTEGER NOT NULL AUTO_INCREMENT,
    `code` CHAR(10) NOT NULL,
    `name` VARCHAR(100) NULL,
    `salesemail` VARCHAR(200) NULL,
    `categories` VARCHAR(200) NULL,

    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_news` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `rid` INTEGER NOT NULL DEFAULT 0,
    `pub_date` DATE NOT NULL DEFAULT ('0000-00-00'),
    `view_desc` LONGTEXT NOT NULL,
    `title` TEXT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `CustomName` VARCHAR(200) NOT NULL DEFAULT '',
    `ModifiedDate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `createddate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `prmetatitle` VARCHAR(400) NULL,
    `prmetadesc` TEXT NULL,
    `prmetakeywords` TEXT NULL,
    `admin_id` INTEGER NOT NULL,

    INDEX `IsActive`(`IsActive`),
    INDEX `createddate`(`createddate`),
    INDEX `id`(`id`),
    INDEX `id_2`(`id`, `rid`, `CustomName`),
    INDEX `pub_date`(`pub_date`),
    INDEX `title`(`title`(100)),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_newsauthors` (
    `authid` INTEGER NOT NULL AUTO_INCREMENT,
    `authname` VARCHAR(300) NOT NULL,
    `authurl` VARCHAR(200) NOT NULL,
    `authbio` VARCHAR(900) NOT NULL,
    `authimg` VARCHAR(300) NULL,
    `authstatus` ENUM('') NOT NULL DEFAULT 0,

    INDEX `authid`(`authid`),
    INDEX `authimg`(`authimg`),
    INDEX `authname`(`authname`),
    INDEX `authstatus`(`authstatus`),
    INDEX `authurl`(`authurl`),
    PRIMARY KEY (`authid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_ourclient` (
    `cid` INTEGER NOT NULL AUTO_INCREMENT,
    `cimg` VARCHAR(100) NOT NULL,
    `cdate` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    INDEX `cimg`(`cimg`),
    PRIMARY KEY (`cid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_payment_trans` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `rid` INTEGER NOT NULL,
    `amount` INTEGER NOT NULL,
    `transactionid` VARCHAR(200) NULL,
    `taxid` INTEGER NULL,
    `payst` VARCHAR(200) NULL,
    `ltype` VARCHAR(100) NOT NULL,
    `name` VARCHAR(200) NULL,
    `formname` VARCHAR(40) NULL,
    `clientname` VARCHAR(100) NOT NULL,
    `email` VARCHAR(150) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    `addr` VARCHAR(300) NULL,
    `Country` VARCHAR(200) NULL,
    `createddate` DATETIME(0) NOT NULL,
    `salesemailnoti` VARCHAR(600) NULL,

    INDEX `Country`(`Country`),
    INDEX `addr`(`addr`),
    INDEX `amount`(`amount`),
    INDEX `clientname`(`clientname`),
    INDEX `email`(`email`),
    INDEX `formname`(`formname`),
    INDEX `ltype`(`ltype`),
    INDEX `name`(`name`),
    INDEX `payst`(`payst`),
    INDEX `phone`(`phone`),
    INDEX `rid`(`rid`),
    INDEX `salesemailnoti`(`salesemailnoti`),
    INDEX `taxid`(`taxid`),
    INDEX `transactionid`(`transactionid`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_phxs_emailer` (
    `emid` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `company` VARCHAR(100) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
    `country` VARCHAR(150) NOT NULL,
    `jtitle` VARCHAR(150) NOT NULL,
    `msg` TEXT NOT NULL,
    `cdate` DATETIME(0) NOT NULL,
    `subscribe` INTEGER NOT NULL DEFAULT 1,

    INDEX `company`(`company`),
    INDEX `country`(`country`),
    INDEX `email`(`email`),
    INDEX `emid`(`emid`),
    INDEX `jtitle`(`jtitle`),
    INDEX `name`(`name`),
    INDEX `phone`(`phone`),
    INDEX `subscribe`(`subscribe`),
    PRIMARY KEY (`emid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_promocodeshjk` (
    `pid` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `pcode` VARCHAR(300) NOT NULL,
    `discount` INTEGER NOT NULL,
    `expirydate` DATE NOT NULL,
    `createdate` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `status` INTEGER NOT NULL,

    INDEX `createdate`(`createdate`),
    INDEX `discount`(`discount`),
    INDEX `expirydate`(`expirydate`),
    INDEX `pcode`(`pcode`),
    INDEX `status`(`status`),
    INDEX `title`(`title`),
    PRIMARY KEY (`pid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_publishers` (
    `PubID` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `PubFirstName` VARCHAR(155) NOT NULL,
    `CustomName` VARCHAR(255) NOT NULL,
    `description` TEXT NULL,
    `Logo` VARCHAR(255) NULL,
    `totalreports` INTEGER NOT NULL,
    `contactname` VARCHAR(255) NOT NULL,
    `contactphone` VARCHAR(20) NOT NULL,
    `contactemail` VARCHAR(255) NOT NULL,
    `RnRrevenueper` INTEGER NOT NULL,
    `metatitle` VARCHAR(255) NOT NULL,
    `metadescription` TEXT NOT NULL,
    `metakeywords` TEXT NOT NULL,
    `featured` SMALLINT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,

    INDEX `CustomName`(`CustomName`),
    INDEX `PubFirstName`(`PubFirstName`),
    INDEX `PubID`(`PubID`),
    INDEX `totalreports`(`totalreports`),
    PRIMARY KEY (`PubID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_reports` (
    `newsId` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `reportstatus` INTEGER NULL DEFAULT 0,
    `CatId` INTEGER NOT NULL,
    `newsSubject` TEXT NOT NULL,
    `keyword` VARCHAR(200) NULL,
    `newsLDesc` TEXT NULL,
    `summary` TEXT NULL,
    `segmentation` TEXT NULL,
    `newsDate` DATE NOT NULL,
    `Price_SUL` INTEGER NULL,
    `Price_CUL` INTEGER NULL,
    `Price_Multi` INTEGER NULL,
    `No_Pages` VARCHAR(60) NOT NULL,
    `CreatedDate` DATETIME(0) NOT NULL,
    `ModifiedDate` DATETIME(0) NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `discount` VARCHAR(10) NULL,
    `meta_title` VARCHAR(400) NULL,
    `meta_description` VARCHAR(500) NULL,
    `meta_keywords` VARCHAR(900) NULL,
    `CustomName` VARCHAR(300) NULL,
    `admin_id` INTEGER NOT NULL,
    `keywords` VARCHAR(900) NULL,
    `studyperiod` VARCHAR(50) NOT NULL,
    `yearofestimation` VARCHAR(10) NOT NULL,
    `cagr` VARCHAR(20) NOT NULL,
    `fastgrmarket` VARCHAR(50) NOT NULL,
    `larmarket` VARCHAR(50) NOT NULL,
    `marketconcentration` VARCHAR(100) NOT NULL,
    `allcompany` TEXT NOT NULL,
    `marketoverview` TEXT NOT NULL,
    `competetivelandscape` TEXT NOT NULL,
    `keymarkettrend` TEXT NOT NULL,
    `recentdevelopment` TEXT NOT NULL,
    `scopeofreports` TEXT NOT NULL,
    `cagrcurrentyear` VARCHAR(50) NOT NULL,
    `cagrforecastyear` VARCHAR(50) NOT NULL,
    `majorplayerlist` TEXT NOT NULL,
    `marketconimg` VARCHAR(200) NULL,
    `valueevn` VARCHAR(100) NOT NULL,
    `competitive_value` INTEGER NULL,

    INDEX `CatId`(`CatId`),
    INDEX `CreatedDate`(`CreatedDate`),
    INDEX `CustomName`(`CustomName`),
    INDEX `IsActive`(`IsActive`),
    INDEX `No_Pages`(`No_Pages`),
    INDEX `Price_CUL`(`Price_CUL`),
    INDEX `Price_Multi`(`Price_Multi`),
    INDEX `Price_SUL`(`Price_SUL`),
    INDEX `keyword`(`keyword`),
    INDEX `keywords`(`keywords`(333)),
    INDEX `meta_description`(`meta_description`(333)),
    INDEX `meta_keywords`(`meta_keywords`(333)),
    INDEX `meta_title`(`meta_title`(333)),
    INDEX `newsDate`(`newsDate`),
    INDEX `newsId`(`newsId`),
    INDEX `newsSubject`(`newsSubject`(333)),
    INDEX `newsSubject_2`(`newsSubject`(333)),
    INDEX `reportstatus`(`reportstatus`),
    PRIMARY KEY (`newsId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_reports_old` (
    `newsId` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `reportstatus` INTEGER NULL DEFAULT 0,
    `CatId` INTEGER NOT NULL,
    `newsSubject` TEXT NOT NULL,
    `keyword` VARCHAR(200) NULL,
    `newsLDesc` TEXT NOT NULL,
    `summary` TEXT NULL,
    `segmentation` TEXT NULL,
    `newsDate` DATE NOT NULL,
    `Price_SUL` DOUBLE NOT NULL,
    `Price_CUL` VARCHAR(18) NULL,
    `Price_Multi` VARCHAR(20) NULL,
    `No_Pages` VARCHAR(60) NOT NULL,
    `CreatedDate` DATETIME(0) NOT NULL,
    `ModifiedDate` DATETIME(0) NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `discount` VARCHAR(10) NULL,
    `meta_title` VARCHAR(400) NULL,
    `meta_description` VARCHAR(500) NULL,
    `meta_keywords` VARCHAR(900) NULL,
    `CustomName` VARCHAR(300) NULL,
    `admin_id` INTEGER NOT NULL,
    `keywords` VARCHAR(900) NULL,

    INDEX `CatId`(`CatId`),
    INDEX `CreatedDate`(`CreatedDate`),
    INDEX `CustomName`(`CustomName`),
    INDEX `IsActive`(`IsActive`),
    INDEX `No_Pages`(`No_Pages`),
    INDEX `Price_CUL`(`Price_CUL`),
    INDEX `Price_Multi`(`Price_Multi`),
    INDEX `Price_SUL`(`Price_SUL`),
    INDEX `keyword`(`keyword`),
    INDEX `keywords`(`keywords`(333)),
    INDEX `meta_description`(`meta_description`(333)),
    INDEX `meta_keywords`(`meta_keywords`(333)),
    INDEX `meta_title`(`meta_title`(333)),
    INDEX `newsDate`(`newsDate`),
    INDEX `newsId`(`newsId`),
    INDEX `newsSubject`(`newsSubject`(333)),
    INDEX `newsSubject_2`(`newsSubject`(333)),
    INDEX `reportstatus`(`reportstatus`),
    PRIMARY KEY (`newsId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_salesquriesdetails` (
    `quriesid` INTEGER NOT NULL AUTO_INCREMENT,
    `team` INTEGER NOT NULL,
    `DateofArivingQueryandTime` DATETIME(0) NULL,
    `SalesPerson` VARCHAR(100) NULL,
    `ReportTittle` VARCHAR(250) NULL,
    `QueryType` VARCHAR(100) NULL,
    `HandledPending` VARCHAR(100) NULL,
    `Importance` VARCHAR(100) NULL,
    `Format` VARCHAR(100) NULL,
    `WhoHandled` VARCHAR(100) NULL,
    `DateofHandlingantTime` DATETIME(0) NULL,
    `StatusFromSales` VARCHAR(100) NULL,
    `qurycreateddetails` DATE NOT NULL,
    `comment` VARCHAR(500) NULL,

    PRIMARY KEY (`quriesid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_salesteam` (
    `sid` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `role` INTEGER NOT NULL,
    `scount` INTEGER NULL,
    `region` INTEGER NULL,

    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_stticpgs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(500) NOT NULL,
    `descp` TEXT NOT NULL,
    `CustomName` VARCHAR(300) NULL,
    `metatitle` VARCHAR(300) NULL,
    `metadesc` VARCHAR(300) NULL,
    `metakey` VARCHAR(500) NULL,

    INDEX `CustomName`(`CustomName`),
    INDEX `metadesc`(`metadesc`),
    INDEX `metakey`(`metakey`),
    INDEX `metatitle`(`metatitle`),
    INDEX `title`(`title`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_testimonials` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pub_date` DATE NOT NULL,
    `ModifiedDate` DATETIME(0) NULL,
    `view_desc` LONGTEXT NOT NULL,
    `dept` VARCHAR(500) NOT NULL,
    `company` VARCHAR(500) NOT NULL,
    `newimg` VARCHAR(500) NULL,

    INDEX `company`(`company`),
    INDEX `dept`(`dept`),
    INDEX `newimg`(`newimg`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_toc` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `newsId` INTEGER NOT NULL,
    `TOC` MEDIUMTEXT NULL,

    INDEX `id`(`id`, `newsId`),
    INDEX `newsId`(`newsId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_track_useip` (
    `uid` INTEGER NOT NULL AUTO_INCREMENT,
    `ipaddr` VARCHAR(20) NOT NULL,
    `date` DATETIME(0) NOT NULL,

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_users` (
    `UserId` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `LoginID` INTEGER NULL,
    `Email_ID` VARCHAR(100) NOT NULL,
    `cmipassrd` VARCHAR(100) NOT NULL,
    `fullname` VARCHAR(50) NOT NULL,
    `company` VARCHAR(50) NULL,
    `phonecontact` VARCHAR(20) NULL,
    `industry` INTEGER NULL,
    `CreatedDate` DATETIME(0) NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,

    INDEX `UserId`(`UserId`, `LoginID`, `Email_ID`),
    PRIMARY KEY (`UserId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_vaccinetracker` (
    `vvid` INTEGER NOT NULL AUTO_INCREMENT,
    `NCT_NUMBER` VARCHAR(200) NULL,
    `ACRONYM` VARCHAR(200) NULL,
    `CONDITIONC` VARCHAR(400) NULL,
    `PRODUCT_NAME` VARCHAR(400) NULL,
    `INTERVENTION` VARCHAR(400) NULL,
    `VACCINE_TYPE` VARCHAR(500) NULL,
    `MOA_TECHNOLOGY` VARCHAR(200) NULL,
    `SPONSOR_COLLABORATORS` VARCHAR(500) NULL,
    `PHASES_OF_TRIAL` VARCHAR(200) NULL,
    `COMPLETION_DATE` VARCHAR(30) NULL,
    `COUNTRY` VARCHAR(200) NULL,
    `LAUNCH_YEAR` VARCHAR(50) NULL,
    `TRIAL_NUMBER` VARCHAR(400) NOT NULL,
    `TRIAL_NAME` VARCHAR(400) NOT NULL,
    `CREATEDDATE` DATE NOT NULL,

    INDEX `ACRONYM`(`ACRONYM`),
    INDEX `COMPLETION_DATE`(`COMPLETION_DATE`),
    INDEX `CONDITIONC`(`CONDITIONC`),
    INDEX `COUNTRY`(`COUNTRY`),
    INDEX `INTERVENTION`(`INTERVENTION`),
    INDEX `LAUNCH_YEAR`(`LAUNCH_YEAR`),
    INDEX `MOA_TECHNOLOGY`(`MOA_TECHNOLOGY`),
    INDEX `NCT_NUMBER`(`NCT_NUMBER`),
    INDEX `PHASES_OF_TRIAL`(`PHASES_OF_TRIAL`),
    INDEX `PRODUCT_NAME`(`PRODUCT_NAME`),
    INDEX `SPONSOR_COLLABORATORS`(`SPONSOR_COLLABORATORS`(250)),
    INDEX `TRIAL_NAME`(`TRIAL_NAME`),
    INDEX `TRIAL_NUMBER`(`TRIAL_NUMBER`),
    INDEX `VACCINE_TYPE`(`VACCINE_TYPE`),
    INDEX `vvid`(`vvid`),
    PRIMARY KEY (`vvid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_vacineusers` (
    `sid` INTEGER NOT NULL AUTO_INCREMENT,
    `uname` VARCHAR(100) NOT NULL,
    `upass` VARCHAR(100) NOT NULL,
    `team` INTEGER NOT NULL,
    `dateuploaded` DATETIME(0) NOT NULL,

    PRIMARY KEY (`sid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmi_xs_phaseinfo` (
    `xsid` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `company` VARCHAR(100) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
    `country` VARCHAR(150) NOT NULL,
    `jtitle` VARCHAR(150) NOT NULL,
    `msg` TEXT NOT NULL,
    `cdate` DATETIME(0) NOT NULL,

    INDEX `cdate`(`cdate`),
    INDEX `company`(`company`),
    INDEX `country`(`country`),
    INDEX `email`(`email`),
    INDEX `jtitle`(`jtitle`),
    INDEX `name`(`name`),
    INDEX `phone`(`phone`),
    PRIMARY KEY (`xsid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmimi_discounts_lists` (
    `dno` INTEGER NOT NULL AUTO_INCREMENT,
    `userid` INTEGER NULL,
    `rno` VARCHAR(11) NULL DEFAULT '0',
    `rname` VARCHAR(800) NULL,
    `cname` VARCHAR(200) NOT NULL,
    `lic_type` VARCHAR(50) NOT NULL,
    `original_price` DOUBLE NOT NULL,
    `discounted_price` DOUBLE NOT NULL DEFAULT 0,
    `payment_type` INTEGER NULL,
    `currency` VARCHAR(10) NOT NULL,
    `create_date` DATETIME(0) NOT NULL,
    `expiry_date` DATE NOT NULL,
    `link_status` INTEGER NOT NULL,
    `modified_by` VARCHAR(80) NULL,
    `clientemail` VARCHAR(200) NULL,
    `salesemailnoti` VARCHAR(600) NULL,

    INDEX `clientemail`(`clientemail`),
    INDEX `cname`(`cname`),
    INDEX `currency`(`currency`),
    INDEX `original_price`(`original_price`),
    INDEX `payment_type`(`payment_type`),
    INDEX `rname`(`rname`),
    INDEX `rno`(`rno`),
    INDEX `salesemailnoti`(`salesemailnoti`),
    INDEX `userid`(`userid`),
    PRIMARY KEY (`dno`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cminews_blogs` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authid` INTEGER NOT NULL DEFAULT 0,
    `pub_date` DATE NOT NULL DEFAULT ('0000-00-00'),
    `view_desc` LONGTEXT NOT NULL,
    `title` TEXT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `CatId` INTEGER NOT NULL,
    `newimg` VARCHAR(700) NULL,
    `blogthumb` VARCHAR(400) NOT NULL,
    `CustomName` VARCHAR(200) NOT NULL DEFAULT '',
    `ModifiedDate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `createddate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `prmetatitle` VARCHAR(400) NULL,
    `prmetadesc` TEXT NULL,
    `prmetakeywords` TEXT NULL,
    `admin_id` INTEGER NOT NULL DEFAULT 0,
    `postview` INTEGER NOT NULL DEFAULT 0,

    INDEX `IsActive`(`IsActive`),
    INDEX `createddate`(`createddate`),
    INDEX `id`(`id`),
    INDEX `id_2`(`id`, `authid`, `CustomName`),
    INDEX `newsthumb`(`blogthumb`(333)),
    INDEX `pub_date`(`pub_date`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cminews_news` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authid` INTEGER NOT NULL DEFAULT 0,
    `pub_date` DATE NOT NULL,
    `view_desc` LONGTEXT NOT NULL,
    `title` TEXT NOT NULL,
    `IsActive` INTEGER NOT NULL DEFAULT 1,
    `newimg` VARCHAR(700) NULL,
    `newsthumb` VARCHAR(400) NOT NULL,
    `CustomName` VARCHAR(200) NOT NULL DEFAULT '',
    `ModifiedDate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `createddate` DATETIME(0) NOT NULL DEFAULT ('0000-00-00 00:00:00'),
    `prmetatitle` VARCHAR(400) NULL,
    `prmetadesc` TEXT NULL,
    `prmetakeywords` TEXT NULL,
    `admin_id` INTEGER NOT NULL DEFAULT 0,
    `futurepost` VARCHAR(11) NULL DEFAULT '0',

    INDEX `IsActive`(`IsActive`),
    INDEX `createddate`(`createddate`),
    INDEX `id`(`id`),
    INDEX `id_2`(`id`, `authid`, `CustomName`),
    INDEX `newsthumb`(`newsthumb`(333)),
    INDEX `pub_date`(`pub_date`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmisub_category` (
    `catId` INTEGER NOT NULL AUTO_INCREMENT,
    `catName` VARCHAR(200) NOT NULL,
    `catimg` VARCHAR(50) NOT NULL,
    `mostsaledreport` INTEGER NOT NULL,
    `imglink1` VARCHAR(200) NOT NULL,
    `imglink2` VARCHAR(200) NOT NULL,
    `IsActive` INTEGER NOT NULL,

    INDEX `catName`(`catName`),
    INDEX `catimg`(`catimg`),
    INDEX `imglink1`(`imglink1`),
    INDEX `imglink2`(`imglink2`),
    INDEX `mostsaledreport`(`mostsaledreport`),
    PRIMARY KEY (`catId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmisub_img` (
    `id` INTEGER NOT NULL,
    `imgname` VARCHAR(200) NOT NULL,
    `updates` DATE NOT NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmisub_imgs` (
    `id` INTEGER NOT NULL,
    `imgname` VARCHAR(50) NOT NULL,
    `updated` DATE NOT NULL,

    INDEX `imgname`(`imgname`),
    INDEX `updated`(`updated`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cmisubmod_new` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `role` VARCHAR(20) NOT NULL,
    `FirstName` VARCHAR(50) NOT NULL,
    `LastName` VARCHAR(50) NOT NULL,
    `email` VARCHAR(150) NOT NULL,
    `status` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `getips` (
    `getid` INTEGER NOT NULL AUTO_INCREMENT,
    `userip` VARCHAR(50) NOT NULL,
    `usragent` VARCHAR(200) NOT NULL,
    `Referrers` VARCHAR(200) NOT NULL,
    `pagelink` VARCHAR(400) NOT NULL,

    INDEX `Referrers`(`Referrers`),
    INDEX `pagelink`(`pagelink`),
    INDEX `userip`(`userip`),
    INDEX `usragent`(`usragent`),
    PRIMARY KEY (`getid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

