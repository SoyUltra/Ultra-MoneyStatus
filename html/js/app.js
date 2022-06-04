$(() => {
  window.addEventListener("message", (event) => {
    const data = event.data;
    switch (data.action) {
      case "UpdateMoney":
        switch (data.account) {
          case "money":
            $(".dwallet").text(`${data.icon} ${data.money}`);
            $(".wallet").fadeIn();
            setTimeout(() => {
              $(".wallet").fadeOut();
            }, data.time);
            break;
          case "bank":
            $(".dbank").text(`${data.icon} ${data.money}`);
            $(".bank").fadeIn();
            setTimeout(() => {
              $(".bank").fadeOut();
            }, data.time);
            break;
          case "coins":
            $(".dcoins").text(`${data.icon} ${data.money}`);
            $(".coins").fadeIn();
            setTimeout(() => {
              $(".coins").fadeOut();
            }, data.time);
            break;
          case "black_money":
            $(".dblack").text(`${data.money}`);
            $(".black").fadeIn();
            setTimeout(() => {
              $(".black").fadeOut();
            }, data.time);
            break;
        }

        break;
    }
  });
});
