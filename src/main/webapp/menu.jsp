<%
    String opc = request.getParameter("opcion");
%>        
<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="#">Avisos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link <%= (opc.equals("inicio")) ? " active":""%>" href="Inicio">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= (opc.equals("avisos")) ? " active":""%>" href="AvisoController">Avisos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>    