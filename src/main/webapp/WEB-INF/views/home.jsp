<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>WeGo</title>

    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/animate.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/themify-icons.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/flaticon.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/gijgo.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/nice-select.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/slick.css">
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
    
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/crewcss/crew.css"> 
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/login.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/changadmin.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/createadmin.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/tourismstyle/star.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/wegocss/tourismstyle/tourismimg.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link href="<%=application.getContextPath()%>/resources/wegojs/community/css/agency.min.css" rel="stylesheet">
 <link href="<%=application.getContextPath()%>/resources/wegojs/community/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="<%=application.getContextPath()%>/resources/wegojs/app.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/cmm/router.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/cmm/mainHome.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/vue/mainVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/crew/vue/crewVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/crew/vue/introVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/crew/js/intro.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/crew/js/map.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/crew/js/crew.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery-1.12.1.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/popper.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.magnific-popup.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/masonry.pkgd.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.nice-select.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/gijgo.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.form.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/mail-script.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/contact.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/custom.js"></script>
<!-- 관광 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/tourism/tourism.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/tourism/tourismVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/tourism/mappage.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/tourism/mappageVue.js"></script>
<!-- 커뮤니티 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/community/communityjs/community.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/community/communityjs/write.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/community/vue/main_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/community/vue/detail_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/community/vue/write_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/community/vue/search_vue.js"></script>
<!-- 행사 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festival.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festival_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festivalRv_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festivalDetail.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festivalDetail_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/festival/festivalEnd_vue.js"></script>
<!-- CS -->
<script src="<%=application.getContextPath()%>/resources/wegojs/withcs/login.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcsvue/login_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcs/mypage.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcsvue/mypage_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcs/joinchoice.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcsvue/joinchoice_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcs/findinfo.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcsvue/findinfo_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcs/deleteinfo.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/withcsvue/deleteinfo_vue.js"></script>
<!-- 어드민 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/admin/adminjoin.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/adminvue/adminjoin_vue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/admin/adminmain.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/adminvue/adminmain_Vue.js"></script>
<!-- 유저 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/user/userjoin.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/user/userjoin_vue.js"></script>
<!-- 호텔 -->
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelHome.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelMainVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelPay.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelPayVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelDetailVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelDetail.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelCompare.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelComVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelPay.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelPayVue.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hotelEnd.js"></script>
<script src="<%=application.getContextPath()%>/resources/wegojs/hotel/hVue/hotelEndVue.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- icon 에러 무시 -->
<link rel="shortcut icon" href="#">

<!-- 아임포트api -->
<!-- <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script> -->

<!-- 카카오맵api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3347eee3fc895cf9f2776035319abaa6"></script>

<!-- 주소api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<!-- 메인테마 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 차트api 테스트중-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<!-- 모달창 -->

<link rel= "stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css" />
<link rel= "stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css" />
<style>
body {font-family: Arial, Helvetica, sans-serif;}
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content */
.modal-content {
  background-color: #FEFEFE;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  height: 80%;
}
/* The Close Button */
.close {
  color: #AAAAAA;
  float: right;
  font-size: 28px;
  font-weight: bold;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

</head>
<body>
<script>
app.run('<%=application.getContextPath()%>')
</script>
</body>
</html>