$(function () {
    window.addEventListener('message', function(event) {
        var v = event.data     

        // let wallet = event.data.wallet;
        // let coins = event.data.coins;
        // let bank = event.data.bank;
        // let black_money = event.data.black_money;

        // $(".dbank").text(bank);
        // $(".dwallet").text(wallet);
        // $(".dcoins").text(coins);
        // $(".dblack").text(black_money);
        

        switch (v.action) {

            case "UpdateMoney":

                if(v.account == 'money') {
                    $(".dwallet").text(`${v.icon} ${v.money}`)
                    $('.wallet').fadeIn()
                    setTimeout(() => {
                        $('.wallet').fadeOut()
                    }, v.time)
                } else if(v.account == 'bank') {
                    $(".dbank").text(`${v.icon} ${v.money}`)
                    $('.bank').fadeIn()
                    setTimeout(() => {
                        $('.bank').fadeOut()
                    }, v.time)
                } else if(v.account == 'coins') {
                    $(".dcoins").text(`${v.icon} ${v.money}`)
                    $('.coins').fadeIn()
                    setTimeout(() => {
                        $('.coins').fadeOut()
                    }, v.time)
                } else if(v.account == 'black_money') {
                    $(".dblack").text(`${v.money}`)
                    $('.black').fadeIn()
                    setTimeout(() => {
                        $('.black').fadeOut()
                    }, v.time)
                }

            break;

		}

    })
})