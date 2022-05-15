package definitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class WDHWStepdefs {
    @Then("error message should have text as {string}")
    public void errorMessageShouldHaveTextAs(String sText) {
        String actualText = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        assertThat(actualText).isEqualTo(sText);
    }

    @When("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
    }

    @Then("error message {string} should not be displayed")
    public void errorMessageShouldNotBeDisplayed(String sText) {
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isFalse();
    }
}
