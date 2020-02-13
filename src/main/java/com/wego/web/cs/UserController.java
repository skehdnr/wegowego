package com.wego.web.cs;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wego.web.util.Printer;

@RestController
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired Map<String, Object>map;
	@Autowired User user;
	@Autowired Printer printer;
	@Autowired UserMapper userMapper;
	@Autowired UserServiceImpl userService;
	@Autowired DumProxy dumproxy;
	
	@GetMapping("/create/table")
    public Map<?,?> createUser(){
    	HashMap<String,String> paramMap = new HashMap<>();
    	paramMap.put("CREATE_USER", UserSQL.CREATE_USER.toString());
    	Consumer<HashMap<String,String>> c = t-> userMapper.createUser(paramMap);
    	c.accept(paramMap);
    	paramMap.clear();
    	paramMap.put("msg", "SUCCESS");
    	return paramMap;
    }
	
	@PostMapping("/")
	public Map<?, ?> join(@RequestBody User param){
		Consumer<User> c = t -> userMapper.insertUser(param);
		c.accept(param);
		map.clear();
		map.put("msg", "SUCCESS");
		return map;
	}
	
	@PostMapping("/{uid}")
	public Map<?,?> login (@PathVariable String uid, @RequestBody User param) {
		Function<User, User>f = t -> userMapper.selectByIdPw(param);
		map.clear();
		map.put("msg", "SUCCESS");
		map.put("user",f.apply(param));
		return map;
	}
	
	@GetMapping("/{uid}")
	public User selectByIdpwd(@PathVariable String uid, @RequestBody User param) {
		Function<User, User>f = t->userMapper.selectByIdPw(param);
		return f.apply(param);
	}
	
	@DeleteMapping("/{uid}/remove")
	   public Map<?,?> removeUser(@PathVariable String uid, @RequestBody User param) {
	      Consumer<User> c = o->userMapper.removeUser(param);
	      c.accept(param);
	      map.clear();
	      map.put("msg", "SUCCESS");
	      return map;
	   }
	@GetMapping("/{uid}/existId")
	public Map<?, ?> existId(@PathVariable String uid ){
		printer.accept("exist 들어옴"+uid);
		Function<String,Integer> p = o -> userMapper.existId(uid);
		map.clear();
		map.put("msg", (p.apply(uid)==0)? "SUCCESS":"FAIL");
		return map;
	}
	
   @GetMapping("/insert/dummy")
   public Map<?, ?> insertUser() {
      HashMap<String, String> paramMap = new HashMap<String, String>();
      dumproxy.insertUsers();
      return paramMap;
   }
   
//   	@PostMapping("/{uname}/findid") 
//	 public Map<?,?> findId(@PathVariable String uname , @RequestBody User param){ 
//		 printer.accept("아이디찾기이름 : "+uname);
//		 Function<User, User> f = t -> userMapper.findId(param); 
//		 map.clear(); 
//		 map.put("msg", "SUCCESS");
//		 map.put("user",f.apply(param));
//		 printer.accept("아이디찾기2");
//		 return map; 
//	}
	@GetMapping("/{uname}/findid/{tel}")
	public Map<String, Object> findId(@PathVariable String uname, @PathVariable String tel) {
		
		Map<String, Object> map = new HashMap<>();
		user.setUname(uname);
		user.setTel(tel);
		map.put("user", userService.findFindId(user));
		System.out.println("유저1" + map.get("user"));
		return map;
	}
	@PostMapping("/{uid}/findpwd/{tel}")
	public Map<String, Object> findPwd(@PathVariable String uid, @PathVariable String tel) {
		Map<String, Object> map = new HashMap<>();
		user.setUid(uid);
		user.setTel(tel);
		System.out.println("유저 리스트 컨트롤러111"+uid);
		System.out.println("유저 리스트 컨트롤러222"+tel);
		map.put("user", userService.findFindPwd(user));
		System.out.println("유저2" + map.get("user"));
		return map;
	}

}
