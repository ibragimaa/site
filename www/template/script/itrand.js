$( document ).ready(function () { 
    $('.button-collapse').sideNav(); 
    $('.button-collapse').click(removeOverlay); 
    $('.parallax').parallax();
    $('.modal').modal({
        opacity:.5,
        inDuration: 400,
        outDuration: 400,
        startingTop: '70%',
    });
})
function removeOverlay() { 
    $('div[id^=sidenav-overlay]').remove(); 
}
       