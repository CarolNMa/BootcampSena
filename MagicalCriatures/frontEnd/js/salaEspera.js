document.addEventListener("DOMContentLoaded", function () {
    const jugadoresContainer = document.getElementById("jugadores-container");
    const btnIniciar = document.getElementById("btn-iniciar");
    const urlParams = new URLSearchParams(window.location.search);
    const idSala = urlParams.get('idSala');

    const jugadores = [];
    for (let i = 1; i <= 5; i++) {
        const nombre = urlParams.get(`jugador${i}`);
        const avatar = urlParams.get(`avatar${i}`);
        if (nombre) {
            jugadores.push({
                numero: i,
                nombre: nombre,
                avatar: avatar || ((i % 6) + 1)
            });
        }
    }

    async function cargarJugadoresDesdeBD() {
        try {
            const response = await fetch(`../../backend/obtenerJugador.php?idSala=${idSala}`);
            const contentType = response.headers.get('content-type');
            if (!contentType || !contentType.includes('application/json')) {
                const errorText = await response.text();
                throw new Error(`El servidor respondió con: ${errorText.substring(0, 100)}...`);
            }

            const data = await response.json();

            if (!response.ok || data.status !== "success") {
                throw new Error(data.message || `Error del servidor: ${response.status}`);
            }

            const jugadoresDesdeBD = data.usuario.map((jugadorBD, index) => {
                const avatar = urlParams.get(`avatar${index + 1}`) || ((index % 6) + 1);
                return {
                    numero: index + 1,
                    nombre: jugadorBD.nombre,
                    avatar: avatar
                };
            });

            mostrarJugadores(jugadoresDesdeBD);

        } catch (error) {
            console.error("Error al cargar jugadores:", error);

            mostrarJugadores(jugadores);

            if (jugadores.length === 0) {
                alert(`Error: ${error.message}\n\nUsando datos locales como respaldo.`);
            }
        }
    }


    function mostrarJugadores(jugadores) {
        jugadoresContainer.innerHTML = "";

        jugadores.forEach((jugador, index) => {
            const avatarNumero = jugador.avatar || ((index % 6) + 1);

            const jugadorDiv = document.createElement("div");
            jugadorDiv.className = "jugador";

            const avatarDiv = document.createElement("div");
            avatarDiv.className = "avatar";
            avatarDiv.style.backgroundImage = `url(../img/avatar${avatarNumero}.png)`;
            avatarDiv.style.margin = "0 auto";

            const nombreP = document.createElement("p");
            nombreP.textContent = jugador.nombre;

            jugadorDiv.appendChild(avatarDiv);
            jugadorDiv.appendChild(nombreP);

            jugadoresContainer.appendChild(jugadorDiv);
        });
    }


    btnIniciar.addEventListener("click", function () {
        if (!idSala) {
            alert("Error: No se encontró ID de sala");
            return;
        }


        const params = new URLSearchParams();
        jugadores.forEach(jugador => {
            params.append(`jugador${jugador.numero}`, jugador.nombre);
            params.append(`avatar${jugador.numero}`, jugador.avatar);
        });
        params.append('idSala', idSala);

        window.location.href = `partida.html?${params.toString()}`;
    });


    if (jugadores.length > 0) {
        mostrarJugadores(jugadores);
    }
    cargarJugadoresDesdeBD();
});