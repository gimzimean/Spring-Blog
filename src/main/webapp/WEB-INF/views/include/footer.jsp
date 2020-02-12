<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<br />
<br />

<section class="jumbotron py-5 aliegn text-center"
	style="margin-bottom: 0">
	<div class="container">
		<div class="row">
			<div class="col-md-6 my-3 " style="padding: 100px 50px;">
				<b>Customer Service</b>
				<br/>
				<br>
				<h2>1588-7979</h2>
				<br/>
				<h6>평일 10:00~17:00</h6>
				<h6>점심 13:00~14:00</h6>
				<h6 style="color: #A0522D">주말/공휴일 휴무</h6>
				<br/>
				<p>@Copyright 2020 GIMZIMEAN. All rights reserved.</p>
				
			</div>
			<div class="col-md-6 my-3" style="padding: 50px;">
				<!-- <div id="map" style="width: 500px; height: 400px;"></div> -->
				<div id="daumRoughmapContainer1581524796903"
					class="root_daum_roughmap root_daum_roughmap_landing"></div>


			</div>
		</div>
	</div>
</section>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1581524796903",
		"key" : "xzqo",
	}).render();
</script>

<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(33.450701, 126.570667),
		level : 3
	};

	var map = new kakao.maps.Map(container, options); // 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	var myAddress = [ "상당구 원봉로 68-1" ];

	function myMarker(number, address) {
		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						//'충북 청주시 흥덕구 진재로 30 연정빌딩',
						address,
						function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === daum.maps.services.Status.OK) {

								var coords = new daum.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								/*
								var marker = new daum.maps.Marker({
								    map : map,
								    position : coords
								});
								 */

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								/*
								var infowindow = new daum.maps.InfoWindow(
								        {
								            // content : '<div style="width:50px;text-align:center;padding:3px 0;">I</div>'
								            content : '<div style="color:red;">' +  number + '</div>'
								        });
								infowindow.open(map, marker);
								 */

								// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
								var content = '<div class="customoverlay">'
										+ '    <span class="title">'
										+ '<div style="font-style:normal; color:red; font-weight:bold; font-size:1.0em">'
										+ number + '</div>' + '</span>'
										+ '</div>';

								// 커스텀 오버레이가 표시될 위치입니다 
								var position = new daum.maps.LatLng(
										result[0].y, result[0].x);

								// 커스텀 오버레이를 생성합니다
								var customOverlay = new daum.maps.CustomOverlay(
										{
											map : map,
											position : position,
											content : content,
											yAnchor : 1
										});

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	}

	for (i = 0; i < myAddress.length; i++) {
		myMarker(i + 1, myAddress[i]);
	}
</script>
</body>
</html>