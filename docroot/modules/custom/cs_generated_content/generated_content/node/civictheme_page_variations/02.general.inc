<?php

/**
 * @file
 * Variations for CivicTheme Page nodes.
 */

use Drupal\cs_generated_content\CsGeneratedContentHelper;

/**
 * Page, General.
 */
function _cs_generated_content_create_node_civictheme_page__variations__general() {
  /** @var \Drupal\cs_generated_content\CsGeneratedContentHelper $helper */
  $helper = CsGeneratedContentHelper::getInstance();

  $variations = [
    [
      'title' => 'Default values',
    ],
    [
      'title' => 'Summary',
      'summary' => $helper::staticPlainParagraph(),
    ],
    [
      'title' => 'Summary, Content',
      'summary' => $helper::staticPlainParagraph(),
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Both spaces, Content',
      'summary' => $helper::staticPlainParagraph(),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (1), Both spaces, Content',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 1),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (3), Both spaces, Content',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 3),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (1), Thumbnail, Both spaces, Content',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 1),
      'thumbnail' => $helper::staticMediaItem('civictheme_image'),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (1), Thumbnail, Both spaces, Content, Show Last Updated Date, Not Custom Date',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 1),
      'thumbnail' => $helper::staticMediaItem('civictheme_image'),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'show_last_updated' => TRUE,
      'custom_updated_date' => '2022-07-01',
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (1), Thumbnail, Both spaces, Content, Show Last Updated Date',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 1),
      'thumbnail' => $helper::staticMediaItem('civictheme_image'),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'show_last_updated' => TRUE,
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
    [
      'title' => 'Summary, Topics (1), Thumbnail, Both spaces, Content, Uncheck Last Updated Date, Shows Custom Date',
      'summary' => $helper::staticPlainParagraph(),
      'topics' => $helper::staticTerms('civictheme_topics', 1),
      'thumbnail' => $helper::staticMediaItem('civictheme_image'),
      'vertical_spacing' => $helper::civicthemeVerticalSpacingTypeBoth(),
      'show_last_updated' => FALSE,
      'custom_updated_date' => '2022-07-01',
      'components' => _cs_generated_content_create_node_civictheme_page__variations_components_content_default(),
    ],
  ];

  return $variations;
}
