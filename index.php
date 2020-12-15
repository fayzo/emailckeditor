<?php 

include('db.class.php');

    if (isset($_POST['editor1'])) {
        # code...
        $editor= $user->test_input($_POST['editor1']);
        
        $mysqli->query("INSERT INTO email (editor) VALUES ('".$editor."') ");
        // echo var_dump($q.mysqli_error($mysqli));

    }
    
    if (isset($_POST['textarea1'])) {
        # code...
        $editor= $user->test_input($_POST['textarea1']);
        
        $mysqli->query("INSERT INTO email (wty) VALUES ('".$editor."') ");
        // echo var_dump($q.mysqli_error($mysqli));
    }

    $query = $mysqli->query("SELECT * FROM email ");
    // $result = $query->fetch_array();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="plugin/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugin/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugin/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="box.css">

</head>
<body>
    


  <!-- Content Wrapper. Contains page content -->
  <div class="container">
    <div class="row">
      <?php 
      while($result= $query->fetch_array()){ 

        echo (!empty($result['editor']))?'<div class="col-md-6">'.
        htmlspecialchars_decode($result['editor']).'</div>':'';
          // echo html_entity_decode($result['editor']); 

        echo (!empty($result['wty']))?'<div class="col-md-6">'.
        htmlspecialchars_decode($result['wty']).'</div>':'';
          // echo html_entity_decode($result['editor']); 
      } ?>  
    </div>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Text Editors
        <small>Advanced form element</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Editors</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">CK Editor
                <small>Advanced and full of features</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              <form id="form1" action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
                    <textarea id="editor1" name="editor1" rows="10" cols="80">
                                            This is my textarea to be replaced with CKEditor.
                    </textarea>
                	<button id="submit_editor" class="btn btn-primary">submit</button>
              </form>
            </div>
          </div>
          <!-- /.box -->

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Bootstrap WYSIHTML5
                <small>Simple and fast</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              <form  id="form2" action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
                <textarea class="textarea" name="textarea1" placeholder="Place some text here"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                       
                    <button type="button" id="submit_textarea" name="submit" class="btn btn-primary">submit</button>
              </form>
            </div>
          </div>
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- CK Editor -->

<!-- jQuery 3 -->
<script src="plugin/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="plugin/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="box.js"></script>
<script src="plugin/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugin/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    for(instance in CKEDITOR.instances){
        CKEDITOR.instances[instance].updateElement();
    }
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5();
  });

$(document).on('submit', function (e) {
    e.preventDefault();
    // e.stopPropagation();

    var form = $('#form1');

    $.ajax({
            url: 'index.php',
            method: "POST",
            data: form.serialize(),
            // contentType: false,
            // processData: false,
            success: function (response) {
            console.log(response);
            }
        });
});

$(document).on('click', '#submit_textarea', function (e) {
    e.preventDefault();
    var form = $('#form2');

    $.ajax({
            url: 'index.php',
            method: "POST",
            data: form.serialize(),
            // contentType: false,
            // processData: false,
            success: function (response) {
            console.log(response);
            }
        });
});

</script>
</body>
</html>