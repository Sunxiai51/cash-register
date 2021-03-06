<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>进货</title>
</head>

<body style="overflow: hidden;">
    <div id="goodsStockAddDiv" v-cloak>
        <div>
            <table class="table table-bordered table-hover" style="font-family: 'Microsoft YaHei';">
                <thead>
                    <tr>
                        <th>商品条码</th>
                        <th>商品名称</th>
                        <th>货号</th>
                        <th>分类</th>
                        <th>颜色</th>
                        <th>尺码</th>
                        <th>进货量</th>
                        <th>售价</th>
                        <th>供货商</th>
                        <th>进货价</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="item in goods_list" style="height: 30px; line-height: 30px;">
                        <td>{{item.barCode}}</td>
                        <td>{{item.goodsName}}</td>
                        <td>{{item.productNumber}}</td>
                        <td>{{item.categoryName}}</td>
                        <td>{{item.goodsColor}}</td>
                        <td>{{item.goodsSize}}</td>
                        <td>
                        	<input class="form-control" type="text" v-model="item.goodsCount" @blur="editItemCountById(item.goodsId,item.goodsCount)" @keyup.enter="editItemCountById(item.goodsId,item.goodsCount)">
                        </td>
                        <td>{{item.salesPrice}}</td>
                        <td>{{item.supplierName}}</td>
                        <td>
                            <input class="form-control" type="text" v-model="item.lastImportPrice" @blur="editItemLastImportPriceById(item.goodsId,item.lastImportPrice)" @keyup.enter="editItemLastImportPriceById(item.goodsId,item.lastImportPrice)">
                        </td>
                        <td>
                            <button class="btn btn-danger" type="button" @click="deleteItemById(item.goodsId)">删除</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="operationDiv">
            <table class="table table-bordered" style="background-color: #EEE;">
                <tbody>
                    <tr>
                        <td class="col-xs-3">
                            <div>
                                <div class="col-xs-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control toFocus" v-model="goods_keyword" @keyup.enter="searchGoods" placeholder="条码/拼音码/品名">
                                        <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" @click="searchGoods">确定</button>
                                </span>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="col-xs-3">
                            <div>
                                <div class="col-xs-12">
                                    <button class="btn btn-info" type="button">
                                        总入库 <span class="badge">{{summary_count}}&nbsp;</span>
                                    </button>
                                    <button class="btn btn-info" type="button">
                                        总进价 <span class="badge">{{summary_lastImportPrice}}&nbsp;元</span>
                                    </button>
                                    <button class="btn btn-info" type="button">
                                        总售价 <span class="badge">{{summary_salesPrice}}&nbsp;元</span>
                                    </button>
                                </div>
                            </div>
                        </td>
                        <td class="col-xs-4" style="vertical-align: middle;">
                            <div>
                                <button type="button" class="btn btn-danger btn-lg btn-block" @click="submit">提交</button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%@ include file="./_goods-stock-add/_goods-select.jsp"%>
    </div>
    <script src="${ctx}/static/js/frontstage/_goods-stock-add.js"></script>
</body>

</html>