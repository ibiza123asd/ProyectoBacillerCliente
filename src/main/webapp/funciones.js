function actualizarMedicos() {
    var selectEspecialidades = document.getElementById("especialidades");
    var especialidadSeleccionada = selectEspecialidades.options[selectEspecialidades.selectedIndex].value;
    var selectMedicos = document.getElementById("medicos");
    var medicoSeleccionado = selectMedicos.options[selectMedicos.selectedIndex].value || '';
    alert("MedicoSeleccionado:" +medicoSeleccionado);
    var accion = "listas";
    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var selectMedicos = document.getElementById("medicos");
            selectMedicos.innerHTML = this.responseText;
            selectMedicos.disabled = false;
            selectMedicos.selectedIndex = 0;
            var selectAgenda = document.getElementById("agenda");
            selectAgenda.innerHTML = "<option value=''>Seleccione un médico primero</option>";
            selectAgenda.disabled = true;
        }
    };
    request.open("GET", "ControlCitas?especialidad="+ especialidadSeleccionada+"&accion="+accion, true);
    request.send();
}

function actualizarHoras() {
    var selectMedicos = document.getElementById("medicos");
    var medicoSeleccionado = selectMedicos.options[selectMedicos.selectedIndex].value;
    var accion = "listas";
    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var selectAgenda = document.getElementById("agenda");
            selectAgenda.innerHTML = this.responseText;
            selectAgenda.disabled = false;
            selectAgenda.selectedIndex = 0;
        }
    };
    request.open("GET", "ControlCitas?medico=" + medicoSeleccionado+"&accion="+accion, true);
    request.send();
}


