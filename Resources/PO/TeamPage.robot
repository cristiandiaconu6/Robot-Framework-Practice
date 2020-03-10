*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TEAM_PAGE_TEXT} =     css=#team > div > div:nth-child(1) > div > h2



*** Keywords ***
Verify Page Loaded
    WAIT UNTIL PAGE CONTAINS ELEMENT  ${TEAM_PAGE_TEXT}

Validate Page Contents
    ${ElementText} =    get text    ${TEAM_PAGE_TEXT}
    should be equal as strings  ${ElementText}  Our Amazing Team    ignore_case=true

