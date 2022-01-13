<%@ Page Language="AVR" AutoEventWireup="false" CodeFile="Images.aspx.vr" Inherits="Images" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        <h2 class="mb-3">Image and Radio Button controls</h2>
        <div>
            <asp:Image ID="personImage" runat="server" />
        </div>

        <div class="mt-2 form-check">
            <asp:RadioButton ID="JohnnyRadioButton" runat="server" GroupName="artists" Text="Johnny Cash" Checked="True" CssClass="me-3"/>
            <label class="form-check-label" for="JohnnyRadioButton">
                Johnny Cash
            </label>
        </div>
        <div class="mt-2 form-check">
            <asp:RadioButton ID="WaylonRadioButton" runat="server" GroupName="artists" Text ="Waylon Jennings" CssClass="me-3"/>
            <label class="form-check-label" for="WaylonRadioButton">
                Waylon Jennings
            </label>
        </div>

        <div class="form-check">
          <asp:CheckBox ID="CheckBox1" runat="server" CssClass="me-3 form-check-input" />
          <label class="form-check-label" for="CheckBox1">
            Default checkbox
          </label>
        </div>

        <div class="mt-4">
            <asp:Button ID="buttonShowPicture" runat="server" Text="Show image" />
        </div>

        


        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="/public/js/applib.js"></script>

    <script>
        applib.removeAspNetCheckboxWrapper('input[type="radio"],input[type="checkbox"]');
    </script>

</body>
</html>
