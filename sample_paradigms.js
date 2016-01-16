window.addEventListener('DOMContentLoaded', init, false)
function init() {
    var sections = document.getElementsByClassName('tables');
    var sectionsLength = sections.length;
    for (i = 0; i < sectionsLength; i++) {
        sections[i].parentNode.getElementsByTagName('h3')[0].addEventListener('click', toggle, false);
    }
}
function toggle () {
    var current = this.parentNode.getElementsByClassName('tables')[0];
    if (current.style.display == 'none') {
        current.style.display = 'block';
    } else {
        current.style.display = 'none';
    }
}