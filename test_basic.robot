*** Settings ***
Library     Browser


*** Variables ***
${url}          https://www.google.com/
${chrome}       Chromium


*** Test Cases ***
Test Basic Google
    New Browser    browser=${chrome}    headless=${False}
    New Page    ${url}
    Search Google    youtube


*** Keywords ***
Search Google
    [Arguments]    ${text}
    Type Text    id=APjFqb    ${text}
    Click
    ...    form div:nth-child(1) div.A8SBwf div.FPdoLc.lJ9FBc center input.gNO89b
    Sleep    2s
