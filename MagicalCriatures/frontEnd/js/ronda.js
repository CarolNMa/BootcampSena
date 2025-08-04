document.addEventListener("DOMContentLoaded", () => {
    const urlParams = new URLSearchParams(window.location.search);
    const poder = urlParams.get("poder");
    const ronda = urlParams.get("ronda");

    const rondaActual = document.getElementById("ronda-actual");
    if (rondaActual && ronda) {
        rondaActual.textContent = `Ronda ${ronda}`;
    }

   
    const poderElegido = document.getElementById("poder-elegido");
    if (poderElegido && poder) {
        const poderHTML = `
            <h3 id="nombre-poder">${poder}</h3>
            <img src="../img/${poder}.png" alt="${poder}" id="imagen-poder"
                 onerror="this.src='../img/poder-default.png'">
        `;
        poderElegido.innerHTML = poderHTML;
    }

  
    const jugadores = [];
    for (let i = 1; i <= 5; i++) {
        const nombre = urlParams.get(`jugador${i}`);
        const avatar = urlParams.get(`avatar${i}`);
        if (nombre && avatar) {
            jugadores.push({
                nombre,
                avatar: `../img/avatar${avatar}.png`
            });
        }
    }

    const contenedorJugadores = document.getElementById("jugadores-container");
    if (contenedorJugadores) {
        jugadores.forEach(jugador => {
            const div = document.createElement("div");
            div.className = "jugador";
            div.innerHTML = `
                <img src="${jugador.avatar}" alt="${jugador.nombre}"
                     onerror="this.src='../img/avatar-default.png'">
                <p>${jugador.nombre}</p>
            `;
            contenedorJugadores.appendChild(div);
        });
    }

    // Obtener cartas
    fetch("../../backend/obtenerCartas.php")
        .then(res => res.json())
        .then(data => {
            if (data.error) {
                console.error("Error al obtener cartas:", data.error);
            } else {
                mostrarCartas(data);
            }
        })
        .catch(err => console.error("Error al conectar con el servidor o al parsear JSON:", err));
});



function mostrarCartas(cartas) {
    const contenedor = document.getElementById("mano-jugador");
    contenedor.innerHTML = "";

    cartas.forEach(carta => {
        const div = document.createElement("div");
         div.className = `carta-monstruo ${carta.grupoClase}`; 

        div.innerHTML = `
            <div class="encabezado">
                <div class="rareza">${carta.numero}</div>
                <h3 class="nombre">${carta.nombre ?? ''}</h3>
            </div>
            <div class="imagen-monstruo">
                <img src="../img/${carta.imagen ?? 'carta-default.png'}">
            </div>
            <div class="atributos">
                <div><span>Fuerza</span> <span>${carta.fuerza}</span></div>
                <div><span>Velocidad</span> <span>${carta.velocidad}</span></div>
                <div><span>Resistencia</span> <span>${carta.resistencia}</span></div>
                <div><span>Sigilo</span> <span>${carta.sigilo}</span></div>
                <div><span>Sabiduría</span> <span>${carta.sabiduria}</span></div>
                <div><span>Curación</span> <span>${carta.curacion}</span></div>
            </div>
        `;
        contenedor.appendChild(div);
    });
}


