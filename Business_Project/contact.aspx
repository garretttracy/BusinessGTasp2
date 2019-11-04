<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">
    protected void submitButton_Click(object sender, EventArgs e){
        if (Page.IsValid)
        {
            // Code that uses the data entered by the user
            // Define data objects
            SqlConnection conn;
            SqlCommand comm;
            // Read the connection string from Web.config
            string connectionString =
                ConfigurationManager.ConnectionStrings[
                "GTBusiness"].ConnectionString;
            // Initialize connection
            conn = new SqlConnection(connectionString);
            // Create command 
            comm = new SqlCommand("EXEC InsertQCCVisitor @reasonDDL,@fnameTextBox,@lnameTextBox,@emailTextBox, @msgTextBox", conn);
            comm.Parameters.Add("@reasonDDL", System.Data.SqlDbType.VarChar, 10);
            comm.Parameters["@reasonDDL"].Value = reason.Text;
            comm.Parameters.Add("@fnameTextBox", System.Data.SqlDbType.VarChar, 60);
            comm.Parameters["@fnameTextBox"].Value = fname.Text;
            comm.Parameters.Add("@lnameTextBox", System.Data.SqlDbType.VarChar, 60);
            comm.Parameters["@lnameTextBox"].Value = lname.Text;
            comm.Parameters.Add("@emailTextBox", System.Data.SqlDbType.NChar, 50);
            comm.Parameters["@emailTextBox"].Value = eBox.Text;
            comm.Parameters.Add("@msgTextBox", System.Data.SqlDbType.NChar, 200);
            comm.Parameters["@msgTextBox"].Value = commBox.Text;

            // Enclose database code in Try-Catch-Finally
            try
            {
                // Open the connection
                conn.Open();
                // Execute the command
                comm.ExecuteNonQuery();
                // Reload page if the query executed successfully
                Response.Redirect("home.html");
            }
            catch (SqlException ex)
            {
                // Display error message
                dbErrorMessage.Text =
                   "Error submitting the data!" + ex.Message.ToString();

            }
            finally
            {
                // Close the connection
                conn.Close();
            }
        }
    }
</script>
<%--MOD LOG
    commented out javascript 11/1
    Updated BusinessGT database 11/1
    Changed input boxes to aspx format 11/1
    added web config file 11/1
    Changed dropdown list to aspx format 11/1
    Added C# script 11/1
    --%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link href="css/bp_styles1.css" rel="stylesheet" />
          <%--  <script src= "js/contact.js" async></script>--%>
            <link rel="icon" href="images/icon4.jpg" />
            <title>Contact Us</title>
    </head>
    
    <body> 
            <div class="banner">
                    <header>
                        <h1>Mega Glass INC.</h1>
                    </header>
                    <nav>
                        <ul>
                            <li><a href="home.html">Home</a></li>
                            <li><a href="newsletter.html">Subscribe to our Newsletter!</a></li>
                        </ul>
                    </nav>
                </div>
        <section><h2><i>We Want To Hear From You!</i></h2>
            
            <article class="formBox">
                <form class="survey" name="form1" runat="server">
            <fieldset id="custInfo">
                <div class="formRow">
                        <%--<select id="reason" name="reason" >
                                <option id = "default" value = "Def">Reason?</option>
                                <option value="Q">Question</option>
                                <option value="comment">Comment(s)</option>
                                <option value="concern">Concern</option>
                              </select>--%>
                    <asp:DropDownList ID="reason" runat="server">
                        <asp:ListItem Text="Reason" Value="Def"></asp:ListItem>
                        <asp:ListItem Text="Question" Value="Q"></asp:ListItem>
                        <asp:ListItem Text="Comment(s)" Value="Comment"></asp:ListItem>
                        <asp:ListItem Text="Concern" Value="concern"></asp:ListItem>
                    </asp:DropDownList>
                </div>			
                <div class="formRow">
                    <label for="name">First Name:</label>
<%--                    <input name="firstName" id="fname" type="text" placeholder="first name" required/>--%>
                          <asp:TextBox ID="fname" runat="server" />
                </div>
                
                <div class="formRow">
                    <label for="name">Last Name</label>
<%--                    <input name="lastName" id="lname" type="text" placeholder="and last name" required/>--%>
                        <asp:TextBox ID="lname" runat="server" />
                </div>
                
                <div class="formRow">
                    <label for="email">Email</label>
<%--                    <input type="text" name="electronicMailAddress"  id="eBox"  placeholder="your.name@example.com" required />--%>
                       <asp:TextBox ID="eBox" runat="server" />
                </div>
                <label for="commBox">Questions/Comments/Concerns:</label>
<%--                <textarea type="text" name="custExp" id="commBox"required></textarea>--%>
                    <asp:TextBox ID="commBox" runat="server" Height="100px" Width="200px"/>
                <%--<input type="submit"  id="subButton" value="Send Email" /> --%>
                <asp:Button ID="subButton" runat="server"
                Text="Submit" onclick="submitButton_Click" />
                <br />
        <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>
            </fieldset>
            
          </form>
            
                <p><em>~Thank you for taking the time to share your opinion(s)~</em></p>
            </article>

        </section>
        <!-- <figure>
            <img src="images/stock.jpg" alt="stock photo" />
            <figcaption>
                This is a caption.
            </figcaption>
        </figure> -->
        <footer>
                <p class="leftFoot">Mega Glass INC.</p>
                <p class="rightFoot"> <nav>
                        <ul>
                            <li><a href="home.html">Home</a></li>
                            <li><a href="newsletter.html">Subscribe to our Newsletter!</a></li>                            
                        </ul>
                    </nav></p>
                <p class="centerFoot">3221 7th street Eugene, OR <br />208 324 3222 <br />Available 9-5!</p>
                
        </footer>
    </body>
</html>