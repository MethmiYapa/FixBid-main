function checkPassword ()
{
    let check1 = document.getElementById("password").value;
    let check2 = document.getElementById("RePassword").value;

    if(check1 != check2)
    {
        alert("Passwords are mismatched !!!");
        return false;
    }

    else
    {
        alert("Passwords are matched !!!");
        return true;
    }

}

function enableButton()
{
    if(document.getElementById("terms").checked)
    {
        document.getElementById("reg_submit").disabled = false;
    }

    else
    {
        document.getElementById("reg_submit").disabled = true;
    }

}

