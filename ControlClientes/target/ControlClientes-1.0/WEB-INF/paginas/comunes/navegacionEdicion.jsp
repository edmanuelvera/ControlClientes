<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn button-dark btn-block">
                    <i class="fas fa-solid fa-arrow-left-long"></i>&nbsp;Regresar al control
                </a>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i>&nbsp;Guardar cambios
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-solid fa-trash"></i>&nbsp;Eliminar cliente
                </a>
            </div>
        </div>
    </div>
</section>