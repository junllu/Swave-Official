(function($){
 $(function(){

  $('.button-collapse').sideNav();
  $('.parallax').parallax();

 }); // end of document ready
}) (jQuery); // end of jQuery name space

$(document).ready(function(){
  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  $('.modal-trigger').leanModal();
  
  $('.main').onepage_scroll({
  sectionContainer: "section",
  easing: "ease",
  animationTime: 200,
  responsiveFallback: false,
  loop: false
  });

    $(document).ready(function() {
    $('select').material_select();
  });
    
      $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
});
});
