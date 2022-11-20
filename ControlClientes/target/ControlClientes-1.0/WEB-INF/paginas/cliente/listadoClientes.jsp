<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_CO"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de clientes</h4>
                    </div>
                    <table class="table table-dark table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista clientes -->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cliente.nombre} ${cliente.apellido}</td>
                                    <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/></td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                                class="btn btn-secondary">
                                            <i class="fas fa-solid fa-pen"></i>&nbspEditar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- Tarjetas usando las 3 columnas que quedan -->
            
            <div class="col-md-3">
                <div class="card text-center bg-dark text-white mb-3">
                <div class="card-body">
                    <h3>Saldo total</h3>
                    <h4 class="display-4">
                        <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                    </h4>
                </div>
                </div>
                    
                    <div class="card text-center bg-dark text-white mb-3">
                        <div class="card-body">
                            <h3>Total clientes</h3>
                            <h4 class="display-4">
                                <i class="fas fa-solid fa-users"></i>${totalClientes}
                            </h4>
                        </div>
                    </div>
            </div>
            
            <!-- Cerrando tarjetas -->
            
        </div>
    </div>
</section>
                            
 <!-- Agregar cliente Modal -->
 
 <jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>