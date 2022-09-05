$(function () {
    window.addEventListener('message', function(event) {
        var v = event.data     
        
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

window.addEventListener('message', function(event) {

    let wallet = event.data.wallet;
    let blackMoney = event.data.black_money;
    let bank = event.data.bank;
    let coins = event.data.coins;

    $(".dbank").text(bank);

    $(".dwallet").text(wallet);

    $(".dblack").text(blackMoney);

    $(".dcoins").text(coins);
    let display = false;

});

$(function () {
	window.addEventListener('message', function (event) {

		switch (event.data.action) {
			case "showcash":
                $('.wallet').fadeIn()
                setTimeout(() => {
                    $('.wallet').fadeOut()
                }, 3000)
            break;

            case "showbank":
                $('.bank').fadeIn()
                setTimeout(() => {
                    $('.bank').fadeOut()
                }, 3000)
            break;

            case "showblack":
                $('.black').fadeIn()
                setTimeout(() => {
                    $('.black').fadeOut()
                }, 3000)
            break;

            case "showcoins":
                $('.coins').fadeIn()
                setTimeout(() => {
                    $('.coins').fadeOut()
                }, 3000)
            break;

		}
	})
})