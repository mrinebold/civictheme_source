@paragraph @civic_card_reference_promo
Feature: Tests the Reference promo card paragraph

  Ensure that Reference promo card paragraph exists and has the expected fields.

  @api
  Scenario: Paragraph type appears in the paragraph types page
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type"
    Then I should see the text "Reference promo card" in the "civic_card_reference_promo" row

  @api
  Scenario: Content paragraph exists with fields.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type/civic_card_reference_promo/fields"
    And I should see the text "field_p_reference" in the "Reference" row
    And I should see the text "field_p_theme" in the "Theme" row

  @api
  Scenario: Reference promo card paragraph field_p_reference fields settings.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type/civic_card_reference_promo/fields/paragraph.civic_card_reference_promo.field_p_reference"
    And the "Label" field should contain "Reference"
    Then the option "Default" from select "Reference method" is selected
    Then the "Create referenced entities if they don't already exist" checkbox should not be checked
    And the "Event" checkbox should be checked
    And the "Page" checkbox should be checked
    And the "Project" checkbox should be checked

  @api
  Scenario: Card container paragraph field_p_cards fields settings.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type/civic_card_container/fields/paragraph.civic_card_container.field_p_cards"
    And the "Label" field should contain "Cards"
    Then the option "Default" from select "Reference method" is selected
    Then the "Include the selected below" checkbox should be checked
    And the "Reference promo card" checkbox should be checked

  @api @javascript
  Scenario: Show relevant fields depending on the 'Content type' selected
    Given I am logged in as a user with the "Site Administrator" role
    When I visit "node/add/civic_page"
    And I fill in "Title" with "[TEST] Page fields"
    And I click on "div.field--name-field-n-components .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait 1 second
    And I press the "field_n_components_civic_card_container_add_more" button
    And I wait for AJAX to finish
    And I should see an "div.js-form-item-field-n-components-0-subform-field-p-title-0-value" element
    And I should see an "div.js-form-item-field-n-components-0-subform-field-p-link-0-uri" element
    And I should see an "div.js-form-item-field-n-components-0-subform-field-p-column-count select.required" element
    And I should see an "select[name='field_n_components[0][subform][field_p_column_count]']" element
    And I should see an "input[name='field_n_components[0][subform][field_p_fill_width][value]']" element
    Then I click on "div.field--name-field-p-cards .paragraphs-add-wrapper .dropbutton-toggle button" element
    And I wait 1 second
    And I press the "field_n_components_0_subform_field_p_cards_civic_card_reference_promo_add_more" button
    And I wait for AJAX to finish
    And I should see an "select[name='field_n_components[0][subform][field_p_cards][0][subform][field_p_theme]'].required" element
    And I should see an "input[name='field_n_components[0][subform][field_p_cards][0][subform][field_p_reference][0][target_id]'].required" element