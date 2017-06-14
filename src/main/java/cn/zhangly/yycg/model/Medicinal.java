package cn.zhangly.yycg.model;

import java.util.Date;

/**
 * Created by zhangly on 2017/6/13.
 */
public class Medicinal {

    private long id; // id
    private String serialNumber; // 流水号
    private String genericName; // 通用名
    private String dosageForm; // 剂型
    private String specification; // 规格
    private String conversionFactor; // 转换系数
    private String manuenterName; // 生产企业名称
    private String commodityName; // 商品名
    private double bidPrice; // 中标价
    private String company; // 单位
    private String gnamePhoneticAlphabet; // 通用名拼音
    private String productPhotos; // 产品照片（相对路径）
    private String approvalNumber; // 批准文号
    private Date approvalValidityDate; // 批准文号有效期
    private int isImportedDrugs; // 是否进口药 1：是、0：否
    private String packingMaterial; // 包装材质
    private String packingCompany; // 包装单位
    private double latestRetailPrice; // 最新零售价
    private String retailPriceSource; // 零售价出处
    private String qualityLevel; // 质量层次 (存储数据字典，国家一类新药 国家科学进步奖 专利 原研、单独定价 优质优价 GMP)
    private String qualityLevelDescription; // 质量层次说明
    private int isDrugInspectionReport; // 有无药品检验报告 1：有、0：无
    private String drugInspectionReportNumber; // 药品检验报告编号
    private Date drugInspectionReportValidityDate; // 药品检验报告有效期（年月日）
    private String productDescription; // 产品说明
    private String drugCategory; // 药品类别
    private int drugTradingStatus; // 药品交易状态 存储数据字典，1：正常(添加时默认)、2：取消交易

}
