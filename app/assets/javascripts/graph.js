$(document).ready(function () {

  $('footer').css('margin-top',
    $(document).height()
    - ( $('header').height() + $('div').height() )
    - $('footer').height()
  );
});
