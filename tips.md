The following methods return with an element pointer.

Element := Session.getElementByID(id)
Element := Session.QuerySelector(Path)
Element := Session.QuerySelectorAll(Path)
Element := Session.getElementsbyClassName(Class)
Element := Session.getElementsbyName(Name) 
Element := Session.getElementsbyTagName(TagName)
Element := Session.getElementsbyXpath(xPath)

element := Session.querySelector(".Someclass")
ChildElements := element.querySelectorAll("#someID")

Getting Parent and Child elements

e := Page.QuerySelector("#keywords")
parentelement := e.parentElement
for n, child in parentelement.children
	msgbox, % "index: " n "`nTagName: " child.tagname

---
Accessing Tables

There are many ways to access the table you can use the JavaScript function to extract Session.ExecuteSync(JS) or Session.CDP.Evaluate(JS) but an easy and simple way is to utilize AHK for loops. Looping through the table is a little bit slow because one Rufaydium step consists of 3 steps

    Json.Dump()
    WinHTTP Request
    Json.load()

Looping through tables takes lots of steps, so it's better to use Session.ExecuteSync(JS) to read huge tables and do it much faster if we just want to extract table data and do not have to interact with tables

    Note: Following method will only works when InnerText return with tabs and line breaks

; reading thousand rows lighting fast
Table := Session.QuerySelectorAll("table")[1].innerText
Tablearray := []
for r, row in StrSplit(Table,"`n") 
{
	for c, cell in StrSplit(row,"`t")
	{
		;MsgBox, % "Row: " r " Col:" C "`nText:" cell
		Tablearray[r,c] := cell
	}
}
MsgBox, % Tablearray[1,5]

--------




https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector


Complex selectors
Selectors can also be really powerful, as demonstrated in the following example. Here, the first <input> element with the name "login" (<input name="login"/>) located inside a <div> whose class is "user-panel main" (<div class="user-panel main">) in the document is returned:

const el = document.querySelector("div.user-panel.main input[name='login']");



---


Escaping special characters
To match against an ID or selectors that do not follow standard CSS syntax (by using a colon or space inappropriately, for example), you must escape the character with a backslash ("\"). As the backslash is also an escape character in JavaScript, if you are entering a literal string, you must escape it twice (once for the JavaScript string, and another time for querySelector()):

<div id="foo\bar"></div>
<div id="foo:bar"></div>

<script>
  console.log("#foo\bar"); // "#fooar" (\b is the backspace control character)
  document.querySelector("#foo\bar"); // Does not match anything

  console.log("#foo\\bar"); // "#foo\bar"
  console.log("#foo\\\\bar"); // "#foo\\bar"
  document.querySelector("#foo\\\\bar"); // Match the first div

  document.querySelector("#foo:bar"); // Does not match anything
  document.querySelector("#foo\\:bar"); // Match the second div
</script>