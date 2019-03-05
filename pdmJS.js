/*var selectElem = document.getElementById('select');

    selectElem.addEventListener('change', function() {
        var donnees = selectElem.selectedIndex;
      
      parent.location.href='testpdm2.php?continent='+selectElem.options[donnees].value;
      }) 
*/
    //JAVASCRIPT NATIF
function changerContinent(){
    var selectElem = document.getElementById('select');
    var donnees = selectElem.selectedIndex;
    parent.location.href='pdmsmart.php?continent='+selectElem.options[donnees].value;
}

function changerRegion(){
    var selectElem = document.getElementById('select');
    var selectElem2 = document.getElementById('select2');
    var donnees = selectElem.selectedIndex;
    var donnees2 = selectElem2.selectedIndex;
    parent.location.href = 'pdmsmart.php?continent='+selectElem.options[donnees].value+'&region='+selectElem2.options[donnees2].value;
}

    // JQUERY 
$(document).ready(function() {
    $('#tableau').DataTable();
} );


