function dashboard() {
    document.getElementById("dashboard-div").style.display = "block";
    document.getElementById("users-div").style.display = "none";
    document.getElementById("feedback-div").style.display = "none";
    document.getElementById("profile-div").style.display = "none";
}

function users() {
    document.getElementById("dashboard-div").style.display = "none";
    document.getElementById("users-div").style.display = "block";
    document.getElementById("feedback-div").style.display = "none";
    document.getElementById("profile-div").style.display = "none";
}

function feedBack() {
    document.getElementById("dashboard-div").style.display = "none";
    document.getElementById("users-div").style.display = "none";
    document.getElementById("feedback-div").style.display = "block";
    document.getElementById("profile-div").style.display = "none";
}

function profile() {
    document.getElementById("dashboard-div").style.display = "none";
    document.getElementById("users-div").style.display = "none";
    document.getElementById("feedback-div").style.display = "none";
    document.getElementById("profile-div").style.display = "block";
}