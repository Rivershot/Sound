<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/wavesurfer.js@6.6.3/dist/wavesurfer.js"></script>
<style type="text/css">
table{
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="p-3 mb-2 bg-dark text-white">
	<h1 class="display-1">Sound list</h1>
</div>
<table class="table border">
	<tr class="border">
		<th class="col-1">Fileno</th>
		<th class="col-3">Filename</th>
		<th class="col-6">Wave</th>
		<th class="col-1">Time</th>
		<th class="col-1">Tempo</th>
	</tr>
	<c:forEach var="list" items="${ list }">
		<tr>
			<td>${ list.soundno }</td>
			<td>${ list.name }</td>
			<td>
				<div id="wave${list.soundno }"></div>
			</td>
			<td>${ list.time }</td>
			<td>${ list.tempo }</td>
		</tr>
	</c:forEach>
</table>



<script type="text/javascript">

for( var i = 1; i<4; i++) {
	var wavesurfer = WaveSurfer.create({
		container: '#wave' + i,
		waveColor: 'violet',
		progressColor: 'purple',
		barWidth: 2,
		barHeight: 1.5,
		responsive: true, // 창이 리사이징 되면 자동으로 조절 해주는 옵션
	})
		wavesurfer.setHeight(50);
// 		wavesurfer.setWidth(320);
	
// 	wavesurfer.load('../resources/wave/1.wav');	
	wavesurfer.load('../resources/wave/' + i + '.wav');	
	
	wavesurfer.on('ready', function () {
	    wavesurfer.play();
	});
}	

</script>



</body>
</html>