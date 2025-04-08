package com.entity.model;

import com.entity.GuangrongbangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 光荣榜
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class GuangrongbangModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 标题
     */
    private String guangrongbangName;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 物品
     */
    private Integer shiwuzhaolingId;


    /**
     * 图片
     */
    private String guangrongbangPhoto;


    /**
     * 详情
     */
    private String guangrongbangContent;


    /**
     * 创建时间 show2 show1 nameShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：标题
	 */
    public String getGuangrongbangName() {
        return guangrongbangName;
    }


    /**
	 * 设置：标题
	 */
    public void setGuangrongbangName(String guangrongbangName) {
        this.guangrongbangName = guangrongbangName;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：物品
	 */
    public Integer getShiwuzhaolingId() {
        return shiwuzhaolingId;
    }


    /**
	 * 设置：物品
	 */
    public void setShiwuzhaolingId(Integer shiwuzhaolingId) {
        this.shiwuzhaolingId = shiwuzhaolingId;
    }
    /**
	 * 获取：图片
	 */
    public String getGuangrongbangPhoto() {
        return guangrongbangPhoto;
    }


    /**
	 * 设置：图片
	 */
    public void setGuangrongbangPhoto(String guangrongbangPhoto) {
        this.guangrongbangPhoto = guangrongbangPhoto;
    }
    /**
	 * 获取：详情
	 */
    public String getGuangrongbangContent() {
        return guangrongbangContent;
    }


    /**
	 * 设置：详情
	 */
    public void setGuangrongbangContent(String guangrongbangContent) {
        this.guangrongbangContent = guangrongbangContent;
    }
    /**
	 * 获取：创建时间 show2 show1 nameShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show2 show1 nameShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
