<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="comm/include.inc.jsp"%>
<h2 class="contentTitle">添加信息</h2>

<div class="pageContent">
	<form method="post" action="ssadmin/updateHedging.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this,dialogAjaxDone)">
		<div class="pageFormContent nowrap" layoutH="97">
			<dl>
				<dt>对冲虚拟币名称：</dt>
				<dd>
				 <input type="hidden" value="${hedging.fid }" name="uid"/>
					<select
						type="combox" name="vid1" class="required">
						<c:forEach items="${allType}" var="type">
							<c:if test="${type.fid == hedging.fvirtualcointypeByFid.fid}">
								<option value="${type.fid}" selected="true">${type.fname}</option>
							</c:if>
							<c:if test="${type.fid != hedging.fvirtualcointypeByFid.fid}">
								<option value="${type.fid}">${type.fname}</option>
							</c:if>
						</c:forEach>
					</select>
				</dd>
			</dl>
			 <dl>
			<dt>投注虚拟币名称：</dt>
				<dd>
					<select
						type="combox" name="vid2" class="required">
						<c:forEach items="${allType}" var="type">
							<c:if test="${type.fid == hedging.fvirtualcointypeByFvid2.fid}">
								<option value="${type.fid}" selected="true">${type.fname}</option>
							</c:if>
							<c:if test="${type.fid != hedging.fvirtualcointypeByFvid2.fid}">
								<option value="${type.fid}">${type.fname}</option>
							</c:if>
						</c:forEach>
					</select>
				</dd>
			</dl>
			<dl>
				<dt>最小数量：</dt>
				<dd>
					<input type="text" name="fminqty" class="required number" value="${hedging.fminqty }" />
				</dd>
			</dl>
			<dl>
				<dt>取价格API地址：</dt>
				<dd>
					<input type="text" name="fpriceurl" value="${hedging.fpriceurl }" />
					<span>空默认为取平台的</span>
				</dd>
			</dl>
			<dl>
				<dt>最大数量：</dt>
				<dd>
					<input type="text" name="fmaxqty" class="required number"  value="${hedging.fmaxqty }"/>
				</dd>
			</dl>
			<!-- <dl>
				<dt>看涨赔率：</dt>
				<dd>
					<input type="text" name="frate1" class="required number"  value="${hedging.frate1 }"/>
				</dd>
			</dl>
			<dl>
				<dt>看平赔率：</dt>
				<dd>
					<input type="text" name="frate2" class="required number"  value="${hedging.frate2 }"/>
				</dd>
			</dl>
			<dl>
				<dt>看跌赔率：</dt>
				<dd>
					<input type="text" name="frate3" class="required number"  value="${hedging.frate3 }"/>
				</dd>
			</dl>
			-->
			<dl>
				<dt>看涨门限：</dt>
				<dd>
					<input type="text" name="fupthreshold" class="required number"  value="${hedging.fupthreshold }"/>
					<span>当涨幅超过看涨门限时，认为对冲结果是看涨</span>
				</dd>
			</dl>
			<dl>
				<dt>看跌门限：</dt>
				<dd>
					<input type="text" name="fdownthreshold" class="required number"  value="${hedging.fdownthreshold }"/>
					<span>当跌幅超过看跌门限时，认为对冲结果是看跌</span>
				</dd>
			</dl>
			<dl>
				<dt>开始投注时间：</dt>
				<dd>
					<input type="text" name="fstarttime" class="required date"
						readonly="true" dateFmt="HH:mm:ss" size="40"  value="<fmt:formatDate value="${hedging.fstarttime }"
												pattern="HH:mm:ss" />"/> <a
						class="inputDateButton" href="javascript:;">选择</a>
				</dd>
			</dl>
			<dl>
				<dt>结束投注时间：</dt>
				<dd>
					<input type="text" name="fendtime" class="required date"
						readonly="true" dateFmt="HH:mm:ss" size="40"  value="<fmt:formatDate value="${hedging.fendtime }"
												pattern="HH:mm:ss" />"/> <a
						class="inputDateButton" href="javascript:;">选择</a>
				</dd>
			</dl>
			<dl>
				<dt>基准价格时间：</dt>
				<dd>
					<input type="text" name="fstartpricetime" class="required date"
						readonly="true" dateFmt="HH:mm:ss" size="40"  value="<fmt:formatDate value="${hedging.fstartpricetime }"
												pattern="HH:mm:ss" />"/> <a
						class="inputDateButton" href="javascript:;">选择</a>
				</dd>
			</dl>
			<dl>
				<dt>交割价格时间：</dt>
				<dd>
					<input type="text" name="fendpricetime" class="required date"
						readonly="true" dateFmt="HH:mm:ss" size="40"  value="<fmt:formatDate value="${hedging.fendpricetime }"
												pattern="HH:mm:ss" />"/> <a
						class="inputDateButton" href="javascript:;">选择</a>
				</dd>
			</dl>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div>
				</li>
				<li><div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>

</div>


<script type="text/javascript">
function customvalidXxx(element){
	if ($(element).val() == "xxx") return false;
	return true;
}
</script>
