

function login(){
    var userEmail = document.getElementById("email_field").value;
    var userPass = document.getElementById("password_field").value;

    firebase.auth().signInWithEmailAndPassword(userEmail, userPass)
    .then(function(resp){
        console.log(resp);
        window.alert("Welcome!");
        window.location.replace("dashboard.html");
    }).catch(function(error){
        var errorMessage = error.message;
         window.alert("Error : " + errorMessage);
    });
}
