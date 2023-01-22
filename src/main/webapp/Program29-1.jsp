<!-- https://www.geeksforgeeks.org/getparameter-passing-data-from-client-to-jsp/ -->

<html>
    <head>
        <title>Get Parameter Example</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,
                                       initial-scale=1.0">
    </head>
    <body>
        <!-- Here we specify that the from data will be sent to 
             getparam.jsp page using the action attribute  
        -->
        <form name="testForm" action="Program29-2.jsp">
           <label><h1>Enter a text and click Submit<h1/></label><br/>
           <input type="text" name="testParam"><br/>
           <input type="submit">
        </form>
    </body>
</html>