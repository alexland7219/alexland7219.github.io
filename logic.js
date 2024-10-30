var session;

document.addEventListener("DOMContentLoaded", async () => {

    session = pl.create();

    var program = await fetch("logic-module.pl")
    var progText = await program.text();

    session.consult(progText)
})

function prologAtom(str) {
    const ret = str.toLowerCase().replace(/[\s-]/g, '_').replace(/['"]/g, '')
    if (ret.startsWith("_")) return ret.slice(1)
    return ret
}

function addItem(item) {
    var itemname = prologAtom(item)
    session.consult(`have(${itemname}).`, {reconsult: true})

    refreshAvail()
}

function refreshAvail() {

    session.query(`avail(X).`)
    session.answers(x => {
        const ans = pl.format_answer(x)
        console.log(ans)
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