const openForm = () => {
    const form = document.getElementById('hidden')
    if(form.style.display == "none"){
        form.style.display = "block"
    }else{
    document.getElementById('hidden').style.display = "none"
    }
}