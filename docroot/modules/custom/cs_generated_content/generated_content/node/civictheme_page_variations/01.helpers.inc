<?php

/**
 * @file
 * Helpers for variations for CivicTheme Page nodes.
 */

use Drupal\cs_generated_content\CsGeneratedContentHelper;

/**
 * Variations post-process callback.
 */
function _cs_generated_content_create_node_civictheme_page__variations__post_process($variations) {
  /** @var \Drupal\cs_generated_content\CsGeneratedContentHelper $helper */
  $helper = CsGeneratedContentHelper::getInstance();

  // Add common variation properties to all variations, but only if they were
  // not provided within variations.
  foreach ($variations as &$variation) {
    $variation['title'] = $variation['title'];
    $variation += [
      'status' => TRUE,
      'alias' => '/generated-content/civictheme_page/{title}',
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeNone(),
    ];
  }

  return $variations;
}

/**
 * Default values for Content component to use in variations.
 */
function _cs_generated_content_create_node_civictheme_page__variations_components_content_default() {
  /** @var \Drupal\cs_generated_content\CsGeneratedContentHelper $helper */
  $helper = CsGeneratedContentHelper::getInstance();

  return [
    [
      'type' => 'content',
      'content' => $helper::staticRichText(3),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeNone(),
    ],
  ];
}
