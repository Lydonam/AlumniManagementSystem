<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testpage.aspx.cs" Inherits="AlumniUI.testpage" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="panelTemplate.css" rel="stylesheet" />
<%--<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />--%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

<%--JQuery file to use jquery functions--%>
<script src="jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">

<%--script to add and remove a panel dynamically--%>
    <script>
        var $template = $(".template");

        var hash = 2;
        $(".btn-add-panel").on("click", function () {
            var $newPanel = $template.clone();
            $newPanel.find(".collapse").removeClass("in");
            $newPanel.find(".accordion-toggle").attr("href", "#" + (++hash))
                .text("Dynamic panel #" + hash);
            $newPanel.find(".panel-collapse").attr("id", hash);
            $("#accordion").append($newPanel.fadeIn());
        });

        $(document).on('click', '.glyphicon-remove-circle', function () {
            $(this).parents('.panel').get(0).remove();
        });
        </script>
<%--end of script--%>




<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    </form>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading"> <span class="glyphicon glyphicon-remove-circle pull-right "></span>

             <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          Collapsible Group Item #1
        </a>
      </h4>

        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</div>
        </div>
    </div>
    <div class="panel panel-default template">
        <div class="panel-heading"> <span class="glyphicon glyphicon-remove-circle pull-right "></span>

             <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          Collapsible Group Item #2 (template panel)
        </a>
      </h4>

        </div>
        <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">TEsting</div>
        </div>
    </div>
</div>
<br />
<button class="btn btn-lg btn-primary btn-add-panel"> <i class="glyphicon glyphicon-plus"></i> Add new panel</button>


</body>
</html>
