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

function toggleSpoiler(button) {
    const spoilerText = button.previousElementSibling;
    if (window.getComputedStyle(spoilerText).display === "none") {
        spoilerText.style.display = "inline";
        button.textContent = "Hide Spoiler";
    } else {
        spoilerText.style.display = "none";
        button.textContent = "View Spoiler";
    }
}

function toggleAllSpoilers(mainbtn) {
    const buttons = document.querySelectorAll('button.btn.btn-primary.btn-sm.mx-1[onclick="toggleSpoiler(this)"]');

    buttons.forEach((button) => {
        if (!(mainbtn.textContent == "View all spoilers") != (window.getComputedStyle(button.previousElementSibling).display == "none")) toggleSpoiler(button)
    });

    if (mainbtn.textContent == "View all spoilers"){
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
        toggleSpoiler(firstButton)
    
    } else {
        listItem.classList.remove("bg-success", "text-white");
        button.textContent = "Done";
        button.classList.add("btn-success");
        button.classList.remove("btn-danger");
    
        toggleSpoiler(firstButton)
    }

}


function toggleAvailableChecks()
{
    const btnElem = document.getElementById("availChecksBtn");
    if (btnElem.classList.contains("active"))
    {
        // Already active
        btnElem.textContent = "Show available checks";
        btnElem.classList.remove("active");
    }
    else {
        btnElem.textContent = "Hide available checks";
        btnElem.classList.add("active");
    
    }
}

document.getElementById('spoiler').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        
        reader.onload = function(e) {
            try {
                const json = JSON.parse(e.target.result);
                console.log('Loaded JSON:', json);
                
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
    console.log("hi")

    showAlert("Spoiler log loaded successfully!");
});

// Example function to process the JSON data
function processJsonData(data) {

    for (section in data){
        if (["Bosses", "Shops", "meta", "playthrough"].includes(section)) continue;

        for (loc in data[section]){
            // location
            const item = document.getElementsByName(loc.split(':')[0])[0];
            // load spoiler
            const spoilerText = item.getElementsByClassName('spoiler-text')[0];
            spoilerText.textContent = data[section][loc].split(':')[0].replace(/([A-Z])/g, ' $1');

            if (spoilerText.textContent.startsWith(" Crystal")){
                console.log("hey")
                spoilerText.textContent = spoilerText.textContent.slice(0, -1) + " " + spoilerText.textContent.slice(-1)
            }
        }

    }
}