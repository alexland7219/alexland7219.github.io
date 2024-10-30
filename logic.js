var session;
var itemList = [];

const progressionMap = {
    "progressive_glove": ["power_glove", "titans_mitt"],
    "progressive_sword": ["fighters_sword", "master_sword", "tempered_sword", "golden_sword"],
    "progressive_armor": ["blue_mail", "red_mail"],
    "progressive_shield": ["fighters_shield", "red_shield", "mirror_shield"]
};


document.addEventListener("DOMContentLoaded", async () => {

    session = pl.create();

    consultModule()
})

async function consultModule() {
    var program = await fetch("logic-module.pl")
    var progText = await program.text();

    session.consult(progText)

}


function checkProgression(item, isAdding) {
    if (!progressionMap[item]) return item;

    const currentItems = progressionMap[item];
    let currentIndex = currentItems.findIndex(level => itemList.includes(level));

    if (isAdding) {
        return currentIndex < currentItems.length - 1 ? currentItems[currentIndex + 1] : currentItems[currentIndex];
    } else {
        return currentIndex > 0 ? currentItems[currentIndex - 1] : currentItems[0];
    }
}


function prologAtom(str) {
    const ret = str.toLowerCase().replace(/[\s-]/g, '_').replace(/['"]/g, '')
    if (ret.startsWith("_")) return ret.slice(1)
    return ret
}

function addItem(item) {
    var itemname = prologAtom(item)
    itemname = checkProgression(itemname, true)

    itemList.push(itemname)
    //session.consult(`have(${itemname}).`, {reconsult: false})

    refreshAvail(itemname)
}

function removeItem(item) {
    
    var itemname = prologAtom(item)
    itemname = checkProgression(itemname, false)

    itemList = itemList.filter(i => i !== itemname)

    checkUnavail(itemname)
}

function checkUnavail(prologItem) {
    /*
    var queryStr = ""
    itemList.forEach(item => {
        queryStr += `asserta(have(${item})), `
    })

    queryStr += `would_be_avail(${prologItem}, X).`
    */

    const query = `retract(have(${prologItem})), would_be_avail(${prologItem}, X).`

    session.query(query)
    session.answers(x => {
        const ans = pl.format_answer(x)
        if (ans == "false" || ans == "X = []") return;
        
        // Since the result is a prolog list (js array), we want to convert to array
        const removeLocs = ans.slice(5, -1).split(",")
        
        removeLocs.forEach((loc) => {
            const elem = document.getElementById(loc)
            elem.classList.remove("list-group-item-success")
        })

    }, 250)
}

function refreshAvail(prologItem) {
    /*
    var queryStr = ""

    itemList.forEach(item => {
        queryStr += `asserta(have(${item})), `
    })

    queryStr += `avail(X).`
    */
    const query = `assertz(have(${prologItem})), avail(X).`

    session.query(query)
    session.answers(x => {
        const ans = pl.format_answer(x)
        if (ans == "false") return;

        const id = ans.split(" = ")[1] // Remove 'X = '


        const elem = document.getElementById(id);
        elem.classList.add("list-group-item-success")
    }, 250)

}

function clearAvail() {
    const locs = document.querySelectorAll('li.list-group-item-success');

    locs.forEach((loc) => {
        loc.classList.remove("list-group-item-success")
    });
}