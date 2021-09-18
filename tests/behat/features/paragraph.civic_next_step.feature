@paragraph @civic_next_step
Feature: Test the Next step paragraph

  Ensure that Next step paragraph exists and has the expected fields.

  @api
  Scenario: Paragraph type appears in the paragraph types page
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type"
    Then I should see the text "Next step" in the "civic_next_step" row

  @api
  Scenario: Next step paragraph exists with fields.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/paragraphs_type/civic_next_step/fields"
    And I should see the text "field_p_icon" in the "Icon" row
    And I should see the text "field_p_image" in the "Image" row
    And I should see the text "field_p_summary" in the "Summary" row
    And I should see the text "field_p_theme" in the "Theme" row
    And I should see the text "field_p_title" in the "Title" row

  @api
  Scenario: Node type Page field_n_components fields settings.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/types/manage/civic_page/fields/node.civic_page.field_n_components"
    And the "Label" field should contain "Components"
    Then the option "Default" from select "Reference method" is selected
    Then the "Include the selected below" checkbox should be checked
    And the "Next step" checkbox should be checked

  @api
  Scenario: Block type Component Block field_b_components fields settings.
    Given I am logged in as a user with the "Site Administrator" role
    When I go to "admin/structure/block/block-content/manage/civic_component_block/fields/block_content.civic_component_block.field_b_components"
    And the "Label" field should contain "Components"
    Then the option "Default" from select "Reference method" is selected
    Then the "Include the selected below" checkbox should be checked
    And the "Next step" checkbox should be checked

  @api @javascript
    Scenario: Show relevant fields depending on the 'Content type' selected
      Given I am logged in as a user with the "Site Administrator" role
      When I visit "node/add/civic_page"
      And I fill in "Title" with "[TEST] Page fields"
      And I click on "div.field--name-field-n-components .paragraphs-add-wrapper .dropbutton-toggle button" element
      And I wait 1 second
      And I press the "field_n_components_civic_next_step_add_more" button
      And I wait for AJAX to finish
      And I see field "field_n_components[0][subform][field_p_theme]"
      And I see field "Title"
      And I see field "Summary"
      And I should see an "input[name='field_p_image-media-library-open-button-field_n_components-0-subform']" element
      And I should see an "input[name='field_p_icon-media-library-open-button-field_n_components-0-subform']" element