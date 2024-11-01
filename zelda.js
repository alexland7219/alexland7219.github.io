// Initialization of Locations
document.addEventListener("DOMContentLoaded", async () => {
    try {
        const response = await fetch("locations.json")
        const locdata  = await response.json()

        // Two columns 
        const leftContainer  = document.getElementById("left-col")
        const rightContainer = document.getElementById("right-col")

        for (const section in locdata){

            let trueContainer;
            if (["Equipped", "Light World", "Dark World", "Skull Woods", "Ice Palace", "Turtle Rock", "Special"].includes(section))    
                trueContainer = rightContainer
            else
                trueContainer = leftContainer

            // Left container addition
            const new_div = document.createElement("div");
            new_div.classList.add("mb-4")
            trueContainer.appendChild(new_div)

            const header = document.createElement("h2")
            header.classList.add("mb-4")
            header.textContent = section
            new_div.appendChild(header)
            
            const badgeText = badgeNeeded(section)
            if (badgeText != "NO"){
                const badge = document.createElement("span")
                badge.classList.add("badge", "bg-primary", "ms-2", "small-badge")
                badge.textContent = badgeText

                header.appendChild(badge)
            }

            const inner_div = document.createElement("div")
            inner_div.classList.add("list-group")
            new_div.appendChild(inner_div)

            for (const location in locdata[section]){
                const locname = locdata[section][location]

                const list_item = document.createElement("li")
                list_item.classList.add("list-group-item", "d-flex", "justify-content-between", "align-items-center")
                list_item.id = prologAtom(locname)

                const span = document.createElement("span")
                span.textContent = trimRedundantDescription(locname)

                const button_container = document.createElement("div")
                
                const spoilerSpan = document.createElement("span")
                spoilerSpan.classList.add("spoiler-text")
                spoilerSpan.classList.add("hidden")

                const viewSpoilerButton = document.createElement("button");
                viewSpoilerButton.className = "btn btn-primary btn-sm mx-1";
                viewSpoilerButton.textContent = "View Spoiler";
                //viewSpoilerButton.addEventListener("click", function(e) { toggleSpoilerAux(e) })
                viewSpoilerButton.onclick = function() { toggleSpoiler(this); };

                const doneButton = document.createElement("button");
                doneButton.className = "btn btn-success btn-sm";
                doneButton.textContent = "Done";
                doneButton.onclick = function() { markDone(this); };

                button_container.appendChild(spoilerSpan)
                button_container.appendChild(document.createTextNode(" ")); // Instead of innerHTML
                button_container.appendChild(viewSpoilerButton)
                if (section != "Special"){
                    button_container.appendChild(document.createTextNode(" ")); // Instead of innerHTML                
                    button_container.appendChild(doneButton)    
                }

                list_item.appendChild(span)
                list_item.appendChild(button_container)

                inner_div.appendChild(list_item)
            }
        
        }
    } catch (error) {
        console.error("Error loading config:", error);
    }
    
});

function badgeNeeded(section){
    switch (section){
        case "Hyrule Castle":
            return "H2";
        case "Eastern Palace":
            return "P1";
        case "Desert Palace":
            return "P2";
        case "Tower Of Hera":
            return "P3";
        case "Castle Tower":
            return "A1";
        case "Dark Palace":
            return "D1";
        case "Swamp Palace":
            return "D2";
        case "Skull Woods":
            return "D3";
        case "Thieves Town":
            return "D4";
        case "Ice Palace":
            return "D5"
        case "Misery Mire":
            return "D6"
        case "Turtle Rock":
            return "D7"
        case "Ganons Tower":
            return "A2";
        default:
            return "NO"
    }
}

function trimRedundantDescription(location) {
    let uselessPrefixes = ["Eastern Palace", "Hyrule Castle", "Desert Palace",
        "Castle Tower", "Palace of Darkness", "Swamp Palace", "Skull Woods",
        "Thieves' Town", "Ice Palace", "Misery Mire",  "Turtle Rock", "Ganon's Tower",
        "Tower of Hera"
    ]

    for (let prefix of uselessPrefixes){
        if (location.startsWith(prefix + " -")){
            return location.slice(prefix.length + 3)
        }
    }

    return location
}

function showAlert(message) {
    const alert = document.getElementById("topAlert");
    alert.textContent = message;
    alert.classList.remove("d-none", "fade"); 
    alert.classList.add("show");

    setTimeout(() => {
        alert.classList.remove("show"); 

        setTimeout(() => {
            alert.classList.add("d-none"); // Hide the alert to reclaim space
        }, 150); // Match this timeout to the duration of the fade-out transition
    }, 2000);
}

function toggleSpoiler(button, toDirection = 0) {
    /**
     * 0 for toggle
     * 1 for showing the spoiler always
     * 2 for hiding the spoiler always
     */
    const spoilerText = button.previousElementSibling;

    switch (toDirection){
        case 1:
            spoilerText.style.display = "inline"
            if (spoilerText.classList.contains("hidden")){
                spoilerText.classList.remove("hidden")
                spoilerText.classList.add("visible")
            }
            button.textContent = "Hide Spoiler";
            break
        case 2:
            spoilerText.style.display = "none"
            if (spoilerText.classList.contains("visible")){
                spoilerText.classList.remove("visible")
                spoilerText.classList.add("hidden")
            }

            button.textContent = "View Spoiler";
            break
        default:
            if (spoilerText.classList.contains("hidden"))
                toggleSpoiler(button, 1)
            else
                toggleSpoiler(button, 2)
    }
}

function toggleAllSpoilers(mainbtn) {
    const buttons = document.querySelectorAll('button.btn.btn-primary.btn-sm.mx-1');

    buttons.forEach((button) => {
        if (mainbtn.textContent != "Hide all spoilers") toggleSpoiler(button, 1)
        else toggleSpoiler(button, 2)
    });

    if (mainbtn.textContent != "Hide all spoilers"){
        mainbtn.textContent = "Hide all spoilers"
    }else {
        mainbtn.textContent = "View all spoilers"
    }
}

function markDone(button) {
    const listItem = button.closest("li");
    const firstButton = listItem.querySelector('button.btn.btn-primary');

    if (button.textContent == "Done"){
        listItem.classList.add("bg-success", "text-white");
        button.textContent = "Undo";
        button.classList.remove("btn-success");
        button.classList.add("btn-danger");
        toggleSpoiler(firstButton, 1)

        addItem(listItem.getElementsByClassName('spoiler-text')[0].textContent)
    
    } else {
        listItem.classList.remove("bg-success", "text-white");
        button.textContent = "Done";
        button.classList.add("btn-success");
        button.classList.remove("btn-danger");
        //toggleSpoiler(firstButton, 2)

        removeItem(listItem.getElementsByClassName('spoiler-text')[0].textContent)
    }

}

function toggleAvailableChecks(btnElem)
{
    if (btnElem.classList.contains("active"))
    {
        // Already active
        btnElem.textContent = "Show available checks";
        btnElem.classList.remove("active");

        clearAvail()
    }
    else {
        btnElem.textContent = "Hide available checks";
        btnElem.classList.add("active");
    
        refreshAvail()
    }
}

document.getElementById('spoiler').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        
        reader.onload = function(e) {
            try {
                const json = JSON.parse(e.target.result);
                
                processJsonData(json);
                
            } catch (error) {
                console.error('Error parsing JSON:', error);
                alert('Error loading JSON file. Please make sure it\'s a valid JSON file.');
            }
        };
        
        reader.onerror = function(e) {
            console.error('Error reading file:', e);
            alert('Error reading file');
        };
        
        reader.readAsText(file);
    }

    showAlert("Spoiler log loaded successfully!");
});

function processJsonData(data) {

    for (section in data){
        if (["Bosses", "Shops", "meta", "playthrough"].includes(section)) continue;

        for (loc in data[section]){
            // location
            const item = document.getElementById(prologAtom(loc.split(':')[0]));
            // load spoiler
            const spoilerText = item.getElementsByClassName('spoiler-text')[0];
            spoilerText.textContent = data[section][loc].split(':')[0].replace(/([A-Z])/g, ' $1');

            if (spoilerText.textContent.startsWith(" Crystal")){
                spoilerText.textContent = spoilerText.textContent.slice(0, -1) + " " + spoilerText.textContent.slice(-1)
            }
        }

    }
}