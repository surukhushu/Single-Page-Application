<html>
<head>
    <title>Sigle Page App</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/codemirror/CodeMirror/master/lib/codemirror.css">
        <script type="text/javascript" src="https://cdn.rawgit.com/codemirror/CodeMirror/master/lib/codemirror.js"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/codemirror/CodeMirror/master/mode/xml/xml.js"></script>
    <link rel="stylesheet" href="text.css" type="text/css" media="screen" />
    <style>
#div1 {
    width: 100px;
    height: 50px;
    padding: 10px;
    border: 1px solid #aaaaaa;
}
#comment_box{
    width:100%;
    height:auto;
    border: 1px solid #cbcbcb;
    margin:5px;
    padding:5px;
    
}
#display_area1{
    width:100%;
    height:auto;        
}
</style>
</head>
<body>
<div id="wrapper"> 
       
<div class="main_menu" align="center">
    <ul>
        <li><a href="#" value="A" onclick="display(<?php echo $row['comment'];?>)"/>CAT A</a>  
        <ul><li><a href="#"></a></li>
        </ul></li>
        <li><a href="#">CAT B</a><ul>
        <li><a href="#">b</a></li>
        </ul></li>
        <li> <a href="#">CAT C</a><ul>
        <li><a href="#">c</a></li>
        </ul></li>
        <li><a href="#">CAT D</a><ul>
        <li><a href="#">d</a></li>
        </ul></li>
    </ul>
</div>

        <div id="input_comment_form">
            <li>USER INPUT </li>
            <li><textarea id="comment" cols="30" rows="10"></textarea></li>
            <li><input type="submit" id="submit" value="Save" onclick="showInput()">
            <button type="reset"/>Refresh</li>
            <p><span id='display'></span></p> 
        </div>         
        

        <div id="display_area"> 
          
        </div>


    </div>
</body>
</html>

<!-- Add Jquery -->
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">


 $(document).ready(function(){
        $("#submit").click(function(){
            var comment = $("#comment").val();

            $.ajax({
                url: "ajax.php",
                type: "POST",
                async: false,
                data: {
                    "done": 1,
                    "comment_text": comment
                },
                success: function(data){
                    $("#comment").val('');
                    alert("data enter successfully");

                }
            })
        });
    });



    function display() {
        $.ajax({
            url: "ajax.php",
                type: "POST",
                async: false,
                data: {
                    "display":1,
                },
                success: function(d){
                    $("#display_area").html(d);

                }
        });
    }

var editor = CodeMirror.fromTextArea(document.getElementById("comment"), {
            lineNumbers: true,
            mode:  "xml"
        });


    function showInput() {
        document.getElementById('display').innerHTML = 
                    document.getElementById("comment").value;
    }
</script>   







































