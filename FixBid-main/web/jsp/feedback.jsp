<%--
  User: lonewol7f
  Date: 3/16/2021
  Time: 12:01 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/feedback.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Feedback</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>
<form action="addFeedback" method="post" class="main-form needs-validation">
    <div class="row">
        <div class="col">
            <h2><strong>How are we doing?</strong></h2>
            <p>We're always working to improve the FixBid experience, so we'd love to hear whats working and how we can
                do better.</p>
            <p><strong>This isn't way to contact us, though.</strong> We can't respond to feedback or bug reports
                individually. If you have a question or need help you can <a href="#">contact us</a></p>
        </div>
    </div>
    <hr class="my-3"/>
    <div class="row" style="margin-top: 10px">
        <div class="col">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control" required>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="type">Type</label>
        <select name="type" id="type" class="form-control">
            <option selected value="Suggestion">Suggestion</option>
            <option value="Complain">Complain</option>
        </select>
    </div>
    <div class="form-group">
        <label for="comment">Comment</label>
        <textarea class="form-control" name="comment" id="comment" rows="7" placeholder="Your comment here..."
                  required></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%@ include file="/includes/footer.jsp" %>
</body>
</html>
