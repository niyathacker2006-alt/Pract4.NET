<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Eventregistrationform.aspx.cs"
    Inherits="Practical4.EventRegistration" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
    <style>
    body {
        font-family: Arial;
    }
    .container {
        width: 600px;
        margin: 20px auto;
    }
    .row {
        margin-bottom: 15px;
    }
    .label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .input {
        width: 100%;
        padding: 5px;
    }
    .error {
        color: red;
    }
    .success {
        color: green;
        font-weight: bold;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
    <h1>Online Event Registration</h1>
    <asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        CssClass="summary"
        HeaderText="Please correct the following errors:" />
    <!-- Name -->
    <div class="row">
        <asp:Label
            ID="lblName"
            runat="server"
            Text="Full Name"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtName"
            runat="server"
            CssClass="input">
        </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvName"
            runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Full Name is required"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
    </div>
    <!-- Email -->
    <div class="row">
        <asp:Label
            ID="lblEmail"
            runat="server"
            Text="Email"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtEmail"
            runat="server"
            CssClass="input">
        </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            ErrorMessage="Enter a valid email address"
            CssClass="error"
            Display="Dynamic">
        </asp:RegularExpressionValidator>
    </div>
    <!-- Mobile -->
    <div class="row">
        <asp:Label
            ID="lblMobile"
            runat="server"
            Text="Mobile Number"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtMobile"
            runat="server"
            CssClass="input"
            MaxLength="10">
        </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvMobile"
            runat="server"
            ControlToValidate="txtMobile"
            ErrorMessage="Mobile number is required"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator
            ID="revMobile"
            runat="server"
            ControlToValidate="txtMobile"
            ValidationExpression="^[0-9]{10}$"
            ErrorMessage="Enter a valid 10-digit mobile number"
            CssClass="error"
            Display="Dynamic">
        </asp:RegularExpressionValidator>
    </div>
    <!-- Event -->
    <div class="row">
        <asp:Label
            ID="lblEvent"
            runat="server"
            Text="Select Event"
            CssClass="label">
        </asp:Label>
        <asp:DropDownList
            ID="ddlEvent"
            runat="server"
            CssClass="input">
            <asp:ListItem Text="-- Select Event --" Value=""></asp:ListItem>
            <asp:ListItem Text="AI & Machine Learning Workshop" Value="AI Workshop"></asp:ListItem>
            <asp:ListItem Text="Web Development Seminar" Value="Web Seminar"></asp:ListItem>
            <asp:ListItem Text="Cyber Security Conference" Value="Cyber Security"></asp:ListItem>
            <asp:ListItem Text="Hackathon 2026" Value="Hackathon"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator
            ID="rfvEvent"
            runat="server"
            ControlToValidate="ddlEvent"
            InitialValue=""
            ErrorMessage="Please select an event"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
    </div>
    <!-- Gender -->
    <div class="row">
        <asp:Label
            ID="lblGender"
            runat="server"
            Text="Gender"
            CssClass="label">
        </asp:Label>
        <asp:RadioButtonList
            ID="rblGender"
            runat="server">
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator
            ID="rfvGender"
            runat="server"
            ControlToValidate="rblGender"
            ErrorMessage="Please select gender"
            CssClass="error">
        </asp:RequiredFieldValidator>
    </div>
    <!-- Workshops -->
    <div class="row">
        <asp:Label
            ID="lblWorkshop"
            runat="server"
            Text="Additional Workshops"
            CssClass="label">
        </asp:Label>
        <asp:CheckBoxList
            ID="cblWorkshop"
            runat="server">
            <asp:ListItem Text="Cloud Computing" Value="Cloud"></asp:ListItem>
            <asp:ListItem Text="Artificial Intelligence" Value="AI"></asp:ListItem>
            <asp:ListItem Text="Cyber Security" Value="Cyber"></asp:ListItem>
            <asp:ListItem Text="Data Science" Value="Data Science"></asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <!-- Date -->
    <div class="row">
        <asp:Label
            ID="lblDate"
            runat="server"
            Text="Registration Date"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtDate"
            runat="server"
            CssClass="input"
            TextMode="Date">
        </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvDate"
            runat="server"
            ControlToValidate="txtDate"
            ErrorMessage="Please select registration date"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
    </div>
    <!-- Password -->
    <div class="row">
        <asp:Label
            ID="lblPassword"
            runat="server"
            Text="Password"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtPassword"
            runat="server"
            CssClass="input"
            TextMode="Password">
        </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvPassword"
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required"
            CssClass="error"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
    </div>
    <!-- Confirm Password -->
    <div class="row">
        <asp:Label
            ID="lblConfirmPassword"
            runat="server"
            Text="Confirm Password"
            CssClass="label">
        </asp:Label>
        <asp:TextBox
            ID="txtConfirmPassword"
            runat="server"
            CssClass="input"
            TextMode="Password">
        </asp:TextBox>
        <asp:CompareValidator
            ID="cvPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            Operator="Equal"
            Type="String"
            ErrorMessage="Passwords do not match"
            CssClass="error"
            Display="Dynamic">
        </asp:CompareValidator>
    </div>
    <!-- Terms -->
    <div class="row">
        <asp:CheckBox
            ID="chkTerms"
            runat="server"
            Text=" I agree to the terms and conditions" />
        <br />
        <asp:CustomValidator
            ID="cvTerms"
            runat="server"
            ErrorMessage="You must accept the terms and conditions"
            CssClass="error"
            OnServerValidate="cvTerms_ServerValidate">
        </asp:CustomValidator>
    </div>
    <!-- Button -->
    <div class="row">
        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register Now"
            CssClass="btn"
            OnClick="btnRegister_Click" />
    </div>
    <!-- Result -->
    <asp:Label
        ID="lblMessage"
        runat="server"
        CssClass="success">
    </asp:Label>
</div>
</form>
</body>
</html>
