 (function(){
    //初始化函数
    initPage(1,9);
        })();

var pageInfo = {
		"curPage":0,
		"totPage":0,
		"totNum":0	
};
 
 function initPage(currentPage,pageSize){
	 	$.ajax({
	 		url:"test/list",
	 		type:"POST",
	 		timeout:10000,
	 		cache:false,
	 		data:{
	 			"currentPage":currentPage,
				"pageSize":pageSize
			},
	 		success:function(result){
	 			console.log(result);
	 			pageInfo.curPage = result.currentPage;
	 			pageInfo.totPage = result.totalPage;
		 		var articleList = result.items;
		 		showArticlesByResult(articleList);
		 		$(".description").hide();
		 		descriptionEvent();
		 		delete result["items"];
		 		showPagerByResult(result);
		 		
	 		}
	 	});
	 	
}

 function descriptionEvent(){
 	var indexTemp = null;
 	var description = $(".description");
 	var _img = $(".thumbnail img");

 	$("#articles li").hover(function(){
 		var _index = 0;
 		_index = $(this).index();
 		indexTemp = _index;
 		description.eq(_index).toggle();
 	},function(){
 		description.eq(indexTemp).toggle();
 	});
 }
 
 function showArticlesByResult(articleList){
	 for(var i = 0; i<articleList.length ; i++){
		 $("#articles").append("<li class=\"col-lg-4 col-md-6 col-sm-12\">\<div class=\"thumbnail\"><a href=\"/myblog/article/detail/"+articleList[i].id+"/\"><img src=\"/myblog/static/image/3182852.jpg\"><div class=\"description\"><div class=\"content-background\"></div><p class=\"content-description\">"+articleList[i].content+"</p></div></a><br><br><div class=\"article-tittle\"><a href=\"myblog/detail/"+articleList[i].id+"\"><h4 class=\"tittle\">"+articleList[i].tittle+"</h4></a></div><div class=\"black-shadow\"></div><div class=\"items-cat\"><a href=\"#\">默认分类</a></div></div></li>");
	 	
 	}
}
 //前端分页效果
 function showPagerByResult(articlePager){
	 var pageFooterBody = $(".page-footer ul");
	 var items = $(".basePage-items");
	 var currentPage = articlePager.currentPage;
	 var totalPage = articlePager.totalPage;
	 var pagerNum = 5;
	 
	 
	 if(currentPage==1){
		 $("#lastPage-btn").hide();
	 }
	 
	 if(currentPage==totalPage){
		 $("#nextPage-btn").hide();
	 }
	 
	 if(currentPage<=pagerNum){
		 $("#lastMore-btn").hide();
	 }
	 
	 if(totalPage-currentPage<pagerNum){
		 $("#nextMore-btn").hide();
	 }
	 
	 if(totalPage<=5){
		 for(var i=0;i<pagerNum-totalPage;i++){
			 $(".basePage-items:last").remove();
		 }
		 items.eq(currentPage-1).addClass('active');
	 }else if(totalPage-currentPage>pagerNum&&currentPage>pagerNum){
		 $(".basePage-items a").eq(0).text(currentPage-2);
		 $(".basePage-items a").eq(1).text(currentPage-1);
		 $(".basePage-items a").eq(2).text(currentPage);
		 $(".basePage-items a").eq(3).text(currentPage+1);
		 $(".basePage-items a").eq(4).text(currentPage+2);
		 items.eq(2).addClass('active');
	 }else{
		 $(".basePage-items a").eq(0).text(totalPage-4);
		 $(".basePage-items a").eq(1).text(totalPage-3);
		 $(".basePage-items a").eq(2).text(totalPage-2);
		 $(".basePage-items a").eq(3).text(totalPage-1);
		 $(".basePage-items a").eq(4).text(totalPage);
		 items.eq(pagerNum-totalPage+currentPage-1).addClass('active');
	 }
	 turnToLastPage();

 }
 
function turnToLastPage(){
	console.log("currentPage:"+pageInfo.curPage);
}
