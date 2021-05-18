Feature: Content Structure - Landing Pages with Layout Builder
As a logged in user with a permission to manage Landing (Layout Builder) pages.
I want to be able to add a "Landing page (Layout Builder)" which has got predefined set of layouts
So that the "Landing page (Layout Builder)" will show up in the structured menu under its parent page

  @javascript @local @development @staging @production
  Scenario: Check if we do have the Landing page (Layout Builder) content type
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types"
      And I wait
     Then I should see "Landing page (Layout Builder)"

  @javascript @local @development @staging @production
  Scenario: Check that the Landing page (Layout Builder) content type has the layout fields
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types/manage/landing_page_lb/fields"
      And I wait
     Then I should see "layout_builder__layout"
      And I should see "layout_selection"

  @javascript @local @development @staging @production
  Scenario: Check that an Anonymous users can not create a Landing page (Layout Builder)
    Given I am an anonymous user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Access denied. You must log in to view this page."

  @javascript @local @development @staging @production
  Scenario: Check that an authenticated user can not create a Landing page (Layout Builder)
    Given I am a logged in user with the "test_authenticated" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should not see "Create Landing page (Layout Builder)"

  @javascript @local @development @staging @production
  Scenario: Check that Editor users can create a Landing page (Layout Builder)
    Given I am a logged in user with the "test_editor" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"

  @javascript @local @development @staging @production
  Scenario: Check that Content Admin users can create a Landing page (Layout Builder)
    Given I am a logged in user with the "test_content_admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"

  @javascript @local @development @staging @production
  Scenario: Check that SEO Admin users can create a Landing page (Layout Builder)
    Given I am a logged in user with the "test_seo_admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"

  @javascript @local @development @staging @production
  Scenario: Check that Site Admin users can create a Landing page (Layout Builder)
    Given I am a logged in user with the "test_site_admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"

