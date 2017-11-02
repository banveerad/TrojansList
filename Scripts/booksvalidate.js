function ValidateForm() {
    var flag = 0;
    var re = /^[A-Za-z0-9 ,-]*[A-Za-z0-9][A-Za-z0-9 ,-]*$/;
    var nam = document.getElementById("fullNameTxtBox").value;
    if (!re.test(nam)) {
        document.getElementById("nameLabel").innerHTML = "Please enter a valid name. Field cannot include any special characters such as * #, etc";
        flag = 1;
    }
    else {
        document.getElementById("nameLabel").innerHTML = "";
    }

    var desc = document.getElementById("titleTB").value;
    if (!re.test(desc)) {
        document.getElementById("errorTitlelbl").innerHTML = "Please enter a valid Book title.Field cannot include any special characters except , and - ";
        flag = 1;
    }
    else {
        document.getElementById("errorTitlelbl").innerHTML = "";
    }

    var isbnFlag = 0;
    var trimmed = document.getElementById("yearPublishedTextBox").value.replace(/^\s+|\s+$/g, '');
    if (trimmed.length == 0 || trimmed.value == " ") {
        document.getElementById("yearPublishedLabel").innerHTML = "Please enter the Year published";
        flag = 1;
        isbnFlag = 1;
    }
    else {
        document.getElementById("yearPublishedLabel").innerHTML = "";
    }

    if (isbnFlag == 0) {
        if (isNaN(document.getElementById("yearPublishedTextBox").value)) {
            document.getElementById("yearPublishedLabel").innerHTML = "Please enter numericals only";
            flag = 1;
        }
        else {
            document.getElementById("yearPublishedLabel").innerHTML = "";
        }
    }


    var auth = document.getElementById("authorTextBox").value;
    if (!re.test(auth)) {
        document.getElementById("authorLabel").innerHTML = "Please enter a valid Author name.Field cannot include any special characters except , and - ";
        flag = 1;
    }
    else {
        document.getElementById("authorLabel").innerHTML = "";
    }

    var pubs = document.getElementById("publicationsTextBox").value;
    if (!re.test(auth)) {
        document.getElementById("publicationsLabel6").innerHTML = "Please enter a valid Publications.Field cannot include any special characters except , and - ";
        flag = 1;
    }
    else {
        document.getElementById("publicationsLabel6").innerHTML = "";
    }


    var pubs = document.getElementById("isbnTextBox").value;
    if (!re.test(auth)) {
        document.getElementById("isbnLabel").innerHTML = "Please enter a valid ISBN.Field cannot include any special characters except , and - ";
        flag = 1;
    }
    else {
        document.getElementById("isbnLabel").innerHTML = "";
    }


    var expeFlag = 0;
    var trimmed = document.getElementById("expectedTextBox").value.replace(/^\s+|\s+$/g, '');
    if (trimmed.length == 0 || trimmed.value == " ") {
        document.getElementById("expectedLabel").innerHTML = "Please enter the selling price";
        flag = 1;
        expeFlag = 1;
    }
    else {
        document.getElementById("expectedLabel").innerHTML = "";
    }

    if (expeFlag == 0) {
        if (isNaN(document.getElementById("expectedTextBox").value)) {
            document.getElementById("expectedLabel").innerHTML = "Please enter numericals only";
            flag = 1;
        }
        else {
            document.getElementById("expectedLabel").innerHTML = "";
        }
    }

    if (document.getElementById("phoneNumberTextBox").value.length != 0) {
        var localPhflag = 0;
        if (isNaN(document.getElementById("phoneNumberTextBox").value)) {
            document.getElementById("phoneLabel").innerHTML = "Please enter numericals only";
            flag = 1;
            localPhflag = 1;
        }
        else {
            document.getElementById("phoneLabel").innerHTML = "";
        }
        if (localPhflag == 0) {
            if (document.getElementById("phoneNumberTextBox").value.length != 10) {
                document.getElementById("phoneLabel").innerHTML = "Please enter a valid 10 digit phone number";
                flag = 1;
            }
            else {
                document.getElementById("phoneLabel").innerHTML = "";
            }
        }
    }
    else {
        document.getElementById("phoneLabel").innerHTML = "";
    }

    if (document.getElementById("uscEmsilTextBox").value.length == 0) {
        document.getElementById("emailLabel").innerHTML = "Please enter a valid USC email id";
        flag = 1;
    }
    else {
        document.getElementById("emailLabel").innerHTML = "";
    }

    var emailPattern = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@(usc(\.[-a-z0-9_]+)*\.(edu)|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;
    if (!emailPattern.test(document.getElementById("uscEmsilTextBox").value)) {
        document.getElementById("emailLabel").innerHTML = "Please enter a valid USC email id";
        flag = 1;
    }
    else {
        document.getElementById("emailLabel").innerHTML = "";
    }
    var nam, error = "";
    nam = document.getElementById("MathCaptchaResult").value;     //get entered result
    correctans = document.getElementById("result4JS").value;    //get correct result
    if (nam != correctans) {
        document.getElementById("mathresult").innerHTML = "Incorrect result! ";
        flag = 1;
    }
    else {
        document.getElementById("mathresult").innerHTML = "";
    }
    if (!document.getElementById("tncchkbx").checked) {
        document.getElementById("tncErrorLbl").innerHTML = "Please agree to terms and conditions";
        flag = 1;
    }
    else {
        document.getElementById("tncErrorLbl").innerHTML = "";
    }

    if (flag == 1) {
        return false;
    }
    return true;
}

function onCancelclick() {
    //document.getElementById("fullNameTxtBox").value = "";
    //document.getElementById("emailLabel").value = "";
    //document.getElementById("descriptionTextBox").value = "";
    // document.getElementById("expectedTextBox").value = "";
    document.getElementById("MathCaptchaResult").value = "";
    //document.getElementById("tncChkBox").checked = false;
    // window.location.href = "Default.aspx";
}

function ismaxlength(objTxtCtrl, nLength) {
    if (objTxtCtrl.getAttribute && objTxtCtrl.value.length > nLength)
        objTxtCtrl.value = objTxtCtrl.value.substring(0, nLength)

    if (document.all)
        document.getElementById('lblCaption').innerText = objTxtCtrl.value.length + ' Out Of ' + nLength;
    else
        document.getElementById('lblCaption').textContent = objTxtCtrl.value.length + ' Out Of ' + nLength;

}

function validdateEmail() {

    var emailPattern = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@(usc(\.[-a-z0-9_]+)*\.(edu)|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;
    if (!emailPattern.test(document.getElementById("mailTxtBox").value)) {
        document.getElementById("mailErrorLabel").innerHTML = "Please enter valid USC email id";
        return false;
    }
    else {
        document.getElementById("mailErrorLabel").innerHTML = "";
        return true;
    }

}

function enableForm() {
    document.getElementById("form1").disabled = false;
}

window.onload = enableForm;