<!DOCTYPE html>
<html>
<head>
<title>ToDo API Client Demo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/knockout/knockout-2.2.1.js"></script>

<script>
	$(function() {
		$("#edit").click(function(e) {
			alert('Hi');
			e.preventDefault();
			$.ajax({
				type : "POST",
				url : "http://localhost:8080/curiosity/hello/hi.json",
				data : {
					id : $(this).val(), // < note use of 'this' here
					access_token : $("#access_token").val()
				},
				success : function(result) {
					alert(JSON.stringify(result));
				},
				error : function(result) {
					alert('error');
				}
			});
		});

	})
</script>

<script>
$((function() {
	  $('#my-link').click();{
		  alert("Hi ");
	    window.location.href= 'http://sample.com/products.php/#shoes';
	  });
	});
</script>

</head>
<body>
	<div class="navbar">
		<div class="navbar-inner">
			<a id="my-link" href="home.jsp">Click Me!</a>
		</div>
	</div>
	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="#">ToDo API Client Demo</a>
		</div>
	</div>
	<div id="main" class="container">

		<table class="table table-striped">
			<tr>
				<td style="width: 1px;"></td>
				<td><b>Task</b></td>
				<td><b>Options</b></td>
			</tr>
			<tr>
				<td><span class="label label-success">Done</span></td>
				<td><p>
						<b>Task title</b>
					</p>
					<p>Task description</p></td>
				<td>
					<button class="btn" id="edit">Edit</button>
					<button class="btn">Delete</button> <span><button
							class="btn">Mark In Progress</button></span>
				</td>
			</tr>
			<tr>
				<td><span class="label label-important">In Progress</span></td>
				<td><p>
						<b>Task title</b>
					</p>
					<p>Task description</p></td>
				<td>
					<button class="btn">Edit</button>
					<button class="btn">Delete</button> <span><button
							class="btn">Mark Done</button></span>
				</td>
			</tr>
		</table>

		<button class="btn">Add Task</button>

	</div>
	<script type="text/javascript">
		// application code here!
	</script>
</body>
</html>