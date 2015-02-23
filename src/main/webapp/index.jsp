<html>
<body>
    <h2>Client to test RESTful Services!</h2>
    <input type="button" name="testGetData" value="Test GET Method" onclick="getDataFromId(100);">
    <br><br>
    <input type="button" name="testGetData" value="Test GET All Method" onclick="getAllData();">
    <br><br>
    <input type="button" name="postData" value="Test POST Method" onclick="postData();">
    <br><br>
    <input type="button" name="postDataId" value="Test POST Method with Id" onclick="postDataWithId(100);">
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">
function getDataFromId(id){
	$.ajax({
		url:'webapi/myresource/data/'+id,
		type:'GET',
		data: '',
		dataType: 'text',
		contentType: "application/text; charset=utf-8",
		success:function(res){
			alert("It works!" + "\n" + "Get Specific Data using GET Method was a Success!!");
		},
		error:function(res){
			alert("Something Broke! " + res.statusText);
		}
	});
}

function getAllData(){
	$.ajax({
		url:'webapi/myresource/data',
		type:'GET',
		data: '',
		dataType: 'text',
		contentType: "application/text; charset=utf-8",
		success:function(res){
			alert("It works!" + "\n" + "Get All Data using GET Method was a Success!!");
		},
		error:function(res){
			alert("Something Broke! " + res.statusText);
		}
	});
}
function postDataWithId(id) {
	$.ajax({
		url:'webapi/myresource/data/'+id,
		type:'POST',
		data: 'RestService',
		dataType: 'text',
		contentType: "application/text; charset=utf-8",
		success:function(res){
			alert("It works!" + "\n" + "Data to Update using POST Method was a Success!!");
			
		},
		error:function(res){
			alert("Bad thing happend! " + res.statusText);
		}
	});
}

function postData() {
	$.ajax({
		url:'webapi/myresource/data',
		type:'POST',
		data: '',
		dataType: 'text',
		contentType: "application/text; charset=utf-8",
		success:function(res){
			alert("It works!" + "\n" + "New Data using POST Method was as Success!!");
			
		},
		error:function(res){
			alert("Bad thing happend! " + res.statusText);
		}
	});
}
</script>
</html>
