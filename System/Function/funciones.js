
// Funcion para introducir solo numeros
function solo_numeros(e) {
    var keynum = window.event ? window.event.keyCode : e.which;
    if ((keynum == 8) || (keynum == 46)) return true;
    return /\d/.test(String.fromCharCode(keynum));
}
// funciones para dar formato a numero
function format0(n) {
        return n.toFixed().replace(/./g, function(c, i, a) {
        return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
    });
}

function format1(n) {
        return n.toFixed(1).replace(/./g, function(c, i, a) {
        return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
    });
}

function numformat(n){
    var s= n.replace(",","");

        return parseInt(s);
}