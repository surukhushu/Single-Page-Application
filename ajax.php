<?php
include("db.php");

//save data to the database
if(isset($_POST['done'])){
    $comment = mysql_escape_string($_POST['comment_text']); 


//insert data to the database
mysql_query("INSERT INTO data (A) VALUES ('{$comment}')");
exit();
}

//retrive data from database
if(isset($_POST['display'])){
    $result = mysql_query("SELECT * FROM data");

    while($row = mysql_fetch_array($result)){
        ?>
            <div id="comment_box">
                <p><?php echo $row['A'];?></p>
            </div>
        <?php
    }
exit();
}
?>