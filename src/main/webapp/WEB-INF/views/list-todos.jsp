<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<table class="table table-striped">
		<caption>
			<spring:message code="todo.caption" />
		</caption>
		<thead>
			<tr>
				<th><spring:message code="todo.description" /></th>
				<th><spring:message code="todo.date" /></th>
				<th><spring:message code="todo.completed" /></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${todo.targetDate}" /></td>
					<td>${todo.done}</td>
					<td><a type="button" class="btn btn-primary"
						href="/update-todo?id=${todo.id}"><spring:message code="button.edit" /></a> <a type="button"
						class="btn btn-warning" href="/delete-todo?id=${todo.id}"><spring:message code="button.delete" /></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a type="button" class="btn btn-success" href="/add-todo"><spring:message code="button.add" /></a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>