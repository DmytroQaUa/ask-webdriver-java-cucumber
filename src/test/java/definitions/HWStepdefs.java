package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class HWStepdefs {
    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int foot) {
        double cm = 30.48 * foot;

        System.out.println(foot + " foot = " + cm + " centemeters");
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int gallon) {
        double ltr = 3.78541 * gallon;

        System.out.println(gallon + " gallon = " + ltr + " liters");
    }

    @And("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheit(int Celsius) {
        int Fahrenheit = (Celsius * 9 / 5) + 32;

        System.out.println(Celsius + " Celsius = " + Fahrenheit + " Fahrenheit");
    }

    @Given("I check if number “{int}” is odd or even")
    public void iCheckIfNumberIsOddOrEven(int num1) {
        if (num1 % 2 == 0) {
            System.out.println("Number " + num1 + " is even");
        } else {
            System.out.println("Number " + num1 + " is odd");
        }
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int Result) {
        if (Result > 90) {
            System.out.println("You passed with Grade A");
        } else if (Result <= 89 && Result >= 80) {
            System.out.println("You passed with Grade B");
        } else if (Result <= 79 && Result >= 70) {
            System.out.println("You passed with Grade C");
        } else if (Result <= 69 && Result >= 60) {
            System.out.println("You passed with Grade D");
        } else {
            System.out.println("You passed with Grade F");
        }
    }


    @Given("I want to know cost of {int} pounds of {string}")
    public void iWantToKnowCostOfPoundsOf(int iPound, String sFruit) {
        double[] iCost = {1.2, 1.3, 1.4, 1.5, 1.6};
        for (int i = 0; i < iCost.length; i++) ;
        switch (sFruit) {
            case "apples":
                double acost = iCost[0] * iPound;
                System.out.println("Cost of apples is " + acost + "$");
                break;
            case "cherries":
                double ccost = iCost[1] * iPound;
                System.out.println("Cost of cherries is " + ccost + "$");
                break;
            case "plums":
                double pcost = iCost[2] * iPound;
                System.out.println("Cost of plums is " + pcost + "$");
                break;
            case "grapefruits":
                double gcost = iCost[3] * iPound;
                System.out.println("Cost of grapefruits is " + gcost + "$");
                break;
            case "oranges":
                double ocost = iCost[4] * iPound;
                System.out.println("Cost of oranges is " + ocost + "$");
                break;
            default:
                System.out.println("This product is unavailable");
        }
    }

    @Given("I print days")
    public void iPrintDays() {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (String element : week) {
            System.out.println(element);
        }
    }
}