# ASP.NET WebForms concepts 1 #

### Links

[.NET API browser](https://docs.microsoft.com/en-us/dotnet/api/?view=netframework-4.7.1)

[Forms validation](https://docs.microsoft.com/en-us/previous-versions/aspnet/a0z2h4sw(v=vs.100))

[Standard toolbox controls](https://docs.microsoft.com/en-us/previous-versions/aspnet/x8k61whf(v=vs.100))

[Introduction to ASP.NET Forms (C#)-YouTube](https://www.youtube.com/watch?v=vPGrK52ccDM&list=PLtMFeKNXw-GH0wC0tTM1Tb8wgOw7NV9EJ)

[Bootstrap 5 download and docs](https://getbootstrap.com/)

[Bootstrap 5 Crash Course-YouTube](https://www.youtube.com/watch?v=O_9u1P5YjVc&list=PL4cUxeGkcC9joIM91nLzd_qaH_AimmdAR)

[Modern JavaScript Tutorial-YouTube](https://www.youtube.com/watch?v=iWOYAxlnaww&list=PL4cUxeGkcC9haFPT7J25Q9GRB_ZkFrQAc)

### Project types

It's almost always best when starting a new Website to select Visual RPG>Web>Previous Versions>ASP.NET Empty Web Site.

If you select Visual RPG>Web>ASP.NET Web Forms Site it throws in everything but the kitchen sink--at least initially this is all a bunch of stuff you don't need or want.

Have a good, consistent place to put your projects on your PC's file system. It's usually best to put them somewhere under your "Documents" folder.

### Opening a previously-created Web site project

Explain the Solution window and how other projects can be added to the solution

Open a Web site project

- Use the SLN file
- Open a Web site project with its root folder

### Adding a file to your project

You can add many different kinds of files to the project. (ie,WebForm,  JavaScript, CSS, image, and many others.

Right-click the project in the Solution Explorer and use its "Add" context menu to add a WebForm and name it "Controls.aspx." Note how every ASP.NET form implicitly includes a `form` tag.

Run the program and show the form running

### AVR CodeBehind

The .NET Framework provides a vast set of classes to help with many application development scenarios.

![](https://asna.com/filebin/marketing/firefox_Lk1tSfO3h2.png)

Explain .ASPX and .ASPX.VR

Show how ASPX page links to its .VR with its CodeFile and AutoEventWireUp attributes.

Briefly mention the page's `Inherits` attribute--the ASPX class derives from the ASPX.vr class.

Briefly mention:

- Using statements
- BegClass
- Page_Load and Page_Unload events

### Visual Studio

Suggested Visual Studio settings

- Tools>Options>Projects and Solutions
   - "Show Output window when build starts" should be checked
   - "Always show Error List if build finishes with errors" should not be checked
- Tools>Options>Projects and Solutions>Build and Run
   - "On run, when build or deployment errors occur:" should be set to "Do not launch"
- [Add a Terminate All option to the Debug window](https://asna.com/us/tech/kb/doc/vs-terminate-all)

Most used Visual Studio windows

- Solution Explorer
   - The dashboard of Visual Studio
- Page view
   - with either Design, Split, Source view. Except for viewing a control's properties, I use Source view almost exclusively.
   - You'll do your page design in "Source" view, not "Design" view
- Source code view (not to be confused with the Source view in the "Design, Split, Source view tab).
   - Right-click an ASPX page and select "View Code"
- Toolbox window
   - set as floating window
   - Microsoft's [PowerToys](https://docs.microsoft.com/en-us/windows/powertoys/) has a great "always on top" feature for application windows. It is very handy to use with the Toolbox window.
- Output window
   - set as "Dock as tabbed document"
- Properties window
   - from any ASPX page, select Design view, give desired control focus, and press F4 to show Properties window.
   - This is pretty much the only time I use Design view.

Moving windows

- I like to make the Toolbox window a floating window

### Set the Visual Studio start page

Show project's 'Property Pages'

This is purely for Visual Studio's purposes and doesn't have anything to do with what page is first displayed when you deploy the app.

### A very brief intro to Bootstrap

You can use plain ol' CSS or any CSS framwork with an AVR ASP.NET Website.

- [Tailwind](https://tailwindcss.com/)
- [Bootstrap 5](https://getbootstrap.com/)
- [Bulma](https://bulma.io/)

Add Link and Script tags for it from BS CDN

- CSS LINK tag goes in HEAD section
- JavaScript SCRIPT tag goes at end of page

Show BS-specific markup (ie, div.container)

Note ASP.NET's 'CSSClass' property versus HTML's 'class' attribute.

## Add some controls

ASP.NET controls fundamental to rendering a user interface in your AVR ASP.NET Web app. We'll take a look at a few right now. We'll also take a look how ASP.NET control different from their HTML counterparts.

#### Button

Discuss button to run program and explain how to change browsers

Discuss IIS Express

Discuss browser dev tools to interrogate page output and show resulting HTML

Introduce AVR debugger briefly

With button posting back, discuss page PostBack.

- Page.IsPostBack
   - Use the 1P indicator analogy

By default, the Button causes a postback to its parent page.

#### LinkButton

LinkButton has the behaviors of a Button control, but a LinkButton looks like a hyperlink

#### Textbox

Show how value persists with ASP.NET control but not with the HTML input element--then discuss ViewState.

#### DropDownList

_Very_ briefly discuss objects in .NET

Show 'select' tag versus ASP.NET's DropDownList

Discuss creating a new instance of an object with the ListItem

Discuss the AVR *As operator

```
DclFld li Type(ListItem) 
li = *New ListItem() 
ListItem.Text = 'Elvis'
```

versus 

```
DclFld li Type(*Object) 
li = *New ListItem() 
(li *As ListItem).Text = 'Elvis'
```
```

Discuss how ViewState enhances the DropDownList

### Add a second page named SecondForm.aspx

Let's talk a look at how to navigate from one page to another

Common ways to navigate

- Button/LinkButton with postback and Response.Redirect
- Button/LinkButton with postback and Server.Transfer
- Button/LinkButton with `PostBackUrl` property

Discuss properties versus fields

- A strongly-typed `PreviousPage` doesn't read public fields but it does read public properties.