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
Page.Navigate("https://popx.service-now.com/now/nav/ui/classic/params/target/sn_customerservice_case.do%3Fsys_id%3D4e795e691b2f215011b0dd77b04bcb4f%26sysparm_view%3Dcase%26sysparm_view%3Dcase%26sysparm_domain%3Dc9b762101b418110926beb92b24bcbbb%26sysparm_domain_scope%3Drecord%26sysparm_record_row%3D1%26sysparm_record_rows%3D1%26sysparm_record_list%3Dassignment_group%253d3ab9c28d1bf8995016a02fc7bd4bcb0c%255estate%253d1%255eu_case_classification%253dIncident%255econtact!%253db116ede41bf0e594f09afee5d34bcb96%255eORcontactISEMPTY%255econsumerISEMPTY%255eORDERBYDESCsys_updated_on")
return


f2::
Page.querySelector("#Welcome_to_Wikipedia").innerHTML :="test"
return

f3::
Page := Chrome.NewSession()
Page.Navigate("https://en.wikipedia.org/wiki/Main_Page")
return

f4::
Page.querySelector("#sn_customerservice_case.category").innerHTML :="4"
return

f6::
Page.getElementById("sn_customerservice_case.category").value :="test"
Page.getElementById("sn_customerservice_case.category").innerHTML :="test2"
return

f7::
Page.Navigate("https://popx.service-now.com/now/nav/ui/classic/params/target/sn_customerservice_case.do%3Fsys_id%3D4e795e691b2f215011b0dd77b04bcb4f%26sysparm_view%3Dcase%26sysparm_view%3Dcase%26sysparm_domain%3Dc9b762101b418110926beb92b24bcbbb%26sysparm_domain_scope%3Drecord%26sysparm_record_row%3D1%26sysparm_record_rows%3D1%26sysparm_record_list%3Dassignment_group%253d3ab9c28d1bf8995016a02fc7bd4bcb0c%255estate%253d1%255eu_case_classification%253dIncident%255econtact!%253db116ede41bf0e594f09afee5d34bcb96%255eORcontactISEMPTY%255econsumerISEMPTY%255eORDERBYDESCsys_updated_on")
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
Page.querySelector("#activity-stream-work_notes-textarea").value :="test"
Page.querySelector(".searchsubmit").click()
Page.querySelector("#activity-stream-work_notes-textarea").value :="test"
Page.getElementById("#activity-stream-work_notes-textarea").value :="test"
Page.getElementById("Welcome_to_Wikipedia").value :="test"
*/
