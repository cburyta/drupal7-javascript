// Using the closure to map jQuery to $. 
(function ($) {

  function indicateChecked()
  {
    if($(this).is(':checked'))
    {
      $(this).parent().addClass('form-item-checkbox-ischecked');
    }
    else
    {
      $(this).parent().removeClass('form-item-checkbox-ischecked');
    }
  }


  // Store our function as a property of Drupal.behaviors.
  Drupal.behaviors.d7jsmodCheckboxs = {
    attach: function (context, settings) {

      console.log('attach - Drupal.behaviors.d7jsmodCheckboxs');
      console.log(settings)

      // Find all the secure links inside context that do not have our processed class.
      $('input[type=checkbox]', context)
        // Only process elements once.
        .once('d7js-processed')
        // Then stick some text into the link denoting it as secure.
        .click( indicateChecked )

        .each( indicateChecked )
    }
  }



  // You could add additional behaviors here.
  Drupal.behaviors.d7jsmodAttachDetach = {
    attach: function (context, settings) { console.log('attach - Drupal.behaviors.d7jsmodAttachDetach') },
    detach: function (context, settings) { console.log('detach - Drupal.behaviors.d7jsmodAttachDetach') }
  };

}(jQuery));