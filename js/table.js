// csv to table
function csvToTable(csv) {

    csv = csv.split("\n").slice(1,-1).join("\n")

    var lines = csv.split('\n');
    var table = document.createElement('table');

    for (var i = 0; i < lines.length; i++) {
        var row = document.createElement('tr');
        var cells = lines[i].split(/,|;/g);
        cells = cells.map(e=>e.trim())
        
        for (var j = 0; j < cells.length; j++) {
            var cell = document.createElement(i === 0 ? 'td' : 'td');
            cell.textContent = cells[j];

        row.appendChild(cell);
        }

        table.appendChild(row);
    }
    
    
    return table;
}


function border(td){
    td.style.border = "solid 1px #50fa7b"
    td.style.opacity = '1'
}

function border2(td){
    td.style.border = "dashed 2px #ff5555"
    // td.style.border = "dashed 1px #ff5555"
    td.style.opacity = '1'
}

function renderTable(table, obj){

    let trs = Array.from(table.querySelectorAll("tr"))
    let tds = Array.from(table.querySelectorAll("td"))

    trs.map((tr,i) => tr.n = i )
    tds.map((td,i) => td.n = i )

    let cols = obj.cols
    let rows = obj.rows

    if(cols==undefined && rows){
        rows.map(row=>{
            Array.from(trs[row].children).map(cell=>{
                border(cell)
            })
        })

        table.classList.add('table-invisible')
    }

    if(rows==undefined && cols){
        cols.map(col=>{
            for(let i=0;i<trs.length;i++){
                if(i>0)
                border(trs[i].children[col])
            }
        })
        table.classList.add('table-invisible')
    }

    if(rows && cols){
        rows.map(col=>{
            cols.map(row=>{
                border(trs[col].children[row])
            })
        })
        table.classList.add('table-invisible')
    }

    if(obj.cells){
        obj.cells.map(cell=>{ 
            border2(tablePosition(table, cell[1], cell[0]))
        })
        
        if(!table.getAttribute("transparency"))
            table.classList.add('table-invisible')
    }
    
}

function tablePosition(table, row, col){
    return table.querySelectorAll("tr")[row].querySelectorAll('td')[col]
}

function renderTables(){
    let tables = Array.from(document.querySelectorAll(".table"))

    tables.map(table=>{

        let t = csvToTable(table.innerHTML)
        
        // t.setAttribute('ok', 1)

        if(table.getAttribute('transparency') == "false")
            t.setAttribute('transparency', 'false')

        t.id = table.id
        let data_name = table.getAttribute('data-name')
        let class_name = table.classList.value

        let obj = {}
        if(table.getAttribute('rows') != null){
            rows = table.getAttribute('rows')
            obj['rows'] = eval(rows)
        }
        if(table.getAttribute('cols') != null){
            cols = table.getAttribute('cols')
            obj['cols'] = eval(cols)
        }
        if(table.getAttribute('cells') != null){
            cells = table.getAttribute('cells')
            obj['cells'] = eval(cells)
        }
    
        obj['color'] = "#50fa7b"
        
        t.setAttribute('class',class_name )
        
        if(data_name)
            t.setAttribute('data-name', data_name)
    
        renderTable(t, obj)
    
        table.outerHTML = t.outerHTML
    
    })
}

function tag_sql(){
    Array.from(document.querySelectorAll('sql')).map(sql_tag=>{
        let cont = sql_tag.innerHTML
        cont = cont.replace(/  /g, '' )
        let d = document.createElement('div')
        let t = `<pre><code class="language-sql full">${cont.trim()}</code></pre>`
        d.innerHTML = t
        sql_tag.outerHTML = d.outerHTML
        // console.log(cont.split("\t"))
    })
    // Prism.highlightAll()
}

setTimeout(()=>{
    renderTables()
    tag_sql()
    Prism.highlightAll()
},100)
