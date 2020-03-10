*** Settings ***
Resource  ../Resources/PO/HomePage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/TeamPage.robot


*** Keywords ***
Go to HomePage
    HomePage.Navigate to
    HomePage.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    TeamPage.Verify Page Loaded

Validate "Team" Page
    TeamPage.Validate Page Contents