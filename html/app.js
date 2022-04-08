$(function () {
    window.addEventListener('message', function(event) {
        var v = event.data     

        let wallet = event.data.wallet;
        let coins = event.data.coins;
        let bank = event.data.bank;
        let black_money = event.data.black_money;

        $(".dbank").text(bank);
        $(".dwallet").text(wallet);
        $(".dcoins").text(coins);
        $(".dblack").text(black_money);
        
       let display = false;

        switch (v.action) {

            case "showwallet":
                $('.wallet').fadeIn()
                setTimeout(() => {
                    $('.wallet').fadeOut()
                }, v.time)
            break;

            case "showbank":
                $('.bank').fadeIn()
                setTimeout(() => {
                    $('.bank').fadeOut()
                }, v.time)
            break;

            case "showcoins":
                $('.coins').fadeIn()
                setTimeout(() => {
                    $('.coins').fadeOut()
                }, v.time)
            break;

            case "showblack":
                $('.black').fadeIn()
                setTimeout(() => {
                    $('.black').fadeOut()
                }, v.time)
            break;
		}

    })
})