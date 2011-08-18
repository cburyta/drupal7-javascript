<?php

/*
This is taken directly from http://drupal.org/node/752056
*/

/**
 * AJAX-enabled select element causes replacement of a set of checkboxes
 * based on the selection.
 */
function demo_form($form, &$form_state) {

  drupal_add_js(array('somevalue' => '5555555555'), 'setting');
  drupal_add_js(drupal_get_path('module', 'd7jsmod') . '/js/demo-form-behaviors.js');
  drupal_add_css(drupal_get_path('module', 'd7jsmod') . '/css/demo-form-behaviors.css');

  $default = !empty($form_state['values']['howmany']) ? $form_state['values']['howmany'] : 1;

  $form['howmany_select'] = array(
    '#title'         => t('How many checkboxes do you want?'),
    '#type'          => 'select',
    '#options'       => array(1 => 1, 2 => 2, 3 => 3, 4 => 4),
    '#default_value' => $default,
    '#ajax'          => array(
      'callback'  => 'demo_form_autocheckboxes_callback',
      'wrapper' => 'checkboxes-div',
      ),
    );

    $form['checkboxes_fieldset'] = array(
      '#title' => t("Generated Checkboxes"),
      // The prefix/suffix provide the div that we're replacing, named by
      // #ajax['wrapper'] above.
      '#prefix' => '<div id="checkboxes-div">',
      '#suffix' => '</div>',
      '#type' => 'fieldset',
      '#description' => t('This is where we get automatically generated checkboxes'),
    );

    $num_checkboxes = !empty($form_state['values']['howmany_select']) ? $form_state['values']['howmany_select'] : 1;
    for ($i=1; $i<=$num_checkboxes; $i++) {
      $form['checkboxes_fieldset']["checkbox$i"] = array(
        '#type'   => 'checkbox',
        '#title'  => "Checkbox $i",
      );
    }

    $form['submit'] = array(
      '#type'  => 'submit',
      '#value' => t('Submit'),
    );

    return $form;
  }

/**
 * Callback element needs only select the portion of the form to be updated.
 * Since #ajax['callback'] return can be HTML or a renderable array (or an
 * array of commands), we can just return a piece of the form.
 */
function demo_form_autocheckboxes_callback($form, $form_state) {
  return $form['checkboxes_fieldset'];
}