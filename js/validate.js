var form = document.querySelector("form");

function validateEmail(email) {
  var re = /\S+@\S+\.\S+/;
  return re.test(email);
}
function validated() {
  var isValid = true;
  document
    .querySelectorAll("input.required")
    .forEach(function (element, index) {
      if (!element.value || element.value.trim().length === 0) {
        element.style.backgroundColor = "#ffc8d2";
        element.style.borderColor = "#dc3545";
        var titleName = element.dataset.name ? element.dataset.name : "";
        var errMsg = element.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "Vui lòng nhập " + titleName;
        }
        isValid = false;
      } else {
        element.style.backgroundColor = "";
        element.style.borderColor = "";
        var errMsg = element.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "";
        }
      }
    });
  //   document
  //     .querySelectorAll("select.required")
  //     .forEach(function (element, index) {
  //       if (!element.value || element.value.trim().length === 0) {
  //         element.style.backgroundColor = "#ffc8d2";
  //         element.style.borderColor = "#dc3545";
  //         var titleName = element.dataset.name ? element.dataset.name : "";
  //         var errMsg = element.nextElementSibling;
  //         if (errMsg && errMsg.classList.contains("err-msg")) {
  //           errMsg.innerHTML = titleName + " là trường bắt buộc nhập.";
  //         }
  //         isValid = false;
  //       } else {
  //         element.style.backgroundColor = "";
  //         element.style.borderColor = "";
  //         var errMsg = element.nextElementSibling;
  //         if (errMsg && errMsg.classList.contains("err-msg")) {
  //           errMsg.innerHTML = "";
  //         }
  //       }
  //     });
  if (isValid == true) {
    // Kiểm tra tính hợp lệ của email
    var emailInput = form.querySelector('input[name="email"]');
    console.log(emailInput);
    if (!validateEmail(emailInput.value)) {
      isValid = false;
      emailInput.style.backgroundColor = "#ffc8d2";
      emailInput.style.borderColor = "#dc3545";

      var errMsg = emailInput.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "Email không hợp lệ.";
      }
    } else {
      emailInput.style.backgroundColor = "";
      emailInput.style.borderColor = "";
      var errMsg = emailInput.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "";
      }
    }

    // Kiểm tra tính hợp lệ của Phone
    var phoneInput = form.querySelector('input[name="phone"]');
    var phoneLenght = $("#phone").val().length;
    var phoneNumber = $("#phone").val();
    console.log(phoneNumber);
    if (phoneLenght < 10 || phoneLenght > 11) {
      isValid = false;
      phoneInput.style.backgroundColor = "#ffc8d2";
      phoneInput.style.borderColor = "#dc3545";
      var errMsg = phoneInput.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "Nhập số điện thoại hợp lệ";
      }
    } else {
      // Kiem tra nha mang
      var listPrefix = ["3", "5", "7", "8"];
      if (
        phoneNumber.charAt(0) != "0" ||
        listPrefix.indexOf(phoneNumber.charAt(1)) < 0
      ) {
        isValid = false;
        phoneInput.style.backgroundColor = "#ffc8d2";
        phoneInput.style.borderColor = "#dc3545";
        var errMsg = phoneInput.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "Số điện thoại không thuộc nhà mạng nào";
        }
      } else {
        phoneInput.style.backgroundColor = "";
        phoneInput.style.borderColor = "";
        var errMsg = phoneInput.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "";
        }
      }
    }
    // Kiểm tra tính hợp lệ của PassWord
    var passInput = form.querySelector('input[name="password"]');
    var passLenght = $("#password").val().length;
    var pass = $("#password").val();
    console.log(pass);
    var passInputConfirm = form.querySelector('input[name="password2"]');

    if (passLenght < 8) {
      isValid = false;
      passInput.style.backgroundColor = "#ffc8d2";
      passInput.style.borderColor = "#dc3545";
      var errMsg = passInput.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "Mật khẩu phải có ít nhất 8 ký tự.";
      }
    } else {
      let pattern =
        /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{10,}$/g;

      if (pass.match(pattern) == null) {
        // Kiem tra ki tu hoa, so, kt dac biet

        isValid = false;
        passInput.style.backgroundColor = "#ffc8d2";
        passInput.style.borderColor = "#dc3545";
        var errMsg = passInput.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "Mật khẩu phải có ký tự, số, ký tự đặc biệt";
        }
      } else {
        passInput.style.backgroundColor = "";
        passInput.style.borderColor = "";
        var errMsg = passInput.nextElementSibling;
        if (errMsg && errMsg.classList.contains("err-msg")) {
          errMsg.innerHTML = "";
        }
      }
    }
    if (passInput.value === passInputConfirm.value) {
      passInputConfirm.style.backgroundColor = "";
      passInputConfirm.style.borderColor = "";
      var errMsg = passInputConfirm.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "";
      }
    } else {
      isValid = false;
      passInputConfirm.style.backgroundColor = "#ffc8d2";
      passInputConfirm.style.borderColor = "#dc3545";
      var errMsg = passInputConfirm.nextElementSibling;
      if (errMsg && errMsg.classList.contains("err-msg")) {
        errMsg.innerHTML = "Mật khẩu xác nhận không khớp.";
      }
    }
  }
  return isValid;
}

$("form").on("submit", function (e) {
  var result = validated();
  //console.log("vali:" + result);
  if (!result || result == null) {
    e.preventDefault();
  }
});
