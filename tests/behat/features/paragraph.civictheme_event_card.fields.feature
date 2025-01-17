@p0 @civictheme @civictheme_event_card
Feature: Event Card fields

  @api
  Scenario: Paragraph type appears in the paragraph types page
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type"
    Then I should see the text "Event card" in the "civictheme_event_card" row

  @api
  Scenario: Event card paragraph exists with fields.
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type/civictheme_event_card/fields"
    And I should see the text "field_c_p_theme" in the "Theme" row
    And I should see the text "field_c_p_title" in the "Title" row
    And I should see the text "field_c_p_image" in the "Image" row
    And I should see the text "field_c_p_link" in the "Link" row
    And I should see the text "field_c_p_summary" in the "Summary" row
    And I should see the text "field_c_p_date" in the "Date" row
    And I should see the text "field_c_p_topic" in the "Topic" row
    And I should see the text "field_c_p_location" in the "Location" row

  @api @javascript
  Scenario: Show relevant fields depending on the 'Content type' selected
    Given I am logged in as a user with the "Site Administrator" role
    When I visit "node/add/civictheme_page"
    And I fill in "Title" with "[TEST] Page fields"
    And I click on ".field--name-field-c-n-components .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait 1 second
    And I press the "field_c_n_components_civictheme_manual_list_add_more" button
    And I wait for AJAX to finish
    And I should see an ".js-form-item-field-c-n-components-0-subform-field-c-p-title-0-value" element
    And I should see an ".js-form-item-field-c-n-components-0-subform-field-c-p-list-link-above-0-uri" element
    And I should see an ".js-form-item-field-c-n-components-0-subform-field-c-p-column-count select.required" element
    And I should see an "select[name='field_c_n_components[0][subform][field_c_p_column_count]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_fill_width][value]']" element
    And I click on ".field--name-field-c-p-list-items .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait 1 second
    And I press the "field_c_n_components_0_subform_field_c_p_list_items_civictheme_event_card_add_more" button
    And I wait for AJAX to finish
    Then the "field_c_n_components[0][subform][field_c_p_theme]" field should contain "light"
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_title][0][value]'].required" element
    And I should see an ".field--name-field-c-p-image.field--widget-media-library-widget .js-media-library-widget" element
    And I should see an ".field--name-field-c-p-image.field--widget-media-library-widget .js-media-library-widget.required" element
    And I should see an "textarea[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]']" element
    And I should not see an "textarea[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_summary][0][value]'].required" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_date][0][value][date]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][uri]'].required" element
    And I should not see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_link][0][title]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_topic][0][target_id]']" element
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_location][0][value]']" element
    And the "field_c_n_components[0][subform][field_c_p_theme]" field should contain "light"
