document.addEventListener("DOMContentLoaded", function () {
    const btnJugadores = document.querySelectorAll(".btn-jugador");
    const btnCrear = document.getElementById("btn-crear");
    let numJugadores = 0;

    btnJugadores.forEach(btn => {
        btn.addEventListener("click", function () {
            btnJugadores.forEach(b => b.classList.remove("selected"));
            this.classList.add("selected");
            numJugadores = parseInt(this.dataset.num);
            btnCrear.disabled = false;
        });
    });

    btnCrear.addEventListener("click", function () {
        if (numJugadores === 0) {
            alert("Selecciona el número de jugadores");
            return;
        }


        window.location.href = `../demas/crear.html?jugadores=${numJugadores}`;
    });
});
