*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${HOME_PAGE_TEXT} =  xpath=//*[@id="mainNav"]/div/div[1]/a


*** Keywords ***
Navigate to
    go to   ${URL}
    maximize browser window

Verify Page Loaded
    wait until page contains element  ${HOME_PAGE_TEXT}

