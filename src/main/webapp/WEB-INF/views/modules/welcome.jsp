<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>EIC&nbsp;芝麻开发全人格教育基金</title>
<link rel="icon" href="${ctx}/images/favicon.ico" type="image/x-icon" /> 
<link rel="shortcut icon" href="/test.ico" type="image/x-icon" />
<base href="${ctx}">
<meta name="decorator" content="default" />
<link rel="stylesheet" type="text/css"href="${ctxStatic}/bootstrap/2.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="${ctxCss}/welcome.css">


<script type="text/javascript"src="${ctxStatic}/jQuery/jquery-1.9.1.min.js"></script>
<script type="text/javascript"src="${ctxStatic}/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="bs-docs-example">
		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="${ctx}/images/backgroundImg1.jpg" alt="">
					<div class="carousel-caption slogan hide">
						<h3>First Thumbnail label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
					</div>
					<div class="clickIn">
						<a href="${ctx}/static/navigate"><img src="${ctx}/images/clickIn.png" /></a>
					</div>					
				</div>
				<div class="item">
					<img src="${ctx}/images/backgroundImg2.jpg" alt="">
					<div class="carousel-caption slogan">
						<h3>Second Thumbnail label</h3>
						<p>I get used to pouring away the water directly after I using it. SOneday, my mother asked me to help her wash the closthes,
						 as I was about to pour away the water, my mother stopped me and she told me that most water can be recycled.
						 It can be used to water the flower or to wash other things.</p>
					</div>
					<div class="clickIn">
						<a href="${ctx}/static/navigate"><img src="${ctx}/images/clickIn.png"/></a>
					</div>					
				</div>
				<div class="item">
					<img src="${ctx}/images/backgroundImg3.jpg" alt="">
					<div class="carousel-caption slogan">
						<h3>Third Thumbnail label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
					</div>
					
					<div class="clickIn">
						<a href="${ctx}/static/navigate"><img src="${ctx}/images/clickIn.png"/></a>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
	</div>
</body>
</html>
