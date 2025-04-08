

















<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑失物认领</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">失物认领管理</li>
                        <li class="breadcrumb-item active">编辑失物认领</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">失物认领信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa shiwuzhaoling">
                                        <label>失物招领</label>
                                        <div>
                                            <select style="width: 450px" id="shiwuzhaolingSelect" name="shiwuzhaolingSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>失物编号</label>
                                        <input style="width: 450px" id="shiwuzhaolingUuidNumber" name="shiwuzhaolingUuidNumber" class="form-control"
                                               placeholder="失物编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>物品名称</label>
                                        <input style="width: 450px" id="shiwuzhaolingName" name="shiwuzhaolingName" class="form-control"
                                               placeholder="物品名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>物品类型</label>
                                        <input style="width: 450px" id="shiwuzhaolingValue" name="shiwuzhaolingValue" class="form-control"
                                               placeholder="物品类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>物品状态</label>
                                        <input style="width: 450px" id="statusValue" name="statusValue" class="form-control"
                                               placeholder="物品状态" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>物品图片</label>
                                        <img id="shiwuzhaolingPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>拾遗时间</label>
                                        <input style="width: 450px" id="shiwuzhaolingTime" name="shiwuzhaolingTime" class="form-control"
                                               placeholder="拾遗时间" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shiwuzhaoling">
                                        <label>拾遗地址</label>
                                        <input style="width: 450px" id="shiwuzhaolingDizhi" name="shiwuzhaolingDizhi" class="form-control"
                                               placeholder="拾遗地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>用户</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>身份证号</label>
                                        <input style="width: 450px" id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>手机号</label>
                                        <input style="width: 450px" id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="shiwuzhaolingId" name="shiwuzhaolingId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group col-md-6 shiwurenlingYesnoTypesDiv">
                                        <label>审核</label>
                                        <select style="width: 450px" id="shiwurenlingYesnoTypesSelect" name="shiwurenlingYesnoTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 shiwurenlingTextDiv">
                                        <label>详情</label>
                                        <textarea style="width: 450px"  id="shiwurenlingText" name="shiwurenlingText" class="form-control"placeholder="详情"></textarea>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "shiwurenling";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var shiwurenlingYesnoTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var shiwuzhaolingOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '失物招领'){//当前登录用户不为这个
                if($("#shiwuzhaolingId") !=null){
                    var shiwuzhaolingId = $("#shiwuzhaolingId").val();
                    if(shiwuzhaolingId == null || shiwuzhaolingId =='' || shiwuzhaolingId == 'null'){
                        alert("失物id不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '用户'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        alert("认领用户不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("shiwurenling/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addshiwurenling');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function shiwurenlingYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shiwurenling_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shiwurenlingYesnoTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function shiwuzhaolingSelect() {
            //填充下拉框选项
            http("shiwuzhaoling/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    shiwuzhaolingOptions = res.data.list;
                }
            });
        }

        function shiwuzhaolingSelectOne(id) {
            http("shiwuzhaoling/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                shiwuzhaolingShowImg();
                shiwuzhaolingShowVideo();
                shiwuzhaolingDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationShiwurenlingyesnotypesSelect(){
            var shiwurenlingYesnoTypesSelect = document.getElementById('shiwurenlingYesnoTypesSelect');
            if(shiwurenlingYesnoTypesSelect != null && shiwurenlingYesnoTypesOptions != null  && shiwurenlingYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < shiwurenlingYesnoTypesOptions.length; i++) {
                    shiwurenlingYesnoTypesSelect.add(new Option(shiwurenlingYesnoTypesOptions[i].indexName,shiwurenlingYesnoTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationshiwuzhaolingSelect() {
            var shiwuzhaolingSelect = document.getElementById('shiwuzhaolingSelect');
            if(shiwuzhaolingSelect != null && shiwuzhaolingOptions != null  && shiwuzhaolingOptions.length > 0 ) {
                for (var i = 0; i < shiwuzhaolingOptions.length; i++) {
                        shiwuzhaolingSelect.add(new Option(shiwuzhaolingOptions[i].shiwuzhaolingName, shiwuzhaolingOptions[i].id));
                }

                $("#shiwuzhaolingSelect").change(function(e) {
                        shiwuzhaolingSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var shiwurenlingYesnoTypesSelect = document.getElementById("shiwurenlingYesnoTypesSelect");
        if(shiwurenlingYesnoTypesSelect != null && shiwurenlingYesnoTypesOptions != null  && shiwurenlingYesnoTypesOptions.length > 0 ) {
            for (var i = 0; i < shiwurenlingYesnoTypesOptions.length; i++) {
                if (shiwurenlingYesnoTypesOptions[i].codeIndex == ruleForm.shiwurenlingYesnoTypes) {//下拉框value对比,如果一致就赋值汉字
                        shiwurenlingYesnoTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var shiwuzhaolingSelect = document.getElementById("shiwuzhaolingSelect");
            if(shiwuzhaolingSelect != null && shiwuzhaolingOptions != null  && shiwuzhaolingOptions.length > 0 ) {
                for (var i = 0; i < shiwuzhaolingOptions.length; i++) {
                    if (shiwuzhaolingOptions[i].id == ruleForm.shiwuzhaolingId) {//下拉框value对比,如果一致就赋值汉字
                        shiwuzhaolingSelect.options[i+1].selected = true;
                        $("#shiwuzhaolingSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addshiwurenling');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                shiwuzhaolingId: "required",
                yonghuId: "required",
                shiwurenlingYesnoTypes: "required",
                shiwurenlingText: "required",
            },
            messages: {
                shiwuzhaolingId: "失物id不能为空",
                yonghuId: "认领用户不能为空",
                shiwurenlingYesnoTypes: "审核不能为空",
                shiwurenlingText: "详情不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addshiwurenling = window.sessionStorage.getItem("addshiwurenling");
        if (addshiwurenling != null && addshiwurenling != "" && addshiwurenling != "null") {
            //注册表单验证
            $(validform());
                $(".shiwurenlingYesnoTypesDiv").remove();

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("shiwurenling/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        shiwuzhaolingDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#shiwuzhaolingId").val(ruleForm.shiwuzhaolingId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#shiwurenlingText").val(ruleForm.shiwurenlingText);

    }
    <!--  级联表的数据回显  -->
    function shiwuzhaolingDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#shiwuzhaolingId").val(ruleForm.id);

        $("#shiwuzhaolingUuidNumber").val(ruleForm.shiwuzhaolingUuidNumber);
        $("#shiwuzhaolingName").val(ruleForm.shiwuzhaolingName);
        $("#shiwuzhaolingValue").val(ruleForm.shiwuzhaolingValue);
        $("#statusValue").val(ruleForm.statusValue);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#shiwuzhaolingTime").val(ruleForm.shiwuzhaolingTime);
        $("#shiwuzhaolingDizhi").val(ruleForm.shiwuzhaolingDizhi);
        $("#shiwuzhaolingContent").val(ruleForm.shiwuzhaolingContent);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        shiwuzhaolingShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function shiwuzhaolingShowImg() {
        $("#shiwuzhaolingPhotoImg").attr("src",ruleForm.shiwuzhaolingPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        shiwuzhaolingShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function shiwuzhaolingShowVideo() {
        $("#shiwuzhaolingPhotoV").attr("src",ruleForm.shiwuzhaolingPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            shiwurenlingYesnoTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            shiwuzhaolingSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationShiwurenlingyesnotypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationshiwuzhaolingSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addshiwurenling');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
