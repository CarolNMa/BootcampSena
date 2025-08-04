document.addEventListener("DOMContentLoaded", function () {
    const urlParams = new URLSearchParams(window.location.search);
    const jugadores = [];

    for (let i = 1; i <= 5; i++) {
        const nombreJugador = urlParams.get(`jugador${i}`);
        const avatarJugador = urlParams.get(`avatar${i}`) || i;

        if (nombreJugador) {
            jugadores.push({
                numero: i,
                nombre: nombreJugador,
                avatar: `../img/avatar${avatarJugador}.png`,
                cartas: 8,
                puntos: 0
            });
        }
    }

    const jugadoresContainer = document.getElementById('jugadores-container');

    jugadores.forEach(jugador => {
        const jugadorDiv = document.createElement('div');
        jugadorDiv.className = 'jugador';
        jugadorDiv.innerHTML = `
            <p>${jugador.puntos} puntos</p>
            <img src="${jugador.avatar}" alt="${jugador.nombre}" 
                 onerror="this.src='../img/avatar-default.png'">
            <p>${jugador.nombre}</p>
            <div>
                <div class="cartas"></div>
                <p class="num-cartas">${jugador.cartas} Cartas</p>
            </div>
        `;
        jugadoresContainer.appendChild(jugadorDiv);
    });

    let ronda = 1;
    const totalRondas = 8;
    let poderSeleccionado = false;
    const rondaActual = document.getElementById('ronda-actual');
    rondaActual.textContent = `Ronda ${ronda}`;

    const poderes = document.querySelectorAll('.poder');

    poderes.forEach(poder => {
        poder.addEventListener('click', function () {
            if (poderSeleccionado) {
                alert("Ya seleccionaste un poder para esta ronda.");
                return;
            }

            const tipoPoder = this.getAttribute('data-poder');
            console.log(`Ronda ${ronda} - Poder seleccionado: ${tipoPoder}`);

            poderSeleccionado = true;

            
            const params = new URLSearchParams();
            params.append("poder", tipoPoder);
            params.append("ronda", ronda);

           
            jugadores.forEach(jugador => {
                params.append(`jugador${jugador.numero}`, jugador.nombre);
                params.append(`avatar${jugador.numero}`, jugador.avatar.match(/\d+/)[0]); 
            });

            window.location.href = `./ronda.html?${params.toString()}`;
        });

    });
});
