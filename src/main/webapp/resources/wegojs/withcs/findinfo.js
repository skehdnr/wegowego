"use strict"
var findinfo = findinfo||{}
findinfo=(()=>{
	const WHEN_ERR = '호출하는 findinfo 페이지가 없음'
	let context, js;
    let mainVuejs;
	let findinfovuejs;
	let loginjs
    let init = () => {
        context = $.ctx()
		js = $.js()
		findinfovuejs = js + '/withcsvue/findinfo_vue.js'
		mainVuejs = js +'/vue/mainVue.js'
		loginjs = js + '/withcs/login.js'
	}
	let onCreate=x=>{
		init()
		$.when(
			$.getScript(mainVuejs),
			$.getScript(findinfovuejs),
			$.getScript(loginjs)
		).done(()=>{
			setContentView()
			finduid()
			findupwd()
		}).fail(()=>{
			alert(WHEN_ERR)
		})
	}
	let setContentView=()=>{
		$('#mainbody').html(login_vue.login_body())
	}
	let finduid=()=>{
		alert("아이디찾기")
		$('#mainbody').html(findinfo_vue.findinfo_id())
		
		$('#findid2').click(()=>{
			alert("떠라떠라")
			 context = $.ctx()
			 $.getJSON(context+'/user/'+$('#uname').val()+'/findid/'+$('#tel').val(),d=>{
				 let s = d.user
      		   alert("찾으시는 아이디는  [ "+s.uid+ " ] 입니다.")
				 login.onCreate()
				
			 })
	              /* $.ajax({
	            	   url : context+'/user/'+$('#uname').val()+'/findid/'+$('#tel').val(),
	            	   type : 'GET',
	            	   data : JSON.stringify({
	            		   	  uname:$('#uname').val(),
	            		   	  tel: $('#tel').val()}),
	            	   dataType : 'json',
	            	   contentType : 'application/json',
	            	   success : d=>{
	            		   let s = d.user
	            		   alert("찾으시는 아이디는  [ "+s.uid+ " ] 입니다.")
	            		   login.onCreate()
	            	   },
	            	   error : e => {
	            		   alert('실패')
	            		   findinfo.finduid()
	       	    	}
	               })*/
		})
		}

	let findupwd=()=>{
		alert("비밀번호찾기")
		$('#mainbody').html(findinfo_vue.findinfo_pwd())
		
		$('#findpwd_btn2').click(()=>{
			alert("떠라떠라22")
			 context = $.ctx()
	               $.ajax({
	            	   url : context+'/user/'+$('#find_uid').val()+'/findpwd/'+$('#pwdtel').val(),
	            	   type : 'POST',
	            	   data : JSON.stringify({
	            		   	  uid:$('#find_uid').val(),
	            		   	  tel: $('#pwdtel').val()}),
	            	   dataType : 'json',
	            	   contentType : 'application/json',
	            	   success : d=>{
	            		   let s = d.user
	            		   alert("찾으시는 비밀번호는  [ "+s.pwd + " ]입니다.")
	            		   login.onCreate()
	            	   },
	            	   error : e => {
	            		   alert('실패')
	            		   findinfo.findupwd()
	       	    		
	       	    	}
	               })
		})
		}

	return{onCreate,finduid ,findupwd}
})()