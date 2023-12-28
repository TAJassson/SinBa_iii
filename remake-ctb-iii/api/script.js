$(document).ready(function() {
    $('#submitButton').click(function() {
        var selectedLang = $('#languageSelect').val();
        window.location.href = 'home.php?lang=' + selectedLang;
    });
});