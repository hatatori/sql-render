let divall = Array.from(document.body.querySelectorAll('[page]'))

divall.map(div => render(div) )

multiple_all()

function render(div){
    let page = div.getAttribute('page')
    fetch(page)
    .then(e=>e.text())
    .then(e=> {
        let d = document.createElement('div')
        d.innerHTML = e
        Array.from(d.querySelectorAll('script')).map(el=>{
            document.head.appendChild(el)
            eval(el.innerHTML)
        })
        try{
            div.outerHTML = e
        }catch(e){}
        // multiple_all()
        renders()
    })
}


function renders(){
    multiple_all()   
    let pages = Array.from(document.querySelectorAll('[page]'))
    pages.map(div=>{
        // render(div)
    })
}

function multiple_all(){
    Array.from(document.querySelectorAll("[multiple]")).map(e=>{
        function multiple(div, n=2){
            div.removeAttribute('multiple')
            for(i=0;i<n;i++){
                let t = div_multiple.cloneNode(true)
                t.removeAttribute('multiple')
                div.parentElement.appendChild(t)
            }
        }

        let div_multiple = e
        let quant = e.getAttribute('multiple')|0

        multiple(div_multiple,quant-1)
    })
}

function toggles(div, arr){
    arr.map(e=>div.classList.toggle(e))
}