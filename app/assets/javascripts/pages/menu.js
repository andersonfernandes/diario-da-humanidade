$(document).on('page:change', function() {
  $('#search-link').on('click', function() {
    $('#search-input').fadeToggle( "fast" );
  });
});
