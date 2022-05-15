@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    @predefined2
    Scenario: Predefined steps for Gibiru
      Given I open url "https://gibiru.com/"
      And I wait for 2 sec
      Then I should see page title as "Gibiru – Protecting your privacy since 2009"
      Then element with xpath "//input[@id='q']" should be present
      When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
      Then I click on element with xpath "//button[@id='button-addon2'][@type='submit']"
      Then I wait for element with xpath "//*[@id='web-results']" to be present
      Then element with xpath "//*[@id='web-results']" should contain text "Behavior Driven Development"

    @predefined3
    Scenario: Predefined steps for DuckDuckGo
      Given I open url "https://duckduckgo.com/"
      And I wait for 2 sec
      Then I should see page title as "DuckDuckGo — Privacy, simplified."
      Then element with xpath "//input[@id='search_form_input_homepage']" should be present
      When I type "software quality assurance" into element with xpath "//input[@id='search_form_input_homepage']"
      Then I click on element with xpath "//input[@id='search_button_homepage']"
      Then I wait for element with xpath "//*[@id='links_wrapper']" to be present
      Then element with xpath "//*[@id='links_wrapper']" should contain text "software quality assurance"

    @predefined4
    Scenario: Predefined steps for SwissCows
      Given I open url "https://swisscows.com/"
      Then I wait for 2 sec
      Then I should see page title as "Swisscows the alternative, data secure search engine."
      Then element with xpath "//*[@name='query'][@placeholder='Your search. Your business.']" should be present
      When I type "software quality assurance" into element with xpath "//*[@name='query'][@placeholder='Your search. Your business.']"
      Then I click on element with xpath "//*[@class='search-submit']"
      Then I wait for element with xpath "//*[@class='page-results']" to be present
      Then element with xpath "//*[@class='page-results']" should contain text "software quality assurance"

    @predefined5
    Scenario: Predefined steps for Search Encrypt
      Given I open url "https://www.searchencrypt.com/"
      Then I wait for 2 sec
      Then I should see page title as "Search Encrypt | Home"
      Then element with xpath "//*[@name='q'][@placeholder='Search...']" should be present
      When I type "software quality assurance" into element with xpath "//*[@name='q'][@placeholder='Search...']"
      Then I click on element with xpath "//button[@class='search-bar__submit'][@type='submit']"
      Then I wait for element with xpath "//*[@class='serp__results container']" to be present
      Then element with xpath "//*[@class='serp__results container']" should contain text "software quality assurance"

    @predefined6
    Scenario: Predefined steps for Startpage
      Given I open url "https://www.startpage.com/"
      Then I wait for 2 sec
      Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
      Then element with xpath "//input[@id='q']" should be present
      When I type "software quality assurance" into element with xpath "//input[@id='q']"
      Then I click on element with xpath "//button[@class='search-form-home__button-desktop'][@type='submit']"
      Then I wait for element with xpath "//*[@class='layout-web layout-web--']" to be present
      Then element with xpath "//*[@class='layout-web layout-web--']" should contain text "software quality assurance"

    @predefined7
    Scenario: Predefined steps for Wikipedia
      Given I open url "https://en.wikipedia.org/"
      Then I wait for 2 sec
      Then I should see page title as "Wikipedia, the free encyclopedia"
      Then element with xpath "//input[@id='searchInput']" should be present
      When I type "software quality assurance" into element with xpath "//input[@id='searchInput']"
      Then I click on element with xpath "//input[@id='searchButton']"
      Then I wait for element with xpath "//div[@id='content']" to be present
      Then element with xpath "//div[@id='content']" should contain text "software quality assurance"

    @predefined8
    Scenario: Predefined steps for ECOSIA
      Given I open url "https://www.ecosia.org/"
      Then I wait for 2 sec
      Then I should see page title as "Ecosia - the search engine that plants trees"
      Then element with xpath "//*[@data-test-id='search-form-input'][@type='search']" should be present
      When I type "software quality assurance" into element with xpath "//*[@data-test-id='search-form-input'][@type='search']"
      Then I click on element with xpath "//*[@data-test-id='search-form-submit']"
      Then I wait for element with xpath "//*[@class='mainline-results']" to be present
      Then element with xpath "//*[@class='mainline-results']" should contain text "software quality assurance"

    @predefined9
    Scenario: Predefined steps for Wiki
      Given I open url "https://www.wiki.com/"
      Then I wait for 2 sec
      Then I should see page title as "Wiki.com"
      Then element with xpath "//*[@name='q']" should be present
      When I type "software quality assurance" into element with xpath "//*[@name='q']"
      Then I click on element with xpath "//*[@name='btnG']"
      And I should see page title as "Form is not secure"
      Then I click on element with xpath "//*[@id='proceed-button']"
      Then I should see page title as "Wiki.com"
      Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
      Then I wait for element with xpath "//*[@id='cse-hosted']" to be present
      Then element with xpath "//*[@id='cse-hosted']" should contain text "software quality assurance"

    @predefined10
    Scenario: Predefined steps for Givewater
      Given I open url "https://www.givewater.com/"
      Then I wait for 2 sec
      Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
      Then element with xpath "//div[@id='popmake-172']" should be present
      Then I click on element with xpath "//*[@type='button'][@aria-label='Close'][@class='pum-close popmake-close']"
      Then element with xpath "//input[@id='site-search']" should be present
      When I type "software quality assurance" into element with xpath "//input[@id='site-search']"
      Then I click on element with xpath "//button[@id='button-addon2']"
      Then I wait for element with xpath "//*[@class='layout__body']" to be present
      Then element with xpath "//*[@class='layout__body']" should contain text "software quality assurance"

    @predefined11
    Scenario: Predefined steps for Ecoru
      Given I open url "https://ekoru.org/"
      Then I wait for 2 sec
      Then I should see page title as "Ekoru - every search cleans our oceans"
      Then element with xpath "//input[@id='fld_q']" should be present
      When I type "software quality assurance" into element with xpath "//input[@id='fld_q']"
      Then I click on element with xpath "//*[@id='btn_search']"
      Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
      Then element with xpath "//div[@class='serp-wrapper']" should contain text "software quality assurance"


      




