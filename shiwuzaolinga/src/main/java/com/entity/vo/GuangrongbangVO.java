package com.entity.vo;

import com.entity.GuangrongbangEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 光荣榜
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("guangrongbang")
public class GuangrongbangVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 标题
     */

    @TableField(value = "guangrongbang_name")
    private String guangrongbangName;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 物品
     */

    @TableField(value = "shiwuzhaoling_id")
    private Integer shiwuzhaolingId;


    /**
     * 图片
     */

    @TableField(value = "guangrongbang_photo")
    private String guangrongbangPhoto;


    /**
     * 详情
     */

    @TableField(value = "guangrongbang_content")
    private String guangrongbangContent;


    /**
     * 创建时间 show2 show1 nameShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：标题
	 */
    public String getGuangrongbangName() {
        return guangrongbangName;
    }


    /**
	 * 获取：标题
	 */

    public void setGuangrongbangName(String guangrongbangName) {
        this.guangrongbangName = guangrongbangName;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：物品
	 */
    public Integer getShiwuzhaolingId() {
        return shiwuzhaolingId;
    }


    /**
	 * 获取：物品
	 */

    public void setShiwuzhaolingId(Integer shiwuzhaolingId) {
        this.shiwuzhaolingId = shiwuzhaolingId;
    }
    /**
	 * 设置：图片
	 */
    public String getGuangrongbangPhoto() {
        return guangrongbangPhoto;
    }


    /**
	 * 获取：图片
	 */

    public void setGuangrongbangPhoto(String guangrongbangPhoto) {
        this.guangrongbangPhoto = guangrongbangPhoto;
    }
    /**
	 * 设置：详情
	 */
    public String getGuangrongbangContent() {
        return guangrongbangContent;
    }


    /**
	 * 获取：详情
	 */

    public void setGuangrongbangContent(String guangrongbangContent) {
        this.guangrongbangContent = guangrongbangContent;
    }
    /**
	 * 设置：创建时间 show2 show1 nameShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show2 show1 nameShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
