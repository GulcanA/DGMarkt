@B6DGMAUT-7
Feature: Cart Icon Function
  Users Story: As a user, I should be able to manage the cart by clicking the cart icon
  Acceptance Criteria :
  AC1- Verify that the user should be able to see the products added to the cart by clicking the 'shopping cart!' link from the pop-up message.
  AC2- Verify that the user should be able to see the products added to the cart by clicking the cart icon
  AC3- Verify that the user should be able to access the cart from the ‘View Cart’ button
  AC4- Verify that the user should be able to complete the checkout
  AC5- Verify that the user should not be able to complete the checkout with invalid input on the 'View Cart' page.
  AC6- Verify that the user should not be able to add a product to the cart by clicking the cart icon that has an invalid amount for quantity
  AC7- Verify that the user should not be able to complete checkout on the 'Checkout' page with invalid input for information
  AC8- Verify that the user should not be able to complete checkout on the 'Checkout' page with empty input for information


  Background:
    Given The user is on the login panel
    When The user enters the given credentials and clicks login button for the first authentication
    Given The user is on the main page
    When  The user enters valid credentials for the user login
    And The user should be able to login

  @B6DGMAUT-140
  Scenario: Verify that the user should be able to add products from product's page
  and see the products added to the cart by clicking the 'shopping cart!' link from the pop-up message
    Given The user navigates to "Health & Beauty" category
    And The user selects "eufy C1 Smart" product and clicks to the Add to Cart icon.
    When The user clicks shopping cart! link from pop-up message and closes the message
    Then The user should see that the "eufy C1 Smart" has been added to the Shopping Cart page

  @B6DGMAUT-141
  Scenario: Verify that the user should be able to add products from product's page with updating Quantity area
  and see the products added to the cart by clicking the 'shopping cart!' link from the pop-up message
    Given The user navigates to "Health & Beauty" category
    When The user selects "eufy C1 Smart" product and navigates to product's page.
    And The user updates Quantity Area as "10" and clicks to the Add to Cart icon.
    When The user clicks shopping cart! link from pop-up message and closes the message
    Then The user should see that the "eufy C1 Smart" has been added to the Shopping Cart page

  @B6DGMAUT-142
  Scenario Outline: Verify that the User should be able to add products with hover over a product
  and see the products added to the cart by clicking the 'shopping cart!' link from the pop-up message
    Given The user navigates to "<CategoryName>" category
    When The user hover over "<ProductName>" product and clicks to the "Add to Cart" icon.
    And The user clicks shopping cart! link from pop-up message and closes the message
    Then The user should see that the "<ProductName>" has been added to the Shopping Cart page
    Examples:
      | CategoryName    | ProductName          |
      | Health & Beauty | eufy C1 Smart        |
      | Networking      | ASUS ZenWiFi XD6     |
      | Televisions     | Cello C2420G         |
      | TV Accessories  | Belkin adapter cable |

  @B6DGMAUT-143
  Scenario: Verify that the user should be able to access the cart from the ‘View Cart’ button
    Given The user navigates to "Health & Beauty" category
    When The user selects "eufy C1 Smart" product and clicks to the Add to Cart icon.
    Then The user should see product successfully added message
    And  The user should be able to access the cart from the view cart button
    And The user should see that the "eufy C1 Smart" has been added to the Shopping Cart page

  @B6DGMAUT-144
  Scenario: Verify that the user should be able to remove the products from the Shopping Cart Page
    Given The user navigates to "Health & Beauty" category
    When The user selects "eufy C1 Smart" product and clicks to the Add to Cart icon.
    Then The user should see product successfully added message
    And  The user should be able to access the cart from the view cart button
    And The user should see that the "eufy C1 Smart" has been added to the Shopping Cart page
    When The user should click Remove button
    Then The "eufy C1 Smart" should not be in the cart

  @B6DGMAUT-145
  Scenario: Verify that the user should be able to update the products Quantity on the Shopping Cart Page
    Given The user navigates to "Health & Beauty" category
    When The user selects "eufy C1 Smart" product and clicks to the Add to Cart icon.
    Then The user should see product successfully added message
    And  The user should be able to access the cart from the view cart button
    And The user should see that the "eufy C1 Smart" has been added to the Shopping Cart page
    When The user should click Update button after entering '10' to Quantity area
    Then The user should be able to see the Success message on the Shopping Page






