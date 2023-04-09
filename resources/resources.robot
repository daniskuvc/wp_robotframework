*** Settings ***
Library             SeleniumLibrary
#Keywords           #keywords_file
Variables           ./config/app_config.yaml
Variables           ./config/web_locators.yaml

*** Keywords ***

Open URL in Browser
    [Arguments]               ${url}
    Open Browser              ${wp_url}/${url}    ${browser}
    Maximize Browser Window

Send WP Login Credentials
    [Arguments]             ${user}    ${pass}
    Input Text              ${input_text}     ${user}
    Input Password          ${input_pass}     ${pass}
    Click Button            ${submit_button}