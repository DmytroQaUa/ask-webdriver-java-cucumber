package definitions;

import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }

    @Given("I print {string}")
    public void iPrint(String sWord) {
        System.out.println(sWord);

    }

    @Given("I compare {string} with {string}")
    public void iCompareWith(String sWord1, String sWord2) {
        System.out.println("My first word is " + sWord1 + " and "+ "my second word is " + sWord2);
        System.out.println("First char for both strings: "+ sWord1.charAt(0)+", " + sWord2.charAt(0));
        System.out.println("The length of each string: "+ sWord1.length() +", " + sWord2.length());
        System.out.println("Is First string equal to Second : "+ sWord1.equals(sWord2));
        System.out.println("Is First string equal to Second using ignoring the case: "+ sWord1.equalsIgnoreCase(sWord2));
        System.out.println("Is First string equal to Second using Upper the case: " + sWord1.equals(sWord2.toUpperCase()));
    }

    @Given("I practice with numbers {int} and {int}")
    public void iPracticeWithNumbersAnd(int iNum1, int iNum2) {
        int iSum = iNum1 + iNum2;
        int iDif = iNum1 - iNum2;
        int iProd = iNum1 * iNum2;
        int iQuot = iNum1 / iNum2;

        System.out.println(iNum1 + " + "+ iNum2 + " = " + iSum);
        System.out.println(iNum1 + " - "+ iNum2 + " = " + iDif);
        System.out.println(iNum1 + " * "+ iNum2 + " = " + iProd);
        System.out.println(iNum1 + " / "+ iNum2 + " = " + iQuot);


    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sURL) {
        /*if (sURL.equals("google")){
            System.out.println("https://www.google.com/");
            }
        else if (sURL.equals("duckduckgo")) {
            System.out.println("https://duckduckgo.com");
        }
        else {
            System.out.println("No URL found");
        }*/
        switch (sURL){
            case "google": System.out.println("https://www.google.com/");break;
            case "duckduckgo": System.out.println("https://duckduckgo.com");break;
            case "swisscows": System.out.println("https://swisscows.com");break;
            case "searchencrypt": System.out.println("https://www.searchencrypt.com");break;
            default: System.out.println("No URL found");
        }
        System.out.println("The selection is completed!");
    }

    @Given("I practice with array operations")
    public void iPracticeWithArrayOperations() {
        int[] numbers = {5,8,5,9,1,4};
        String[] cars = {"Ford", "Toyota", "BMW", "others"};
        System.out.println("The first car is " + cars[0]);
        for (int i = 0; i<=3; i++) {
            System.out.println("Print cars " + cars[i]);
        }
        System.out.println("Amount of the cars " + cars.length);
        System.out.println ("I have " + numbers[1] +" " + cars[1]);

    }
}
