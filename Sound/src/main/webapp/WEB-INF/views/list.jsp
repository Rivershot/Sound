<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="UTF-8">
<title>Wave</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- CSS only -->
<script src="https://unpkg.com/wavesurfer.js@6.6.3/dist/wavesurfer.js"></script>
<style type="text/css">
table{
	margin: 0 auto;
}
#list{
	margin: 0 auto;
}
#topWrap{
	text-align: center;
}
.row{
	margin: 0 auto;
	width: 850px;
}
.th{
	display: grid;
	grid-template-columns: 55px 300px 200px 100px 100px;
	margin: 0 auto;
	text-align: center;
	height: 25px;
	border-bottom: 1px solid #ccc;
}
.thName{
	text-align: left;
	box-sizing: border-box;
}
.tr{
	display: grid;
	grid-template-columns: 55px 300px 200px 100px 100px;
	padding-right: 10px;
	margin: 0 auto;
	border-bottom: 1px solid #ccc;
}
.file{
	text-align: left;
	overflow: hidden;
	box-sizing: border-box;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 5px;
}
span{
	overflow: hidden;
}
#playdiv{
	position: fixed;
	bottom: 0;
	width: 100%;
	margin: 0 auto;
}
#playWrap{
 	background-color: lightgray; 
	width: 100%;
	height: 50px;
}
#play{
	width: 50px;
	height: 50px;
	border: none;
	background-color: lightgray;
}
#pause{
	width: 50px;
	height: 50px;
	border: none;
	background-color: white;
}
.btnImg {
	width:25px; 
	height:25px;
}
.btnWrap{
	width: 320px;
	margin: 0 auto;
}
</style>
</head>
<body>
<div id="topWrap">
	<h1>Sound list</h1>
</div>


<div style="margin: 0 auto;">
	<div id="list">
		<div class="row">
			<div class="th">
				<div class="thName"><span>FileNo</span></div>
				<div class="thName"><span>FileName</span></div>
				<div class="thName" id="WaveWrap"><span>Wave</span></div>
				<div class="thName"><span>BPM</span></div>
				<div class="thName"><span>Time</span></div>
			</div>
			<c:forEach var="list" items="${ list }">
			<div class="tr">
				<div class="file"><div>${list.soundno }</div></div>
				<div class="file"><div>${list.name }</div></div>
				<div class="file" >
					<div id="wave${list.soundno }"></div>
				</div>
				<div class="file"><div>${list.tempo }</div></div>
				<div class="file"><div>${list.time }</div></div>
			</div>
			</c:forEach>
		</div>
	</div>
</div>


<script type="text/javascript">

var wavesurfer = []

for( var i = 1; i<11; i++) {
	
	 wavesurfer[i] = WaveSurfer.create({
		container: '#wave'+i,
		waveColor: 'violet',
		progressColor: 'purple',
		barWidth: 2,
		barHeight: 1.5,
		pixelRatio: 30, // 이 값 필요함 
		normalize: true, // 피크의 값을 모두 normailize한다
		barMinHeight: 50, // bar의 높이 조절 0db 값도 들어올려 모든 너비를 맞춘다
	})
	
	wavesurfer[i].setHeight(30);
	wavesurfer[i].setCursorColor('white');
	wavesurfer[i].load('../resources/wave/'+ i +'.wav');	
	

	wavesurfer[i].on('ready', function () {
	    wavesurfer[i].play();
	});
	
	
}	

$("#wave1").click(function() {
	wavesurfer[1].play();
})
$("#wave2").click(function() {
	wavesurfer[2].play();
})
$("#wave3").click(function() {
	wavesurfer[3].play();
})
$("#wave4").click(function() {
	wavesurfer[4].play();
})
$("#wave5").click(function() {
	wavesurfer[5].play();
})
$("#wave6").click(function() {
	wavesurfer[6].play();
})
$("#wave7").click(function() {
	wavesurfer[7].play();
})
$("#wave8").click(function() {
	wavesurfer[8].play();
})
$("#wave9").click(function() {
	wavesurfer[9].play();
})
$("#wave10").click(function() {
	wavesurfer[10].play();
})



$(function() {
	
	$("#play").click(function() {

		if( wavesurfer[i].isPlaying() ) {
			wavesurfer[i].pause();
			$("#play").html('<img class="btnImg" src="../resources/img/play.png">');
		} else if ( !wavesurfer[i].isPlaying() ) {
			wavesurfer[i].play();
			$("#play").html('<img class="btnImg" src="../resources/img/pause.png">');
		}
		
	})
	
	
	
})


</script>


<div id="playdiv">
	<div id="playWrap">
		<div class="btnWrap">
			<div style="display: inline-block;">
				<img src="../resources/img/img.png" style="width:32px; height:32px;">
			</div>
			<button id="play"><img class="btnImg" src="../resources/img/play.png"></button>
			<div id="curTime" style="display: inline-block;">
				
			</div>
		</div>
	</div>
</div>


</body>
</html>