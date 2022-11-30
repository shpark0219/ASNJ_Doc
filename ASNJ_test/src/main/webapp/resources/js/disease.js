/**
 * 
 */

$(document).ready(function() {
		// alert("제이쿼리 시작!");
		diseaseList();
	}); // 제이쿼리 묶어주는 영역 끝!
		
		function diseaseList() {
		// ajax 기본 구조 만들기 : 페이지 요청을 다시 하는게 아니라
		// 서버와 통신을 해서 데이터를 가져오게 된다.
		// Rest Server
		// 데이터는 JSON 형식으로 주고 받게 된다.
		// JSON 형태 : [{key:value, key:value}, {}, {},...]
		/*var crops ="감";
		console.log(crops);*/
		$.ajax({
			url : "/disease",
			type : "get",
			data :  { disease_crops: "고추" }, // 리스트만 띄워줄거기 때문에 보내줄 데이터가 없음, 보내는 형식
			dataType : "json", // 서버가 클라이언트에게 돌려줄 데이터 형식을 적어줌, 받는 형식
			success : callBack, // 따로 함수를 만들어서 불러올 예정 (함수 이름만 기술)
			error : function() {
				alert("리스트 비동기방식 통신 실패!");
			}
		}); // ajax 끝!
		
	}
		// 리스트 불러오는 ajax가 성공하면 실행 될 함수
		function callBack(data){
			// alert(data);
			console.log(data);
			
			var dList = "<table class='table table-hover table-bordered'>";
			dList += "<tr class='active'>";
			dList += "<td colspan='5'><small>게시글은 총 "+Object.keys(data).length+"개입니다.</small></td>";
			dList += "</tr>";
			dList += "<div id='NM_THEME_CONTAINER' class='theme_cont' role='tabpanel' data-panel-code='FINANCE' data-parent-code=''>";
			dList += "<div class='group_theme' data-block-id='' data-block-code='PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-0' data-block-type='MATERIALS' data-template-code='MOBILE-RANKING-LIST' data-da='container' data-index='' data-page='1'>";
			dList += "<div class='list_theme_wrap'>";
			dList += "<ul class='list_theme' style='padding-right: 32px;'>";
			
			// 가져온 data에서 JSON 데이터를 반복문을 통해 만들기
			
			// 제이쿼리에서 반복하는 함수
			// $.each(데이터, 데이터를 처리할 함수)
			// function(매개변수){실행문장}을 (매개변수)=>{실행문장}으로 사용 가능
			$.each(data, (index, obj)=>{
				// console.log(index);
				dList += "<a href='#' class='theme_thumb'>";
				dList += "<li class='theme_item'>";
				// 제목을 누르면 글 내용이 보이게
				// a태그의 href가 요청이 아니라 자바스크립트 함수로 가게끔...
				// 함수 사용 법
				// javascript:함수이름(보내줄 값)
				dList += "<img src="+obj.disease_imgpath+" alt='' width='170' height='114'/>";
				dList += "<strong class='title elss'>"+obj.disease_name+"</strong>";
				dList += "<p class='desc'>"+obj.disease_symptom+"</p>";
				dList += "</li></a><hr>";
			});
			dList += "</ul></div></div>";

			$("#list").html(dList);
		} // callBack 함수 끝!
 
function typeFn() {

$("#resv_program").attr("disabled",true);
 
if($("select[name=resv_program_type] > option:selected").val() == "2"){
$("#programTr").show();
$("#resv_program > option").remove();
$("#resv_program").attr("disabled",true);
$("#resv_program").append("<option value=\"\">--선택--</option>");
 
var type = $("#resv_program_type").val();
 
var submitObj = new Object();
submitObj.prgm_type= type;
 
$.ajax({ 
      url: path+"/gnb03/lnb02/select_ajax.do", 
      type: "POST", 
      contentType: "application/json;charset=UTF-8",
      data:JSON.stringify(submitObj),
      dataType : "json",
      progress: true
     }) 
     .done(function(data) {

$('#resv_program').children('option:not(:first)').remove();
        
        var laborOption = "";
        for(var k in data.programList){
          var obj = data.programList[k];
          var prgm_name = obj.prgm_name;
          var prgm_idx = obj.prgm_idx;
          
          laborOption = "<option value='" + prgm_idx + "'>" + prgm_name + "</option>";
          $("#resv_program").append(laborOption);
      }

$("#resv_program").attr("disabled",false);

        
     }) 
     .fail(function(e) {  
         alert("FAIL - "+e);
     }) 
     .always(function() { 
      $("#resv_program").attr("disabled",false);
     }); 
}
}
