/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const buyBtns = document.querySelectorAll('.js-buy-tickkets')
    const model = document.querySelector('.js-model')
    const modelClose = document.querySelector('.js-model-close')
    const modelContainer = document.querySelector('.js-model-container')
    // Hàm hiện thị form đăng kí
    function showBuy(){
        model.classList.add('open')
    }
    // Hàm ẩn, gỡ bỏ open
    function hideBuy(){
        model.classList.remove('open')
    }
    // Lặp qua từng thẻ trong form
    for(const buyBtn of buyBtns){
        buyBtn.addEventListener('click', showBuy)
    }
    // // Nghe hành vi click
    modelClose.addEventListener('click' , hideBuy)
    model.addEventListener('click', hideBuy)
    modelContainer.addEventListener('click', function(event){
        event.stopPropagation()
    })