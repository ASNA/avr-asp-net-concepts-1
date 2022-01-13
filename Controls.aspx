<%@ Page Language="AVR" AutoEventWireup="false" CodeFile="Controls.aspx.vr" Inherits="Controls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h2>Button</h2>
            <div>
                <input type="submit" id="html-input-button" value="HTML button element" />
            </div>
            <div class="mt-2">
                <asp:Button ID="Button1" runat="server" Text="Click me ASP-NET button" />
                <p class="m-1">Clicking an ASP.NET button causes a page "postback."</p>
            </div>

            <hr />

            <h2>Input</h2>
            <div>
                <input type="text" id="html-input-text" />
            </div>
            <div class="mt-2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <hr />

            <h2>Dropdown List</h2>
            <div>
                <select>
                    <option value="AL">Alabama</option>
                    <option value="CO" selected>Colorado</option>
                    <option value="GA">Georgia</option>
                    <option value="IL">Illinois</option>
                    <option value="NV">Nevada</option>
                </select>
            </div>
            <div class="mt-2">
                <asp:DropDownList ID="statesDropDownList" runat="server"></asp:DropDownList>
            </div>

            <hr />

            <h2>Redirect to another page</h2>
            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SecondForm.aspx">Go to SecondForm</asp:LinkButton>
            </div>
            <div class="mt-2">
                <asp:Button ID="buttonGotoSecondForm" runat="server" Text="Go to SecondForm" />
            </div>
            <div class="mt-2">
                <asp:Button ID="button2" runat="server" Text="Go to SecondForm with PostBackUrl" PostBackUrl="~/SecondForm.aspx" />
            </div>
            <div class="mt-2">
                <asp:Button ID="button3" runat="server" Text="Go to SecondForm with Server.Transfer" />
            </div>


        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
