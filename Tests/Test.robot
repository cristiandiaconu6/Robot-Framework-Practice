*** Settings ***
Documentation    Suite description
Resource  ../Resources/FrontOffice.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/test.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.robotframeworktutorial.com/front-office

*** Test Cases ***
Should be able to access "Team" Page
    [tags]  test1
    FrontOffice.Go to HomePage
    FrontOffice.Go to "Team" Page

"Team" Page should match requirements
    [tags]  test2
    FrontOffice.Go to HomePage
    FrontOffice.Go to "Team" Page
    FrontOffice.Validate "Team" Page
