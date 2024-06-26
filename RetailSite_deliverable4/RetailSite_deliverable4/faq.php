
<?php

	// connect with database
	$conn = new PDO("mysql:host=localhost;dbname=easymans", "root", "");

	// fetch all FAQs from database
	$sql = "SELECT * FROM faqs";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$faqs = $statement->fetchAll();

?>

<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<!-- include JS -->
<script src="admin/faq/js/jquery-3.3.1.min.js"></script>
<script src="admin/faq/js/bootstrap.js"></script>





<body class="hold-transition skin-blue layout-top-nav";>

<?php include 'includes/navbar.php'; ?>

</body>




<body style="background-color:#ecf0f5;">



  <!-- Main Content -->

  <main>
    <h1>FAQ</h1>

    <div class="container">
		<div class="row">
			<div class="col-md-12 accordion_one">
				<div class="panel-group">
					<?php foreach ($faqs as $faq): ?>
						<div class="panel panel-default">

							<!-- button to show the question -->
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion_oneLeft" href="#faq-<?php echo $faq['id']; ?>" aria-expanded="false" class="collapsed">
										<?php echo $faq['question']; ?>
									</a>
								</h4>
							</div>

							<!-- accordion for answer -->
							<div id="faq-<?php echo $faq['id']; ?>" class="panel-collapse collapse" aria-expanded="false" role="tablist" style="height: 0px;">
								<div class="panel-body">
									<div class="text-accordion">
										<?php echo $faq['answer']; ?>
									</div>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
		</div>
	</div>
    
  </main>


</body>



<?php include 'includes/footer.php'; ?>

<!-- apply some styles -->
<style>

h1 {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 30px;
    text-align: center;
  }
  



    .main-footer {
		position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px; /* adjust height to match your footer's height */
}

	.accordion_one .panel-group {
	    border: 1px solid #f1f1f1;
	    margin-top: 100px
	}
	a:link {
	    text-decoration: none
	}
	.accordion_one .panel {
	    background-color: transparent;
	    box-shadow: none;
	    border-bottom: 0px solid transparent;
	    border-radius: 0;
	    margin: 0
	}
	.accordion_one .panel-default {
	    border: 0
	}
	.accordion-wrap .panel-heading {
	    padding: 0px;
	    border-radius: 0px
	}
	h4 {
	    font-size: 18px;
	    line-height: 24px
	}
	.accordion_one .panel .panel-heading a.collapsed {
	    color: #000000;
	    display: block;
	    padding: 12px 30px;
	    border-top: 0px
	}
	.accordion_one .panel .panel-heading a {
	    display: block;
	    padding: 12px 30px;
	    background: #fff;
	    color: #313131;
	    border-bottom: 1px solid #f1f1f1
	}
	.accordion-wrap .panel .panel-heading a {
	    font-size: 14px
	}
	.accordion_one .panel-group .panel-heading+.panel-collapse>.panel-body {
	    border-top: 0;
	    padding-top: 0;
	    padding: 25px 30px 30px 35px;
	    background: #fff;
	    color: #000000
	}
	.img-accordion {
	    width: 81px;
	    float: left;
	    margin-right: 15px;
	    display: block
	}
	.accordion_one .panel .panel-heading a.collapsed:after {
	    content: "\2b";
	    color: #999999;
	    background: #f1f1f1
	}
	.accordion_one .panel .panel-heading a:after,
	.accordion_one .panel .panel-heading a.collapsed:after {
	    font-family: 'FontAwesome';
	    font-size: 15px;
	    width: 36px;
	    line-height: 48px;
	    text-align: center;
	    background: #F1F1F1;
	    float: left;
	    margin-left: -31px;
	    margin-top: -12px;
	    margin-right: 15px
	}
	.accordion_one .panel .panel-heading a:after {
	    content: "\2212"
	}
	.accordion_one .panel .panel-heading a:after,
	.accordion_one .panel .panel-heading a.collapsed:after {
	    font-family: 'FontAwesome';
	    font-size: 15px;
	    width: 36px;
	    height: 48px;
	    line-height: 48px;
	    text-align: center;
	    background: #F1F1F1;
	    float: left;
	    margin-left: -31px;
	    margin-top: -12px;
	    margin-right: 15px
	}

    

</style>

