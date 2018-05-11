<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>库存变动明细查询</title>
</head>

<body>
    <div id="stockFlowListDiv" v-cloak>
        <!-- 分页表格 -->
        <div>
            <div class="grid-btn">
                <div class="form-group col-xs-1">
                    <select class="form-control" v-model="q.flowType">
                        <option value="">全部变动</option>
                        <option value="checkout">商品销售</option>
                        <option value="refund">退款</option>
                        <option value="cancel">反结账</option>
                        <option value="traffic_in">货流进货</option>
                        <option value="traffic_out">货流出库</option>
                        <option value="traffic_out_supplier">货流退货</option>
                        <option value="goods_lose">商品报损</option>
                        <option value="goods_stock_edit">编辑库存</option>
                    </select>
                </div>
                 <div class="form-group col-xs-2">
                    <input type="text" class="form-control" v-model="q.goodsName" placeholder="商品名称">
                </div>
                 <div class="form-group col-xs-2">
                    <input type="text" class="form-control" v-model="q.barCode" placeholder="商品条码">
                </div>
                <div class="form-group col-xs-2">
					<input type="text" class="form-control" v-model="q.gmtCreateUp"
						id="datetimepickerAfter" placeholder="起始时间 yyyy-MM-dd hh:mm:ss">
				</div>
				<div class="form-group col-xs-2">
					<input type="text" class="form-control" v-model="q.gmtCreateDown"
						id="datetimepickerBefore" placeholder="截止时间 yyyy-MM-dd hh:mm:ss">
				</div>
                <div class="form-group col-xs-2">
                    <a class="btn btn-primary" @click="search"><i class="fa fa-search"></i>&nbsp;查询</a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div style="width: 100%">
	            <table class="table table-bordered tableStyle">
	            	<thead>
	            		<th>序号</th>
	            		<th>商品名称</th>
	            		<th>商品条码</th>
	            		<th>变动类型</th>
	            		<th>变动数量</th>
	            		<th>校正库存数量</th>
	            		<th>外部流水号</th>
	            		<th>备注</th>
	            		<th>日期</th>
	            	</thead>
	            	<tbody>
	            		<tr v-for="(stockFlow, index) in stockFlowList">
	            			<td>{{index}}</td>
	            			<td>{{stockFlow.goodsName}}</td>
	            			<td>{{stockFlow.barCode}}</td>
	            			<td>{{stockFlow.flowType}}</td>
	            			<td>{{stockFlow.flowCount}}</td>
	            			<td>{{stockFlow.checkCount}}</td>
	            			<td>{{stockFlow.outBizNo}}</td>
	            			<td>{{stockFlow.remark}}</td>
	            			<td>{{stockFlow.gmtUpdate}}</td>
	            			<td>{{stockFlow.gmtCreate}}</td>
	            		</tr>
	            	</tbody>
	            </table>
	        </div>
        </div>
        <!-- /.分页表格 -->
    </div>
    
    <script src="${ctx}/static/js/backstage/_stock-flow-list.js"></script>
    
</body>

</html>