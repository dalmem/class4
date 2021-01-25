<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<style>
	<link rel ="stylesheet " href ="../resource /css /bootstrap.min.css ">
	
	<!--jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src ="https: //ajax.googleapis.com /ajax /libs /jquery /1.11.2/jquery.min.js "></script>
	
	<!--합쳐지고 최소화된 최신 자바스크립트 --> 
	<script src="../resource /js /bootstrap.min.js "> </script>
	
	* {
	box-sizing: border-box;
}

ul,ol{
    list-style: none;
}

section {

    padding: 20px 60px;
    width: 996px;
    height: 700px;
    margin: 0 auto;
}
/* 리뷰 상세 */

.movie-img{
    width: 19%;
    height: 90%;
    position: absolute;
    float: left;
    
}


.movie-img img{
    width: 100%;
    height: 100%;
}

.review-content {
    display: inline-block;
    position: relative;
    padding:10px;
    left: 120px;
    width: 80%;
    height: 150px;
    /* border: 1px solid rgb(214, 213, 213); */
    border-radius: 5px;

}

.wrap{
    background-color: whitesmoke;
    overflow: hidden;
    margin: 10px;
    padding: 10px;
    border: 1px;
    position: relative;
    width: 600px;
    /* flex-basis: 1000px; */
    flex-shrink: 0;
    margin: 0 auto;

}



/* 리뷰 내용 작성 */
.content{
    width: 600px;
    margin: 5px auto;
}

.review_bno{
    position: absolute;
    top: 0;
    left: 0;
    color:white;
}

.day{
	position: absolute;
	top : 130px;
}


</style>



<section>
    <label style="font-size: 40px; font-weight: bold;">영화 리뷰 수정 페이지</label>
    <hr style="border-bottom: 3px solid black; margin: 10px 0;">
    <form action="update" method = "post" name = "update">
	    <div class = wrap>
	    	<span class="review_bno">${vo.bno }</span>
	        <div class = "movie-img">
	            <img src="${pageContext.request.contextPath }/resources/img/movie_image.jpg" alt="영화포스터">
	            
	        </div>    
	        <div class = "review-content">
	          <label>${vo.movieTitle }</label>
	          <p class = "point glyphicon glyphicon glyphicon-star" aria-hidden="true" style="color: rgb(233, 49, 49);"></p>
	          <p class = "score" style="display: inline-block;">5</p>
	          <p>${vo.writer}</p>
	          <div class = "day">	        		 
	           		<fmt:formatDate value="${vo.regDate }" pattern="yyyy-MM-dd HH:ss"/>
	        	</div>
	        </div>
	    </div>
	    
	    <div class="content form-group">
	        <label>내용</label>
	        <textarea class="content form-control" rows="10" name='content' >${vo.content }</textarea>
	        <div class="btns" style="text-align: right;">
	            <button type = "submit" class = "list-modify">수정</button>
	            <button class = "list-delete" onclick="location.href = 'reviewLisst'">취소</button>
	        </div>    
	    </div>
    </form>
</section>


<script type="text/javascript">

</script>


