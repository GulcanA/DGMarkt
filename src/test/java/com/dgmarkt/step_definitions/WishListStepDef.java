package com.dgmarkt.step_definitions;

import com.dgmarkt.pages.CategoriesBasePage;
import com.dgmarkt.pages.WishListPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class WishListStepDef {

    WishListPage wishListPage = new WishListPage();
    CategoriesBasePage categoriesBasePage = new CategoriesBasePage();


    @Then("User close the PopUp and click on {string}")
    public void user_close_the_pop_up_and_click_on(String wishListIcon) {
        categoriesBasePage.popUpClose.click();
        categoriesBasePage.clickButtonGroup(wishListIcon);

    }


    @Then("Verify that the {int} is in My Wish List")
    public void verifyThatTheIsInMyWishList(int expectedProductsInWishList) {
        int actualList = wishListPage.productsWishList.size();
        System.out.println("actualList = " + actualList);
        Assert.assertEquals(expectedProductsInWishList,actualList);
    }





    @And("The user should be able {string} to click {string}")
    public void theUserShouldBeAbleToClick(String product, String addCart) throws InterruptedException {
        wishListPage.findProductAddRemove(product,addCart);
    }

    @Then("Verify that the and user can see the message")
    public void verifyThatTheAndUserCanSeeTheMessage() {
       Assert.assertTrue(wishListPage.removeMessageWishList.isDisplayed());
    }


    @Given("User is on the {string} page")
    public void userIsOnThePage(String wishList) {
       String actualPage = wishListPage.onGroupPage(wishList).getText();
       Assert.assertEquals(wishList,actualPage);
    }
}
