-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jbpm
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jbpm` ;

-- -----------------------------------------------------
-- Schema jbpm
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jbpm` DEFAULT CHARACTER SET utf8 ;
USE `jbpm` ;

-- -----------------------------------------------------
-- Table `jbpm`.`organizationalentity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`organizationalentity` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`organizationalentity` (
  `DTYPE` VARCHAR(31) NOT NULL,
  `id` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`task`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`task` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`task` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `archived` SMALLINT(6) NULL DEFAULT NULL,
  `allowedToDelegate` VARCHAR(255) NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `formName` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `priority` INT(11) NOT NULL,
  `subTaskStrategy` VARCHAR(255) NULL DEFAULT NULL,
  `subject` VARCHAR(255) NULL DEFAULT NULL,
  `activationTime` DATETIME NULL DEFAULT NULL,
  `createdOn` DATETIME NULL DEFAULT NULL,
  `deploymentId` VARCHAR(255) NULL DEFAULT NULL,
  `documentAccessType` INT(11) NULL DEFAULT NULL,
  `documentContentId` BIGINT(20) NOT NULL,
  `documentType` VARCHAR(255) NULL DEFAULT NULL,
  `expirationTime` DATETIME NULL DEFAULT NULL,
  `faultAccessType` INT(11) NULL DEFAULT NULL,
  `faultContentId` BIGINT(20) NOT NULL,
  `faultName` VARCHAR(255) NULL DEFAULT NULL,
  `faultType` VARCHAR(255) NULL DEFAULT NULL,
  `outputAccessType` INT(11) NULL DEFAULT NULL,
  `outputContentId` BIGINT(20) NOT NULL,
  `outputType` VARCHAR(255) NULL DEFAULT NULL,
  `parentId` BIGINT(20) NOT NULL,
  `previousStatus` INT(11) NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `processSessionId` BIGINT(20) NOT NULL,
  `skipable` BIT(1) NOT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `workItemId` BIGINT(20) NOT NULL,
  `taskType` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  `taskInitiator_id` VARCHAR(255) NULL DEFAULT NULL,
  `actualOwner_id` VARCHAR(255) NULL DEFAULT NULL,
  `createdBy_id` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK48d1bfgwf0jqow1yk8ku4xcpi` (`taskInitiator_id` ASC),
  INDEX `FKpmkxvqq63aed2y2boruu53a0s` (`actualOwner_id` ASC),
  INDEX `FKexuboqnbla7jfyyesyo61ucmb` (`createdBy_id` ASC),
  CONSTRAINT `FK48d1bfgwf0jqow1yk8ku4xcpi`
    FOREIGN KEY (`taskInitiator_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKexuboqnbla7jfyyesyo61ucmb`
    FOREIGN KEY (`createdBy_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKpmkxvqq63aed2y2boruu53a0s`
    FOREIGN KEY (`actualOwner_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`attachment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`attachment` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`attachment` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `accessType` INT(11) NULL DEFAULT NULL,
  `attachedAt` DATETIME NULL DEFAULT NULL,
  `attachmentContentId` BIGINT(20) NOT NULL,
  `contentType` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `attachment_size` INT(11) NULL DEFAULT NULL,
  `attachedBy_id` VARCHAR(255) NULL DEFAULT NULL,
  `TaskData_Attachments_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKd5xpm81gxg8n40167lbu5rbfb` (`attachedBy_id` ASC),
  INDEX `FKjj9psk52ifamilliyo16epwpc` (`TaskData_Attachments_Id` ASC),
  CONSTRAINT `FKd5xpm81gxg8n40167lbu5rbfb`
    FOREIGN KEY (`attachedBy_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKjj9psk52ifamilliyo16epwpc`
    FOREIGN KEY (`TaskData_Attachments_Id`)
    REFERENCES `jbpm`.`task` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`audittaskimpl`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`audittaskimpl` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`audittaskimpl` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `activationTime` DATETIME NULL DEFAULT NULL,
  `actualOwner` VARCHAR(255) NULL DEFAULT NULL,
  `createdBy` VARCHAR(255) NULL DEFAULT NULL,
  `createdOn` DATETIME NULL DEFAULT NULL,
  `deploymentId` VARCHAR(255) NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `dueDate` DATETIME NULL DEFAULT NULL,
  `lastModificationDate` DATETIME NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `parentId` BIGINT(20) NOT NULL,
  `priority` INT(11) NOT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `processSessionId` BIGINT(20) NOT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `taskId` BIGINT(20) NULL DEFAULT NULL,
  `workItemId` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`bamtasksummary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`bamtasksummary` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`bamtasksummary` (
  `pk` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createdDate` DATETIME NULL DEFAULT NULL,
  `duration` BIGINT(20) NULL DEFAULT NULL,
  `endDate` DATETIME NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `startDate` DATETIME NULL DEFAULT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `taskId` BIGINT(20) NOT NULL,
  `taskName` VARCHAR(255) NULL DEFAULT NULL,
  `userId` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pk`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`deadline`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`deadline` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`deadline` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `deadline_date` DATETIME NULL DEFAULT NULL,
  `escalated` SMALLINT(6) NULL DEFAULT NULL,
  `Deadlines_StartDeadLine_Id` BIGINT(20) NULL DEFAULT NULL,
  `Deadlines_EndDeadLine_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK361ggw230po88svgfasg36i2w` (`Deadlines_StartDeadLine_Id` ASC),
  INDEX `FKpeiadnoy228t35213t63c3imm` (`Deadlines_EndDeadLine_Id` ASC),
  CONSTRAINT `FK361ggw230po88svgfasg36i2w`
    FOREIGN KEY (`Deadlines_StartDeadLine_Id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKpeiadnoy228t35213t63c3imm`
    FOREIGN KEY (`Deadlines_EndDeadLine_Id`)
    REFERENCES `jbpm`.`task` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`escalation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`escalation` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`escalation` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `Deadline_Escalation_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK37v8ova8ti6jiblda7n6j298e` (`Deadline_Escalation_Id` ASC),
  CONSTRAINT `FK37v8ova8ti6jiblda7n6j298e`
    FOREIGN KEY (`Deadline_Escalation_Id`)
    REFERENCES `jbpm`.`deadline` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`booleanexpression`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`booleanexpression` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`booleanexpression` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `expression` LONGTEXT NULL DEFAULT NULL,
  `type` VARCHAR(255) NULL DEFAULT NULL,
  `Escalation_Constraints_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKqth56a8k6d8pv6ngsu2vjp4kj` (`Escalation_Constraints_Id` ASC),
  CONSTRAINT `FKqth56a8k6d8pv6ngsu2vjp4kj`
    FOREIGN KEY (`Escalation_Constraints_Id`)
    REFERENCES `jbpm`.`escalation` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`buvendorevaluationdetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`buvendorevaluationdetails` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`buvendorevaluationdetails` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `first_approval` VARCHAR(255) NULL DEFAULT NULL,
  `second_approval` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`vendorevaluation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`vendorevaluation` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`vendorevaluation` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `comments` VARCHAR(255) NULL DEFAULT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  `warranty` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`buvendorevaluationdetails_vendorevaluation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`buvendorevaluationdetails_vendorevaluation` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`buvendorevaluationdetails_vendorevaluation` (
  `BUVendorEvaluationDetails_id` BIGINT(20) NOT NULL,
  `vendorevaluationlist_id` BIGINT(20) NOT NULL,
  UNIQUE INDEX `UK_ivx8y9eo5ptpahocursgabvgs` (`vendorevaluationlist_id` ASC),
  INDEX `FKd4x09gywn6s3bgupxufpxblyg` (`BUVendorEvaluationDetails_id` ASC),
  CONSTRAINT `FKd4x09gywn6s3bgupxufpxblyg`
    FOREIGN KEY (`BUVendorEvaluationDetails_id`)
    REFERENCES `jbpm`.`buvendorevaluationdetails` (`id`),
  CONSTRAINT `FKl667ms0alxb92bsb5ou1u2hop`
    FOREIGN KEY (`vendorevaluationlist_id`)
    REFERENCES `jbpm`.`vendorevaluation` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`casefiledatalog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`casefiledatalog` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`casefiledatalog` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `caseDefId` VARCHAR(255) NULL DEFAULT NULL,
  `caseId` VARCHAR(255) NULL DEFAULT NULL,
  `itemName` VARCHAR(255) NULL DEFAULT NULL,
  `itemType` VARCHAR(255) NULL DEFAULT NULL,
  `itemValue` VARCHAR(255) NULL DEFAULT NULL,
  `lastModified` DATETIME NULL DEFAULT NULL,
  `lastModifiedBy` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`caseidinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`caseidinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`caseidinfo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `caseIdPrefix` VARCHAR(255) NULL DEFAULT NULL,
  `currentValue` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UKftvt225gyxpjnl3d06alqkqyj` (`caseIdPrefix` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`caseroleassignmentlog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`caseroleassignmentlog` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`caseroleassignmentlog` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `caseId` VARCHAR(255) NULL DEFAULT NULL,
  `entityId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `roleName` VARCHAR(255) NULL DEFAULT NULL,
  `type` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`content`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`content` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`content` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `content` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`contextmappinginfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`contextmappinginfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`contextmappinginfo` (
  `mappingId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `CONTEXT_ID` VARCHAR(255) NOT NULL,
  `KSESSION_ID` BIGINT(20) NOT NULL,
  `OWNER_ID` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`mappingId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`correlationkeyinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`correlationkeyinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`correlationkeyinfo` (
  `keyId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`keyId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`correlationpropertyinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`correlationpropertyinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`correlationpropertyinfo` (
  `propertyId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `value` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  `correlationKey_keyId` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`propertyId`),
  INDEX `FKbchyl7kb8i6ghvi3dbr86bgo0` (`correlationKey_keyId` ASC),
  CONSTRAINT `FKbchyl7kb8i6ghvi3dbr86bgo0`
    FOREIGN KEY (`correlationKey_keyId`)
    REFERENCES `jbpm`.`correlationkeyinfo` (`keyId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`delegation_delegates`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`delegation_delegates` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`delegation_delegates` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKewkdyi0wrgy9byp6abyglpcxq` (`entity_id` ASC),
  INDEX `FK85x3trafk3wfbrv719cafr591` (`task_id` ASC),
  CONSTRAINT `FK85x3trafk3wfbrv719cafr591`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKewkdyi0wrgy9byp6abyglpcxq`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`deploymentstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`deploymentstore` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`deploymentstore` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `attributes` VARCHAR(255) NULL DEFAULT NULL,
  `DEPLOYMENT_ID` VARCHAR(255) NULL DEFAULT NULL,
  `deploymentUnit` LONGTEXT NULL DEFAULT NULL,
  `state` INT(11) NULL DEFAULT NULL,
  `updateDate` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UK85rgskt09thd8mkkfl3tb0y81` (`DEPLOYMENT_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`email_header`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`email_header` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`email_header` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `body` LONGTEXT NULL DEFAULT NULL,
  `fromAddress` VARCHAR(255) NULL DEFAULT NULL,
  `language` VARCHAR(255) NULL DEFAULT NULL,
  `replyToAddress` VARCHAR(255) NULL DEFAULT NULL,
  `subject` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`requestinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`requestinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`requestinfo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `commandName` VARCHAR(255) NULL DEFAULT NULL,
  `deploymentId` VARCHAR(255) NULL DEFAULT NULL,
  `executions` INT(11) NOT NULL,
  `businessKey` VARCHAR(255) NULL DEFAULT NULL,
  `message` VARCHAR(255) NULL DEFAULT NULL,
  `owner` VARCHAR(255) NULL DEFAULT NULL,
  `priority` INT(11) NOT NULL,
  `processInstanceId` BIGINT(20) NULL DEFAULT NULL,
  `requestData` LONGBLOB NULL DEFAULT NULL,
  `responseData` LONGBLOB NULL DEFAULT NULL,
  `retries` INT(11) NOT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `timestamp` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`errorinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`errorinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`errorinfo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(255) NULL DEFAULT NULL,
  `stacktrace` LONGTEXT NULL DEFAULT NULL,
  `timestamp` DATETIME NULL DEFAULT NULL,
  `REQUEST_ID` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKdarp6ushq06q39jmij3fdpdbs` (`REQUEST_ID` ASC),
  CONSTRAINT `FKdarp6ushq06q39jmij3fdpdbs`
    FOREIGN KEY (`REQUEST_ID`)
    REFERENCES `jbpm`.`requestinfo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`processinstanceinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`processinstanceinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`processinstanceinfo` (
  `InstanceId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `lastModificationDate` DATETIME NULL DEFAULT NULL,
  `lastReadDate` DATETIME NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceByteArray` LONGBLOB NULL DEFAULT NULL,
  `startDate` DATETIME NULL DEFAULT NULL,
  `state` INT(11) NOT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`InstanceId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`eventtypes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`eventtypes` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`eventtypes` (
  `InstanceId` BIGINT(20) NOT NULL,
  `element` VARCHAR(255) NULL DEFAULT NULL,
  INDEX `FKj0o3uve2nqo5yrjwrkc9jfttq` (`InstanceId` ASC),
  CONSTRAINT `FKj0o3uve2nqo5yrjwrkc9jfttq`
    FOREIGN KEY (`InstanceId`)
    REFERENCES `jbpm`.`processinstanceinfo` (`InstanceId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`executionerrorinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`executionerrorinfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`executionerrorinfo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `ERROR_ACK` SMALLINT(6) NULL DEFAULT NULL,
  `ERROR_ACK_AT` DATETIME NULL DEFAULT NULL,
  `ERROR_ACK_BY` VARCHAR(255) NULL DEFAULT NULL,
  `ACTIVITY_ID` BIGINT(20) NULL DEFAULT NULL,
  `ACTIVITY_NAME` VARCHAR(255) NULL DEFAULT NULL,
  `DEPLOYMENT_ID` VARCHAR(255) NULL DEFAULT NULL,
  `ERROR_INFO` LONGTEXT NULL DEFAULT NULL,
  `ERROR_DATE` DATETIME NULL DEFAULT NULL,
  `ERROR_ID` VARCHAR(255) NULL DEFAULT NULL,
  `ERROR_MSG` VARCHAR(255) NULL DEFAULT NULL,
  `INIT_ACTIVITY_ID` BIGINT(20) NULL DEFAULT NULL,
  `JOB_ID` BIGINT(20) NULL DEFAULT NULL,
  `PROCESS_ID` VARCHAR(255) NULL DEFAULT NULL,
  `PROCESS_INST_ID` BIGINT(20) NULL DEFAULT NULL,
  `ERROR_TYPE` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `IDX_ErrorInfo_pInstId` (`PROCESS_INST_ID` ASC),
  INDEX `IDX_ErrorInfo_errorAck` (`ERROR_ACK` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`notification`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`notification` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`notification` (
  `DTYPE` VARCHAR(31) NOT NULL,
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `priority` INT(11) NOT NULL,
  `Escalation_Notifications_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKoxq5uqfg4ylwyijsg2ubyflna` (`Escalation_Notifications_Id` ASC),
  CONSTRAINT `FKoxq5uqfg4ylwyijsg2ubyflna`
    FOREIGN KEY (`Escalation_Notifications_Id`)
    REFERENCES `jbpm`.`escalation` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`reassignment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`reassignment` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`reassignment` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `Escalation_Reassignments_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKessy30safh44b30f1cfoujv2k` (`Escalation_Reassignments_Id` ASC),
  CONSTRAINT `FKessy30safh44b30f1cfoujv2k`
    FOREIGN KEY (`Escalation_Reassignments_Id`)
    REFERENCES `jbpm`.`escalation` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`i18ntext`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`i18ntext` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`i18ntext` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `language` VARCHAR(255) NULL DEFAULT NULL,
  `shortText` VARCHAR(255) NULL DEFAULT NULL,
  `text` LONGTEXT NULL DEFAULT NULL,
  `Task_Subjects_Id` BIGINT(20) NULL DEFAULT NULL,
  `Task_Names_Id` BIGINT(20) NULL DEFAULT NULL,
  `Task_Descriptions_Id` BIGINT(20) NULL DEFAULT NULL,
  `Reassignment_Documentation_Id` BIGINT(20) NULL DEFAULT NULL,
  `Notification_Subjects_Id` BIGINT(20) NULL DEFAULT NULL,
  `Notification_Names_Id` BIGINT(20) NULL DEFAULT NULL,
  `Notification_Documentation_Id` BIGINT(20) NULL DEFAULT NULL,
  `Notification_Descriptions_Id` BIGINT(20) NULL DEFAULT NULL,
  `Deadline_Documentation_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKcd6eb4q62d9ab8p0di8pb99ch` (`Task_Subjects_Id` ASC),
  INDEX `FKiogka67sji8fk4cp7a369895i` (`Task_Names_Id` ASC),
  INDEX `FKrisdlmalotmk64mdeqpo4s5m0` (`Task_Descriptions_Id` ASC),
  INDEX `FKqxgws3fnukyqlaet11tivqg5u` (`Reassignment_Documentation_Id` ASC),
  INDEX `FKthf8ix3t3opf9hya1s04hwsx8` (`Notification_Subjects_Id` ASC),
  INDEX `FKg2jsybeuc8pbj8ek8xwxutuyo` (`Notification_Names_Id` ASC),
  INDEX `FKp0m7uhipskrljktvfeubdgfid` (`Notification_Documentation_Id` ASC),
  INDEX `FK6k8hmfvhko069970eghiy2ifp` (`Notification_Descriptions_Id` ASC),
  INDEX `FK8wn7sw34q6bifsi1pvl2b1yyb` (`Deadline_Documentation_Id` ASC),
  CONSTRAINT `FK6k8hmfvhko069970eghiy2ifp`
    FOREIGN KEY (`Notification_Descriptions_Id`)
    REFERENCES `jbpm`.`notification` (`id`),
  CONSTRAINT `FK8wn7sw34q6bifsi1pvl2b1yyb`
    FOREIGN KEY (`Deadline_Documentation_Id`)
    REFERENCES `jbpm`.`deadline` (`id`),
  CONSTRAINT `FKcd6eb4q62d9ab8p0di8pb99ch`
    FOREIGN KEY (`Task_Subjects_Id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKg2jsybeuc8pbj8ek8xwxutuyo`
    FOREIGN KEY (`Notification_Names_Id`)
    REFERENCES `jbpm`.`notification` (`id`),
  CONSTRAINT `FKiogka67sji8fk4cp7a369895i`
    FOREIGN KEY (`Task_Names_Id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKp0m7uhipskrljktvfeubdgfid`
    FOREIGN KEY (`Notification_Documentation_Id`)
    REFERENCES `jbpm`.`notification` (`id`),
  CONSTRAINT `FKqxgws3fnukyqlaet11tivqg5u`
    FOREIGN KEY (`Reassignment_Documentation_Id`)
    REFERENCES `jbpm`.`reassignment` (`id`),
  CONSTRAINT `FKrisdlmalotmk64mdeqpo4s5m0`
    FOREIGN KEY (`Task_Descriptions_Id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKthf8ix3t3opf9hya1s04hwsx8`
    FOREIGN KEY (`Notification_Subjects_Id`)
    REFERENCES `jbpm`.`notification` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`purchaserequest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`purchaserequest` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`purchaserequest` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `bl_cd` VARCHAR(255) NULL DEFAULT NULL,
  `cost_cd` VARCHAR(255) NULL DEFAULT NULL,
  `dept_cd` VARCHAR(255) NULL DEFAULT NULL,
  `mail_id` VARCHAR(255) NULL DEFAULT NULL,
  `self_bl_cd` VARCHAR(255) NULL DEFAULT NULL,
  `self_cost_cd` VARCHAR(255) NULL DEFAULT NULL,
  `self_dept_cd` VARCHAR(255) NULL DEFAULT NULL,
  `self_mail_id` VARCHAR(255) NULL DEFAULT NULL,
  `self_req` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`mappedvariable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`mappedvariable` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`mappedvariable` (
  `mappedVarId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `processInstanceId` BIGINT(20) NULL DEFAULT NULL,
  `taskId` BIGINT(20) NULL DEFAULT NULL,
  `variableId` BIGINT(20) NULL DEFAULT NULL,
  `variableType` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  `workItemId` BIGINT(20) NULL DEFAULT NULL,
  `MAP_VAR_ID` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`mappedVarId`),
  INDEX `FK914do4cop1pskbubms02xeg0w` (`MAP_VAR_ID` ASC),
  CONSTRAINT `FK914do4cop1pskbubms02xeg0w`
    FOREIGN KEY (`MAP_VAR_ID`)
    REFERENCES `jbpm`.`purchaserequest` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`nodeinstancelog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`nodeinstancelog` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`nodeinstancelog` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `connection` VARCHAR(255) NULL DEFAULT NULL,
  `log_date` DATETIME NULL DEFAULT NULL,
  `externalId` VARCHAR(255) NULL DEFAULT NULL,
  `nodeContainerId` VARCHAR(255) NULL DEFAULT NULL,
  `nodeId` VARCHAR(255) NULL DEFAULT NULL,
  `nodeInstanceId` VARCHAR(255) NULL DEFAULT NULL,
  `nodeName` VARCHAR(255) NULL DEFAULT NULL,
  `nodeType` VARCHAR(255) NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `referenceId` BIGINT(20) NULL DEFAULT NULL,
  `type` INT(11) NOT NULL,
  `workItemId` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`notification_bas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`notification_bas` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`notification_bas` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FK378pb1cvjv54w4ljqpw99s3wr` (`entity_id` ASC),
  INDEX `FKb123fgeomc741s9yc014421yy` (`task_id` ASC),
  CONSTRAINT `FK378pb1cvjv54w4ljqpw99s3wr`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKb123fgeomc741s9yc014421yy`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`notification` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`notification_email_header`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`notification_email_header` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`notification_email_header` (
  `Notification_id` BIGINT(20) NOT NULL,
  `emailHeaders_id` BIGINT(20) NOT NULL,
  `mapkey` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Notification_id`, `mapkey`),
  UNIQUE INDEX `UK_ptaka5kost68h7l3wflv7w6y8` (`emailHeaders_id` ASC),
  CONSTRAINT `FKd74pdu41avy2f7a8qyp7wn2n`
    FOREIGN KEY (`emailHeaders_id`)
    REFERENCES `jbpm`.`email_header` (`id`),
  CONSTRAINT `FKfdnoyp8rl0kxu29l4pyaa5566`
    FOREIGN KEY (`Notification_id`)
    REFERENCES `jbpm`.`notification` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`notification_recipients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`notification_recipients` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`notification_recipients` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKot769nimyq1jvw0m61pgsq5g3` (`entity_id` ASC),
  INDEX `FKn7v944d0hw37bh0auv4gr3hsf` (`task_id` ASC),
  CONSTRAINT `FKn7v944d0hw37bh0auv4gr3hsf`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`notification` (`id`),
  CONSTRAINT `FKot769nimyq1jvw0m61pgsq5g3`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`peopleassignments_bas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`peopleassignments_bas` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`peopleassignments_bas` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKa90cdfgc4km384n1ataqigq67` (`entity_id` ASC),
  INDEX `FKt4xs0glwhbsa0xwg69r6xduv9` (`task_id` ASC),
  CONSTRAINT `FKa90cdfgc4km384n1ataqigq67`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKt4xs0glwhbsa0xwg69r6xduv9`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`peopleassignments_exclowners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`peopleassignments_exclowners` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`peopleassignments_exclowners` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FK5ituvd6t8uvp63hsx6282xo6h` (`entity_id` ASC),
  INDEX `FKqxbjm1b3dl7w8w2f2y6sk0fv8` (`task_id` ASC),
  CONSTRAINT `FK5ituvd6t8uvp63hsx6282xo6h`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKqxbjm1b3dl7w8w2f2y6sk0fv8`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`peopleassignments_potowners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`peopleassignments_potowners` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`peopleassignments_potowners` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKsa3rrrjsm1qw98ajbbu2s7cjr` (`entity_id` ASC),
  INDEX `FKh8oqmk4iuh2pmpgby6g8r3jd1` (`task_id` ASC),
  CONSTRAINT `FKh8oqmk4iuh2pmpgby6g8r3jd1`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKsa3rrrjsm1qw98ajbbu2s7cjr`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`peopleassignments_recipients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`peopleassignments_recipients` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`peopleassignments_recipients` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKrd0h9ud1bhs9waf2mdmiv6j2r` (`entity_id` ASC),
  INDEX `FK9gnbv6bplxkxoedj35vg8n7ir` (`task_id` ASC),
  CONSTRAINT `FK9gnbv6bplxkxoedj35vg8n7ir`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKrd0h9ud1bhs9waf2mdmiv6j2r`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`peopleassignments_stakeholders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`peopleassignments_stakeholders` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`peopleassignments_stakeholders` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FK9uy76cu650rg1nnkrtjwj1e9t` (`entity_id` ASC),
  INDEX `FKaeyk4nwslvx0jywjomjq7083i` (`task_id` ASC),
  CONSTRAINT `FK9uy76cu650rg1nnkrtjwj1e9t`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`),
  CONSTRAINT `FKaeyk4nwslvx0jywjomjq7083i`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`task` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`processinstancelog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`processinstancelog` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`processinstancelog` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `correlationKey` VARCHAR(255) NULL DEFAULT NULL,
  `duration` BIGINT(20) NULL DEFAULT NULL,
  `end_date` DATETIME NULL DEFAULT NULL,
  `externalId` VARCHAR(255) NULL DEFAULT NULL,
  `user_identity` VARCHAR(255) NULL DEFAULT NULL,
  `outcome` VARCHAR(255) NULL DEFAULT NULL,
  `parentProcessInstanceId` BIGINT(20) NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceDescription` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `processName` VARCHAR(255) NULL DEFAULT NULL,
  `processType` INT(11) NULL DEFAULT NULL,
  `processVersion` VARCHAR(255) NULL DEFAULT NULL,
  `start_date` DATETIME NULL DEFAULT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`requisitiondetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`requisitiondetails` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`requisitiondetails` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `existing_vendor_info` VARCHAR(255) NULL DEFAULT NULL,
  `item_det` VARCHAR(255) NULL DEFAULT NULL,
  `project_info` VARCHAR(255) NULL DEFAULT NULL,
  `required_date` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`purchaserequest_requisitiondetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`purchaserequest_requisitiondetails` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`purchaserequest_requisitiondetails` (
  `PurchaseRequest_id` BIGINT(20) NOT NULL,
  `requisition_details_id` BIGINT(20) NOT NULL,
  UNIQUE INDEX `UK_arlpwkf5sr6axk4y0xs9rb1hx` (`requisition_details_id` ASC),
  INDEX `FKojh73etwi0oa5ahkxeyeg8god` (`PurchaseRequest_id` ASC),
  CONSTRAINT `FKojh73etwi0oa5ahkxeyeg8god`
    FOREIGN KEY (`PurchaseRequest_id`)
    REFERENCES `jbpm`.`purchaserequest` (`id`),
  CONSTRAINT `FKqs9gntwda0k532a7e4w6wvlbm`
    FOREIGN KEY (`requisition_details_id`)
    REFERENCES `jbpm`.`requisitiondetails` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`querydefinitionstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`querydefinitionstore` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`querydefinitionstore` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `qExpression` LONGTEXT NULL DEFAULT NULL,
  `qName` VARCHAR(255) NULL DEFAULT NULL,
  `qSource` VARCHAR(255) NULL DEFAULT NULL,
  `qTarget` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UK1dmy087nhbykucpgjipcnyluv` (`qName` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`reassignment_potentialowners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`reassignment_potentialowners` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`reassignment_potentialowners` (
  `task_id` BIGINT(20) NOT NULL,
  `entity_id` VARCHAR(255) NOT NULL,
  INDEX `FKsqrmpvehlc4qe9i0km22nmkjl` (`entity_id` ASC),
  INDEX `FKftegfexshix752bh2jfxf6bnh` (`task_id` ASC),
  CONSTRAINT `FKftegfexshix752bh2jfxf6bnh`
    FOREIGN KEY (`task_id`)
    REFERENCES `jbpm`.`reassignment` (`id`),
  CONSTRAINT `FKsqrmpvehlc4qe9i0km22nmkjl`
    FOREIGN KEY (`entity_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`sessioninfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`sessioninfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`sessioninfo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `lastModificationDate` DATETIME NULL DEFAULT NULL,
  `rulesByteArray` LONGBLOB NULL DEFAULT NULL,
  `startDate` DATETIME NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`task_comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`task_comment` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`task_comment` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `addedAt` DATETIME NULL DEFAULT NULL,
  `text` LONGTEXT NULL DEFAULT NULL,
  `addedBy_id` VARCHAR(255) NULL DEFAULT NULL,
  `TaskData_Comments_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKqb4mkarf209y9546w7n75lb7a` (`addedBy_id` ASC),
  INDEX `FKm2mwc1ukcpdsiqwgkoroy6ise` (`TaskData_Comments_Id` ASC),
  CONSTRAINT `FKm2mwc1ukcpdsiqwgkoroy6ise`
    FOREIGN KEY (`TaskData_Comments_Id`)
    REFERENCES `jbpm`.`task` (`id`),
  CONSTRAINT `FKqb4mkarf209y9546w7n75lb7a`
    FOREIGN KEY (`addedBy_id`)
    REFERENCES `jbpm`.`organizationalentity` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`taskdef`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`taskdef` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`taskdef` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `priority` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`taskevent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`taskevent` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`taskevent` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `logTime` DATETIME NULL DEFAULT NULL,
  `message` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NULL DEFAULT NULL,
  `taskId` BIGINT(20) NULL DEFAULT NULL,
  `type` VARCHAR(255) NULL DEFAULT NULL,
  `userId` VARCHAR(255) NULL DEFAULT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  `workItemId` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`taskvariableimpl`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`taskvariableimpl` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`taskvariableimpl` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `modificationDate` DATETIME NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NULL DEFAULT NULL,
  `taskId` BIGINT(20) NULL DEFAULT NULL,
  `type` INT(11) NULL DEFAULT NULL,
  `value` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`variableinstancelog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`variableinstancelog` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`variableinstancelog` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `log_date` DATETIME NULL DEFAULT NULL,
  `externalId` VARCHAR(255) NULL DEFAULT NULL,
  `oldValue` VARCHAR(255) NULL DEFAULT NULL,
  `processId` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `value` VARCHAR(255) NULL DEFAULT NULL,
  `variableId` VARCHAR(255) NULL DEFAULT NULL,
  `variableInstanceId` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jbpm`.`workiteminfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jbpm`.`workiteminfo` ;

CREATE TABLE IF NOT EXISTS `jbpm`.`workiteminfo` (
  `workItemId` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `creationDate` DATETIME NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `processInstanceId` BIGINT(20) NOT NULL,
  `state` BIGINT(20) NOT NULL,
  `OPTLOCK` INT(11) NULL DEFAULT NULL,
  `workItemByteArray` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`workItemId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
