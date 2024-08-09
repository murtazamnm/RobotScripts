*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/LandingPage.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/SearchResults.robot
Resource    ./PO/ProductPage.robot
Resource    ./PO/CheckoutPage.robot
*** Keywords ***

Go To Website
    LandingPage.Load
    LandingPage.Verfiy Page Loaded
Search For Products
    TopNav.Search for Products
    SearchResults.Verify Seach Completed

Select Product from Search Results
    SearchResults.Click Product Link
    ProductPage.Verify Product Selected

Add Product to Cart
    ProductPage.Add Product to Cart
    CheckoutPage.Verify Added to Card

Begin Checkout
    CheckoutPage.Proceed to Checkout
    CheckoutPage.Verify Page Loaded


