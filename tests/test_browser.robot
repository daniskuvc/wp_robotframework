*** Settings ***
Documentation        WordPress create users
Resource            ../resources/resources.robot

*** Keywords ***

*** Variables ***

*** Test Cases ***
WordPress Login
    Open URL in Browser            wp-login.php
    Send WP Login Credentials      ${wp_user}    ${wp_pass}

