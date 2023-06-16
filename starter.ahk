#Include Rufaydium.ahk
/*
	Load "chromedriver.exe" from "A_ScriptDir"
	In case Driver is not yet available, it will Download "chromedriver.exe" into "A_ScriptDir"
	before starting the Driver.
*/
Chrome := new Rufaydium("chromedriver.exe")


f1::
/*
	Create new session if WebBrowser Version Matches the Webdriver Version.
	It will ask to download the compatible WebDriver if not present.
*/
Page := Chrome.NewSession()
; navigate to url
Page.Navigate("https://www.the-automator.com")
Page.querySelector(".s").value := "boingo"
Page.querySelector(".searchsubmit").click()
return


f2::
Page := Chrome.NewSession()
Page.querySelector("#activity-stream-comments-textarea").value :="Sample Text Lorem Ipsum"
return


f10::
Page.Screenshot(a_desktop "\test.png")
return

f12::
Chrome.QuitAllSessions() ; close all session 
Chrome.Driver.Exit() ; then exits driver
return

/*
Query by ID:
Page.querySelector("#main, #basic, #exclamation")
*/
