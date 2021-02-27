document.getElementById("btncreate").addEventListener("click", function() {
    pin = document.getElementById("pin").value;
    cpin = document.getElementById("cpin").value;
    if (pin == cpin) {
        alert("account created successfully");
    } else {
        alert("pins entered are not matching");
    }
});