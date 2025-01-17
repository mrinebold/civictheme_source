@p0 @civictheme @civictheme_promo_card
Feature: Promo card fields

  @api
  Scenario: Paragraph type appears in the paragraph types page
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type"
    Then I should see the text "Promo card" in the "civictheme_promo_card" row

  @api
  Scenario: Content paragraph exists with fields.
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type/civictheme_promo_card/fields"
    And I should see the text "field_c_p_title" in the "Title" row
    And I should see the text "field_c_p_theme" in the "Theme" row
    And I should see the text "field_c_p_summary" in the "Summary" row
    And I should see the text "field_c_p_link" in the "Link" row
    And I should see the text "field_c_p_image" in the "Image" row
    And I should see the text "field_c_p_date" in the "Date" row
    And I should see the text "field_c_p_topics" in the "Topics" row

  @api @javascript
  Scenario: Show relevant fields depending on the 'Content type' and 'field Banner components' selected
    Given I am logged in as a user with the "Site Administrator" role
    When I visit "node/add/civictheme_page"
    And I fill in "Title" with "[TEST] Page fields"
    And I click on ".field-group-tabs-wrapper .horizontal-tab-button-1 a" element
    And I click on ".field--name-field-c-n-banner-components .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait for AJAX to finish
    And I press the "field_c_n_banner_components_civictheme_manual_list_add_more" button
    And I wait for AJAX to finish
    And I click on ".field--name-field-c-n-banner-components .field--name-field-c-p-list-items .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait for AJAX to finish
    And I press the "field_c_n_banner_components_0_subform_field_c_p_list_items_civictheme_promo_card_add_more" button
    And I wait for AJAX to finish
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_theme]']" element
    And the "field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_theme]" field should contain "light"
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]']" element
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]'].required" element
    And should see an ".field--name-field-c-p-image #field_c_p_image-media-library-wrapper-field_c_n_banner_components-0-subform-field_c_p_list_items-0-subform" element
    And should see an "textarea[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]']" element
    And should not see an "textarea[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]'].required" element
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_date][0][value][date]']" element
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]']" element
    And should see an "input[name='field_c_n_banner_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]'].required" element

  @api @javascript
  Scenario: Show relevant fields depending on the 'Content type' and 'field Components' selected
    Given I am logged in as a user with the "Site Administrator" role
    When I visit "node/add/civictheme_page"
    And I fill in "Title" with "[TEST] Page fields"
    And I click on ".field--name-field-c-n-components .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait for AJAX to finish
    And I press the "field_c_n_components_civictheme_manual_list_add_more" button
    And I wait for AJAX to finish
    And I click on ".field--name-field-c-n-components .field--name-field-c-p-list-items .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait for AJAX to finish
    And I press the "field_c_n_components_0_subform_field_c_p_list_items_civictheme_promo_card_add_more" button
    And I wait for AJAX to finish
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_theme]']" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]']" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]'].required" element
    And should see an ".field--name-field-c-p-image #field_c_p_image-media-library-wrapper-field_c_n_components-0-subform-field_c_p_list_items-0-subform" element
    And should see an "textarea[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]']" element
    And should not see an "textarea[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]'].required" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_date][0][value][date]']" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]']" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]'].required" element
    And should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_topics][0][target_id]']" element
