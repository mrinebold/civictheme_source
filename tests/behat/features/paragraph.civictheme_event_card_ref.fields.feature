@p0 @civictheme @civictheme_event_card_ref
Feature: Event reference card fields

  @api
  Scenario: Paragraph type appears in the paragraph types page
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type"
    Then I should see the text "Event reference card" in the "civictheme_event_card_ref" row

  @api
  Scenario: Content paragraph exists with fields.
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type/civictheme_event_card_ref/fields"
    And I should see the text "field_c_p_reference" in the "Reference" row
    And I should see the text "field_c_p_theme" in the "Theme" row

  @api
  Scenario: Event reference card paragraph field_c_p_reference fields settings.
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type/civictheme_event_card_ref/fields/paragraph.civictheme_event_card_ref.field_c_p_reference"
    And the "Label" field should contain "Reference"
    Then the option "Default" from select "Reference method" is selected
    Then the "Create referenced entities if they don't already exist" checkbox should not be checked
    And the "Event" checkbox should be checked

  @api
  Scenario: Manual list paragraph field_c_p_list_items fields settings.
    Given I am logged in as a user with the "Administrator" role
    When I go to "admin/structure/paragraphs_type/civictheme_manual_list/fields/paragraph.civictheme_manual_list.field_c_p_list_items"
    And the "Label" field should contain "List items"
    Then the option "Default" from select "Reference method" is selected
    Then the "Include the selected below" checkbox should be checked
    And the "Event reference card" checkbox should be checked

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
    Then I click on ".field--name-field-c-p-list-items .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait 1 second
    And I press the "field_c_n_components_0_subform_field_c_p_list_items_civictheme_event_card_ref_add_more" button
    And I wait for AJAX to finish
    And I should see an "input[name='field_c_n_components[0][subform][field_c_p_list_items][0][subform][field_c_p_reference][0][target_id]'].required" element
    And the "field_c_n_components[0][subform][field_c_p_theme]" field should contain "light"
